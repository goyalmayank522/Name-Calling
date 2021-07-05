# -*- coding: utf-8 -*-
"""Test_golden_dataset.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/15Odd45ZWM39vDBylrj6aIre32ScgsfO1

##**A python program for testing the golden dataset**

1. It accepts a input.txt file and updates the output.txt file with the prediction values for the same.
2. The input.txt file should have three column values i.e serial_no, reference_wav_path and query_wav_path but it doesn't expects these column headers.
3. Also, the output.txt file contains two column values i.e serial_no and predicted_value.
4. In the test file, update the following variables -
      1. path_to_model -> model location
      2. path_to_input_txt -> input.txt location
      3. path_to_output_txt -> output.txt location

5. Finally, run the python script to see the output results.

###**Importing required libraries/dependencies**
"""

import os
import librosa
import skimage.io
import cv2
import pandas as pd
import numpy as np
import tensorflow as tf
from tensorflow import keras

"""**Mounting drive at '/content/drive'.**"""

from google.colab import drive
drive.mount('/content/drive')

"""##**Path to the trained model**

* Update the path_to_model variable with the trained model location
"""

Path_to_model = '/content/drive/MyDrive/prism_model/model_congruent'

"""##**Loading the model from the above given path**"""

model = keras.models.load_model(Path_to_model, compile=False)
model.summary()

"""###**Path to the Input.txt file and Output.txt file**"""

Path_to_input_txt ="/content/textinput.txt" 
Path_to_output_txt ="/content/txtoutput.txt"

def scale_minmax(X, min=0.0, max=1.0):
    X_std = (X - X.min()) / (X.max() - X.min())
    X_scaled = X_std * (max - min) + min
    return X_scaled

"""##**Prediction**

* Reading serial_no, reference_wav_path and query_wav_path of each row of the input.txt file.
* Computing the melspectogram of reference and query wav file.
* Preprocessing of the above obtained mel-spectrogram.
* Passed them to the model.predict function to get the output.
* Stored the serial_no followed by the output value in the output.txt file.
"""

f=open(Path_to_input_txt,"r")
for line in f:
    words=line.split()
    if words:
        serial_no = words[0]
        reference_path = words[1]
        query_path = words[2]


        # take reference wav as input and found its mel-spectogram
        y1,sr1 = librosa.load(reference_path, duration=1,sr=16000)
        N = 16000-len(y1)
        y1=np.pad(y1, (0, N), 'constant')
        mel1 = librosa.feature.melspectrogram(y=y1,sr=sr1)
        ref_img = scale_minmax(mel1, 0, 255).astype(np.uint8)
        ref_img_array = np.expand_dims(ref_img, axis=-1)
        ref_img_array = np.expand_dims(ref_img_array, axis=0)
        ref_img_array = ref_img_array.astype('float32')
        ref_img_array /= 255

        # take query wav as input and found its mel-spectogram
        y2,sr2 = librosa.load(query_path, duration=1,sr=16000)
        N = 16000-len(y2)
        y2=np.pad(y2, (0, N), 'constant')
        mel2 = librosa.feature.melspectrogram(y=y2,sr=sr2)
        que_img = scale_minmax(mel2, 0, 255).astype(np.uint8)
        que_img_array = np.expand_dims(que_img, axis=-1)
        que_img_array = np.expand_dims(que_img_array, axis=0)
        que_img_array = que_img_array.astype('float32')
        que_img_array /= 255

        #predicting the distance between reference wav file and query wav file
        temp = model.predict([ref_img_array, que_img_array])
        print(temp)
        temp=(int)(temp.ravel() < 0.5)


        f2 = open(Path_to_output_txt,"a")
        L = str(serial_no)+ "\t"  + str(temp) + "\n"
        f2.write(L)
        f2.close()
        
f.close()
