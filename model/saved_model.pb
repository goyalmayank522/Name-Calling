??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718ٮ
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:*
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:*
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
:*
dtype0
{
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	* 
shared_namedense_60/kernel
t
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes
:	?	*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes
:*
dtype0
z
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_61/kernel
s
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes

:*
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_63/kernel/m
?
+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	*'
shared_nameAdam/dense_60/kernel/m
?
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes
:	?	*
dtype0
?
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_61/kernel/m
?
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_63/kernel/v
?
+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	*'
shared_nameAdam/dense_60/kernel/v
?
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes
:	?	*
dtype0
?
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_61/kernel/v
?
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?>
value?>B?> B?>
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
 
 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
layer_with_weights-2
layer-8
layer_with_weights-3
layer-9
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	 decay
!learning_rate"m?#m?$m?%m?&m?'m?(m?)m?"v?#v?$v?%v?&v?'v?(v?)v?
8
"0
#1
$2
%3
&4
'5
(6
)7
8
"0
#1
$2
%3
&4
'5
(6
)7
 
?
*layer_metrics

+layers
,metrics
-non_trainable_variables
.layer_regularization_losses
trainable_variables
	variables
regularization_losses
 
 
h

"kernel
#bias
/trainable_variables
0	variables
1regularization_losses
2	keras_api
R
3trainable_variables
4	variables
5regularization_losses
6	keras_api
R
7trainable_variables
8	variables
9regularization_losses
:	keras_api
h

$kernel
%bias
;trainable_variables
<	variables
=regularization_losses
>	keras_api
R
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
R
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
R
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
h

&kernel
'bias
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
h

(kernel
)bias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
8
"0
#1
$2
%3
&4
'5
(6
)7
8
"0
#1
$2
%3
&4
'5
(6
)7
 
?
Slayer_metrics

Tlayers
Umetrics
Vnon_trainable_variables
Wlayer_regularization_losses
trainable_variables
	variables
regularization_losses
 
 
 
?
Xlayer_metrics
Ymetrics

Zlayers
[non_trainable_variables
\layer_regularization_losses
trainable_variables
	variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_62/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_62/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_63/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_63/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_60/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_60/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_61/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_61/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

]0
^1
 
 

"0
#1

"0
#1
 
?
_layer_metrics
`metrics

alayers
bnon_trainable_variables
clayer_regularization_losses
/trainable_variables
0	variables
1regularization_losses
 
 
 
?
dlayer_metrics
emetrics

flayers
gnon_trainable_variables
hlayer_regularization_losses
3trainable_variables
4	variables
5regularization_losses
 
 
 
?
ilayer_metrics
jmetrics

klayers
lnon_trainable_variables
mlayer_regularization_losses
7trainable_variables
8	variables
9regularization_losses

$0
%1

$0
%1
 
?
nlayer_metrics
ometrics

players
qnon_trainable_variables
rlayer_regularization_losses
;trainable_variables
<	variables
=regularization_losses
 
 
 
?
slayer_metrics
tmetrics

ulayers
vnon_trainable_variables
wlayer_regularization_losses
?trainable_variables
@	variables
Aregularization_losses
 
 
 
?
xlayer_metrics
ymetrics

zlayers
{non_trainable_variables
|layer_regularization_losses
Ctrainable_variables
D	variables
Eregularization_losses
 
 
 
?
}layer_metrics
~metrics

layers
?non_trainable_variables
 ?layer_regularization_losses
Gtrainable_variables
H	variables
Iregularization_losses

&0
'1

&0
'1
 
?
?layer_metrics
?metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Ktrainable_variables
L	variables
Mregularization_losses

(0
)1

(0
)1
 
?
?layer_metrics
?metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Otrainable_variables
P	variables
Qregularization_losses
 
F
0
1
2
3
4
5
6
7
8
9
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
yw
VARIABLE_VALUEAdam/conv2d_62/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_62/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_63/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_63/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_60/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_60/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_61/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_61/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_62/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_62/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_63/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_63/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_60/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_60/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_61/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_61/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_93Placeholder*0
_output_shapes
:?????????? *
dtype0*%
shape:?????????? 
?
serving_default_input_94Placeholder*0
_output_shapes
:?????????? *
dtype0*%
shape:?????????? 
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_93serving_default_input_94conv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_60/kerneldense_60/biasdense_61/kerneldense_61/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1029950
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1030663
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_60/kerneldense_60/biasdense_61/kerneldense_61/biastotalcounttotal_1count_1Adam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/mAdam/dense_60/kernel/mAdam/dense_60/bias/mAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/vAdam/dense_60/kernel/vAdam/dense_60/bias/vAdam/dense_61/kernel/vAdam/dense_61/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1030772??
?
p
F__inference_lambda_30_layer_call_and_return_conditional_losses_1029679

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_model_61_layer_call_and_return_conditional_losses_1029688

inputs
inputs_1*
model_60_1029639:
model_60_1029641:*
model_60_1029643:
model_60_1029645:#
model_60_1029647:	?	
model_60_1029649:"
model_60_1029651:
model_60_1029653:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp? model_60/StatefulPartitionedCall?"model_60/StatefulPartitionedCall_1?
 model_60/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_60_1029639model_60_1029641model_60_1029643model_60_1029645model_60_1029647model_60_1029649model_60_1029651model_60_1029653*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512"
 model_60/StatefulPartitionedCall?
"model_60/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_60_1029639model_60_1029641model_60_1029643model_60_1029645model_60_1029647model_60_1029649model_60_1029651model_60_1029653*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512$
"model_60/StatefulPartitionedCall_1?
lambda_30/PartitionedCallPartitionedCall)model_60/StatefulPartitionedCall:output:0+model_60/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10296792
lambda_30/PartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmodel_60_1029647*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity"lambda_30/PartitionedCall:output:02^dense_60/kernel/Regularizer/Square/ReadVariableOp!^model_60/StatefulPartitionedCall#^model_60/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 model_60/StatefulPartitionedCall model_60/StatefulPartitionedCall2H
"model_60/StatefulPartitionedCall_1"model_60/StatefulPartitionedCall_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
E__inference_model_61_layer_call_and_return_conditional_losses_1029914
input_93
input_94*
model_60_1029880:
model_60_1029882:*
model_60_1029884:
model_60_1029886:#
model_60_1029888:	?	
model_60_1029890:"
model_60_1029892:
model_60_1029894:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp? model_60/StatefulPartitionedCall?"model_60/StatefulPartitionedCall_1?
 model_60/StatefulPartitionedCallStatefulPartitionedCallinput_93model_60_1029880model_60_1029882model_60_1029884model_60_1029886model_60_1029888model_60_1029890model_60_1029892model_60_1029894*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202"
 model_60/StatefulPartitionedCall?
"model_60/StatefulPartitionedCall_1StatefulPartitionedCallinput_94model_60_1029880model_60_1029882model_60_1029884model_60_1029886model_60_1029888model_60_1029890model_60_1029892model_60_1029894*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202$
"model_60/StatefulPartitionedCall_1?
lambda_30/PartitionedCallPartitionedCall)model_60/StatefulPartitionedCall:output:0+model_60/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10297312
lambda_30/PartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmodel_60_1029888*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity"lambda_30/PartitionedCall:output:02^dense_60/kernel/Regularizer/Square/ReadVariableOp!^model_60/StatefulPartitionedCall#^model_60/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 model_60/StatefulPartitionedCall model_60/StatefulPartitionedCall2H
"model_60/StatefulPartitionedCall_1"model_60/StatefulPartitionedCall_1:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?
e
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030397

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????>2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????>2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
+__inference_conv2d_63_layer_call_fn_1030439

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_63_layer_call_and_return_conditional_losses_10292822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????:
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
F__inference_conv2d_63_layer_call_and_return_conditional_losses_1030430

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????:
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
+__inference_conv2d_62_layer_call_fn_1030392

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_62_layer_call_and_return_conditional_losses_10292572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????|2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
e
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030444

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1029215
input_93
input_94T
:model_61_model_60_conv2d_62_conv2d_readvariableop_resource:I
;model_61_model_60_conv2d_62_biasadd_readvariableop_resource:T
:model_61_model_60_conv2d_63_conv2d_readvariableop_resource:I
;model_61_model_60_conv2d_63_biasadd_readvariableop_resource:L
9model_61_model_60_dense_60_matmul_readvariableop_resource:	?	H
:model_61_model_60_dense_60_biasadd_readvariableop_resource:K
9model_61_model_60_dense_61_matmul_readvariableop_resource:H
:model_61_model_60_dense_61_biasadd_readvariableop_resource:
identity??2model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp?4model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp?1model_61/model_60/conv2d_62/Conv2D/ReadVariableOp?3model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp?2model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp?4model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp?1model_61/model_60/conv2d_63/Conv2D/ReadVariableOp?3model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp?1model_61/model_60/dense_60/BiasAdd/ReadVariableOp?3model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp?0model_61/model_60/dense_60/MatMul/ReadVariableOp?2model_61/model_60/dense_60/MatMul_1/ReadVariableOp?1model_61/model_60/dense_61/BiasAdd/ReadVariableOp?3model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp?0model_61/model_60/dense_61/MatMul/ReadVariableOp?2model_61/model_60/dense_61/MatMul_1/ReadVariableOp?
1model_61/model_60/conv2d_62/Conv2D/ReadVariableOpReadVariableOp:model_61_model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1model_61/model_60/conv2d_62/Conv2D/ReadVariableOp?
"model_61/model_60/conv2d_62/Conv2DConv2Dinput_939model_61/model_60/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2$
"model_61/model_60/conv2d_62/Conv2D?
2model_61/model_60/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp;model_61_model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp?
#model_61/model_60/conv2d_62/BiasAddBiasAdd+model_61/model_60/conv2d_62/Conv2D:output:0:model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2%
#model_61/model_60/conv2d_62/BiasAdd?
 model_61/model_60/conv2d_62/TanhTanh,model_61/model_60/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????|2"
 model_61/model_60/conv2d_62/Tanh?
.model_61/model_60/average_pooling2d_62/AvgPoolAvgPool$model_61/model_60/conv2d_62/Tanh:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
20
.model_61/model_60/average_pooling2d_62/AvgPool?
%model_61/model_60/dropout_58/IdentityIdentity7model_61/model_60/average_pooling2d_62/AvgPool:output:0*
T0*/
_output_shapes
:?????????>2'
%model_61/model_60/dropout_58/Identity?
1model_61/model_60/conv2d_63/Conv2D/ReadVariableOpReadVariableOp:model_61_model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1model_61/model_60/conv2d_63/Conv2D/ReadVariableOp?
"model_61/model_60/conv2d_63/Conv2DConv2D.model_61/model_60/dropout_58/Identity:output:09model_61/model_60/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2$
"model_61/model_60/conv2d_63/Conv2D?
2model_61/model_60/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp;model_61_model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp?
#model_61/model_60/conv2d_63/BiasAddBiasAdd+model_61/model_60/conv2d_63/Conv2D:output:0:model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2%
#model_61/model_60/conv2d_63/BiasAdd?
 model_61/model_60/conv2d_63/TanhTanh,model_61/model_60/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2"
 model_61/model_60/conv2d_63/Tanh?
.model_61/model_60/average_pooling2d_63/AvgPoolAvgPool$model_61/model_60/conv2d_63/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
20
.model_61/model_60/average_pooling2d_63/AvgPool?
%model_61/model_60/dropout_59/IdentityIdentity7model_61/model_60/average_pooling2d_63/AvgPool:output:0*
T0*/
_output_shapes
:?????????2'
%model_61/model_60/dropout_59/Identity?
"model_61/model_60/flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"model_61/model_60/flatten_31/Const?
$model_61/model_60/flatten_31/ReshapeReshape.model_61/model_60/dropout_59/Identity:output:0+model_61/model_60/flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????	2&
$model_61/model_60/flatten_31/Reshape?
0model_61/model_60/dense_60/MatMul/ReadVariableOpReadVariableOp9model_61_model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype022
0model_61/model_60/dense_60/MatMul/ReadVariableOp?
!model_61/model_60/dense_60/MatMulMatMul-model_61/model_60/flatten_31/Reshape:output:08model_61/model_60/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!model_61/model_60/dense_60/MatMul?
1model_61/model_60/dense_60/BiasAdd/ReadVariableOpReadVariableOp:model_61_model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1model_61/model_60/dense_60/BiasAdd/ReadVariableOp?
"model_61/model_60/dense_60/BiasAddBiasAdd+model_61/model_60/dense_60/MatMul:product:09model_61/model_60/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"model_61/model_60/dense_60/BiasAdd?
model_61/model_60/dense_60/TanhTanh+model_61/model_60/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
model_61/model_60/dense_60/Tanh?
0model_61/model_60/dense_61/MatMul/ReadVariableOpReadVariableOp9model_61_model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype022
0model_61/model_60/dense_61/MatMul/ReadVariableOp?
!model_61/model_60/dense_61/MatMulMatMul#model_61/model_60/dense_60/Tanh:y:08model_61/model_60/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!model_61/model_60/dense_61/MatMul?
1model_61/model_60/dense_61/BiasAdd/ReadVariableOpReadVariableOp:model_61_model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1model_61/model_60/dense_61/BiasAdd/ReadVariableOp?
"model_61/model_60/dense_61/BiasAddBiasAdd+model_61/model_60/dense_61/MatMul:product:09model_61/model_60/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"model_61/model_60/dense_61/BiasAdd?
"model_61/model_60/dense_61/SigmoidSigmoid+model_61/model_60/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2$
"model_61/model_60/dense_61/Sigmoid?
3model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp:model_61_model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp?
$model_61/model_60/conv2d_62/Conv2D_1Conv2Dinput_94;model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2&
$model_61/model_60/conv2d_62/Conv2D_1?
4model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp;model_61_model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp?
%model_61/model_60/conv2d_62/BiasAdd_1BiasAdd-model_61/model_60/conv2d_62/Conv2D_1:output:0<model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2'
%model_61/model_60/conv2d_62/BiasAdd_1?
"model_61/model_60/conv2d_62/Tanh_1Tanh.model_61/model_60/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????|2$
"model_61/model_60/conv2d_62/Tanh_1?
0model_61/model_60/average_pooling2d_62/AvgPool_1AvgPool&model_61/model_60/conv2d_62/Tanh_1:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
22
0model_61/model_60/average_pooling2d_62/AvgPool_1?
'model_61/model_60/dropout_58/Identity_1Identity9model_61/model_60/average_pooling2d_62/AvgPool_1:output:0*
T0*/
_output_shapes
:?????????>2)
'model_61/model_60/dropout_58/Identity_1?
3model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOpReadVariableOp:model_61_model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp?
$model_61/model_60/conv2d_63/Conv2D_1Conv2D0model_61/model_60/dropout_58/Identity_1:output:0;model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2&
$model_61/model_60/conv2d_63/Conv2D_1?
4model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOpReadVariableOp;model_61_model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp?
%model_61/model_60/conv2d_63/BiasAdd_1BiasAdd-model_61/model_60/conv2d_63/Conv2D_1:output:0<model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2'
%model_61/model_60/conv2d_63/BiasAdd_1?
"model_61/model_60/conv2d_63/Tanh_1Tanh.model_61/model_60/conv2d_63/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????:
2$
"model_61/model_60/conv2d_63/Tanh_1?
0model_61/model_60/average_pooling2d_63/AvgPool_1AvgPool&model_61/model_60/conv2d_63/Tanh_1:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
22
0model_61/model_60/average_pooling2d_63/AvgPool_1?
'model_61/model_60/dropout_59/Identity_1Identity9model_61/model_60/average_pooling2d_63/AvgPool_1:output:0*
T0*/
_output_shapes
:?????????2)
'model_61/model_60/dropout_59/Identity_1?
$model_61/model_60/flatten_31/Const_1Const*
_output_shapes
:*
dtype0*
valueB"?????  2&
$model_61/model_60/flatten_31/Const_1?
&model_61/model_60/flatten_31/Reshape_1Reshape0model_61/model_60/dropout_59/Identity_1:output:0-model_61/model_60/flatten_31/Const_1:output:0*
T0*(
_output_shapes
:??????????	2(
&model_61/model_60/flatten_31/Reshape_1?
2model_61/model_60/dense_60/MatMul_1/ReadVariableOpReadVariableOp9model_61_model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype024
2model_61/model_60/dense_60/MatMul_1/ReadVariableOp?
#model_61/model_60/dense_60/MatMul_1MatMul/model_61/model_60/flatten_31/Reshape_1:output:0:model_61/model_60/dense_60/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#model_61/model_60/dense_60/MatMul_1?
3model_61/model_60/dense_60/BiasAdd_1/ReadVariableOpReadVariableOp:model_61_model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp?
$model_61/model_60/dense_60/BiasAdd_1BiasAdd-model_61/model_60/dense_60/MatMul_1:product:0;model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2&
$model_61/model_60/dense_60/BiasAdd_1?
!model_61/model_60/dense_60/Tanh_1Tanh-model_61/model_60/dense_60/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2#
!model_61/model_60/dense_60/Tanh_1?
2model_61/model_60/dense_61/MatMul_1/ReadVariableOpReadVariableOp9model_61_model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype024
2model_61/model_60/dense_61/MatMul_1/ReadVariableOp?
#model_61/model_60/dense_61/MatMul_1MatMul%model_61/model_60/dense_60/Tanh_1:y:0:model_61/model_60/dense_61/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#model_61/model_60/dense_61/MatMul_1?
3model_61/model_60/dense_61/BiasAdd_1/ReadVariableOpReadVariableOp:model_61_model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp?
$model_61/model_60/dense_61/BiasAdd_1BiasAdd-model_61/model_60/dense_61/MatMul_1:product:0;model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2&
$model_61/model_60/dense_61/BiasAdd_1?
$model_61/model_60/dense_61/Sigmoid_1Sigmoid-model_61/model_60/dense_61/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2&
$model_61/model_60/dense_61/Sigmoid_1?
model_61/lambda_30/subSub&model_61/model_60/dense_61/Sigmoid:y:0(model_61/model_60/dense_61/Sigmoid_1:y:0*
T0*'
_output_shapes
:?????????2
model_61/lambda_30/sub?
model_61/lambda_30/SquareSquaremodel_61/lambda_30/sub:z:0*
T0*'
_output_shapes
:?????????2
model_61/lambda_30/Square?
(model_61/lambda_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_61/lambda_30/Sum/reduction_indices?
model_61/lambda_30/SumSummodel_61/lambda_30/Square:y:01model_61/lambda_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
model_61/lambda_30/Sum?
model_61/lambda_30/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
model_61/lambda_30/Maximum/y?
model_61/lambda_30/MaximumMaximummodel_61/lambda_30/Sum:output:0%model_61/lambda_30/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
model_61/lambda_30/Maximumy
model_61/lambda_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_61/lambda_30/Const?
model_61/lambda_30/Maximum_1Maximummodel_61/lambda_30/Maximum:z:0!model_61/lambda_30/Const:output:0*
T0*'
_output_shapes
:?????????2
model_61/lambda_30/Maximum_1?
model_61/lambda_30/SqrtSqrt model_61/lambda_30/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
model_61/lambda_30/Sqrt?
IdentityIdentitymodel_61/lambda_30/Sqrt:y:03^model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp5^model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp2^model_61/model_60/conv2d_62/Conv2D/ReadVariableOp4^model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp3^model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp5^model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp2^model_61/model_60/conv2d_63/Conv2D/ReadVariableOp4^model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp2^model_61/model_60/dense_60/BiasAdd/ReadVariableOp4^model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp1^model_61/model_60/dense_60/MatMul/ReadVariableOp3^model_61/model_60/dense_60/MatMul_1/ReadVariableOp2^model_61/model_60/dense_61/BiasAdd/ReadVariableOp4^model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp1^model_61/model_60/dense_61/MatMul/ReadVariableOp3^model_61/model_60/dense_61/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2h
2model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp2model_61/model_60/conv2d_62/BiasAdd/ReadVariableOp2l
4model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp4model_61/model_60/conv2d_62/BiasAdd_1/ReadVariableOp2f
1model_61/model_60/conv2d_62/Conv2D/ReadVariableOp1model_61/model_60/conv2d_62/Conv2D/ReadVariableOp2j
3model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp3model_61/model_60/conv2d_62/Conv2D_1/ReadVariableOp2h
2model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp2model_61/model_60/conv2d_63/BiasAdd/ReadVariableOp2l
4model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp4model_61/model_60/conv2d_63/BiasAdd_1/ReadVariableOp2f
1model_61/model_60/conv2d_63/Conv2D/ReadVariableOp1model_61/model_60/conv2d_63/Conv2D/ReadVariableOp2j
3model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp3model_61/model_60/conv2d_63/Conv2D_1/ReadVariableOp2f
1model_61/model_60/dense_60/BiasAdd/ReadVariableOp1model_61/model_60/dense_60/BiasAdd/ReadVariableOp2j
3model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp3model_61/model_60/dense_60/BiasAdd_1/ReadVariableOp2d
0model_61/model_60/dense_60/MatMul/ReadVariableOp0model_61/model_60/dense_60/MatMul/ReadVariableOp2h
2model_61/model_60/dense_60/MatMul_1/ReadVariableOp2model_61/model_60/dense_60/MatMul_1/ReadVariableOp2f
1model_61/model_60/dense_61/BiasAdd/ReadVariableOp1model_61/model_60/dense_61/BiasAdd/ReadVariableOp2j
3model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp3model_61/model_60/dense_61/BiasAdd_1/ReadVariableOp2d
0model_61/model_60/dense_61/MatMul/ReadVariableOp0model_61/model_60/dense_61/MatMul/ReadVariableOp2h
2model_61/model_60/dense_61/MatMul_1/ReadVariableOp2model_61/model_60/dense_61/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?

?
*__inference_model_61_layer_call_fn_1029838
input_93
input_94!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_93input_94unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_61_layer_call_and_return_conditional_losses_10297972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?	
?
*__inference_model_60_layer_call_fn_1029560
input_92!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_92unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_92
?5
?
E__inference_model_60_layer_call_and_return_conditional_losses_1029630
input_92+
conv2d_62_1029598:
conv2d_62_1029600:+
conv2d_63_1029605:
conv2d_63_1029607:#
dense_60_1029613:	?	
dense_60_1029615:"
dense_61_1029618:
dense_61_1029620:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?1dense_60/kernel/Regularizer/Square/ReadVariableOp? dense_61/StatefulPartitionedCall?"dropout_58/StatefulPartitionedCall?"dropout_59/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinput_92conv2d_62_1029598conv2d_62_1029600*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_62_layer_call_and_return_conditional_losses_10292572#
!conv2d_62/StatefulPartitionedCall?
$average_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_10292212&
$average_pooling2d_62/PartitionedCall?
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10294492$
"dropout_58/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0conv2d_63_1029605conv2d_63_1029607*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_63_layer_call_and_return_conditional_losses_10292822#
!conv2d_63/StatefulPartitionedCall?
$average_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_10292332&
$average_pooling2d_63/PartitionedCall?
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_63/PartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10294162$
"dropout_59/StatefulPartitionedCall?
flatten_31/PartitionedCallPartitionedCall+dropout_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_10293022
flatten_31/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_60_1029613dense_60_1029615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_10293212"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_1029618dense_61_1029620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_10293382"
 dense_61/StatefulPartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_1029613*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_92
?O
?
E__inference_model_60_layer_call_and_return_conditional_losses_1030290

inputsB
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:B
(conv2d_63_conv2d_readvariableop_resource:7
)conv2d_63_biasadd_readvariableop_resource::
'dense_60_matmul_readvariableop_resource:	?	6
(dense_60_biasadd_readvariableop_resource:9
'dense_61_matmul_readvariableop_resource:6
(dense_61_biasadd_readvariableop_resource:
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?1dense_60/kernel/Regularizer/Square/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
conv2d_62/BiasAdd~
conv2d_62/TanhTanhconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
conv2d_62/Tanh?
average_pooling2d_62/AvgPoolAvgPoolconv2d_62/Tanh:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2
average_pooling2d_62/AvgPooly
dropout_58/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU?@2
dropout_58/dropout/Const?
dropout_58/dropout/MulMul%average_pooling2d_62/AvgPool:output:0!dropout_58/dropout/Const:output:0*
T0*/
_output_shapes
:?????????>2
dropout_58/dropout/Mul?
dropout_58/dropout/ShapeShape%average_pooling2d_62/AvgPool:output:0*
T0*
_output_shapes
:2
dropout_58/dropout/Shape?
/dropout_58/dropout/random_uniform/RandomUniformRandomUniform!dropout_58/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????>*
dtype021
/dropout_58/dropout/random_uniform/RandomUniform?
!dropout_58/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Y?2#
!dropout_58/dropout/GreaterEqual/y?
dropout_58/dropout/GreaterEqualGreaterEqual8dropout_58/dropout/random_uniform/RandomUniform:output:0*dropout_58/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????>2!
dropout_58/dropout/GreaterEqual?
dropout_58/dropout/CastCast#dropout_58/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????>2
dropout_58/dropout/Cast?
dropout_58/dropout/Mul_1Muldropout_58/dropout/Mul:z:0dropout_58/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????>2
dropout_58/dropout/Mul_1?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Ddropout_58/dropout/Mul_1:z:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
conv2d_63/BiasAdd~
conv2d_63/TanhTanhconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
conv2d_63/Tanh?
average_pooling2d_63/AvgPoolAvgPoolconv2d_63/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d_63/AvgPooly
dropout_59/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O???2
dropout_59/dropout/Const?
dropout_59/dropout/MulMul%average_pooling2d_63/AvgPool:output:0!dropout_59/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout_59/dropout/Mul?
dropout_59/dropout/ShapeShape%average_pooling2d_63/AvgPool:output:0*
T0*
_output_shapes
:2
dropout_59/dropout/Shape?
/dropout_59/dropout/random_uniform/RandomUniformRandomUniform!dropout_59/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype021
/dropout_59/dropout/random_uniform/RandomUniform?
!dropout_59/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33?>2#
!dropout_59/dropout/GreaterEqual/y?
dropout_59/dropout/GreaterEqualGreaterEqual8dropout_59/dropout/random_uniform/RandomUniform:output:0*dropout_59/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2!
dropout_59/dropout/GreaterEqual?
dropout_59/dropout/CastCast#dropout_59/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout_59/dropout/Cast?
dropout_59/dropout/Mul_1Muldropout_59/dropout/Mul:z:0dropout_59/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout_59/dropout/Mul_1u
flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_31/Const?
flatten_31/ReshapeReshapedropout_59/dropout/Mul_1:z:0flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten_31/Reshape?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMulflatten_31/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdds
dense_60/TanhTanhdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Tanh?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMuldense_60/Tanh:y:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SigmoidSigmoiddense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Sigmoid?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentitydense_61/Sigmoid:y:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
f
G__inference_dropout_58_layer_call_and_return_conditional_losses_1029449

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU?@2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????>2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????>*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Y?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????>2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????>2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????>2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?

?
E__inference_dense_61_layer_call_and_return_conditional_losses_1030520

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_59_layer_call_fn_1030466

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10294162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
W
+__inference_lambda_30_layer_call_fn_1030366
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10296792
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
H
,__inference_dropout_58_layer_call_fn_1030414

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10292692
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?	
?
*__inference_model_60_layer_call_fn_1029370
input_92!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_92unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_92
?
R
6__inference_average_pooling2d_63_layer_call_fn_1029239

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_10292332
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?5
?
E__inference_model_60_layer_call_and_return_conditional_losses_1029520

inputs+
conv2d_62_1029488:
conv2d_62_1029490:+
conv2d_63_1029495:
conv2d_63_1029497:#
dense_60_1029503:	?	
dense_60_1029505:"
dense_61_1029508:
dense_61_1029510:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?1dense_60/kernel/Regularizer/Square/ReadVariableOp? dense_61/StatefulPartitionedCall?"dropout_58/StatefulPartitionedCall?"dropout_59/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_1029488conv2d_62_1029490*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_62_layer_call_and_return_conditional_losses_10292572#
!conv2d_62/StatefulPartitionedCall?
$average_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_10292212&
$average_pooling2d_62/PartitionedCall?
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10294492$
"dropout_58/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0conv2d_63_1029495conv2d_63_1029497*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_63_layer_call_and_return_conditional_losses_10292822#
!conv2d_63/StatefulPartitionedCall?
$average_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_10292332&
$average_pooling2d_63/PartitionedCall?
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_63/PartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10294162$
"dropout_59/StatefulPartitionedCall?
flatten_31/PartitionedCallPartitionedCall+dropout_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_10293022
flatten_31/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_60_1029503dense_60_1029505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_10293212"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_1029508dense_61_1029510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_10293382"
 dense_61/StatefulPartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_1029503*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_61_layer_call_fn_1030529

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_10293382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
p
F__inference_lambda_30_layer_call_and_return_conditional_losses_1029731

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_model_60_layer_call_fn_1030332

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_60_layer_call_fn_1030509

inputs
unknown:	?	
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_10293212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
r
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030346
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

?
*__inference_model_61_layer_call_fn_1030182
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_61_layer_call_and_return_conditional_losses_10297972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/1
Í
?
#__inference__traced_restore_1030772
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: =
#assignvariableop_5_conv2d_62_kernel:/
!assignvariableop_6_conv2d_62_bias:=
#assignvariableop_7_conv2d_63_kernel:/
!assignvariableop_8_conv2d_63_bias:5
"assignvariableop_9_dense_60_kernel:	?	/
!assignvariableop_10_dense_60_bias:5
#assignvariableop_11_dense_61_kernel:/
!assignvariableop_12_dense_61_bias:#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: E
+assignvariableop_17_adam_conv2d_62_kernel_m:7
)assignvariableop_18_adam_conv2d_62_bias_m:E
+assignvariableop_19_adam_conv2d_63_kernel_m:7
)assignvariableop_20_adam_conv2d_63_bias_m:=
*assignvariableop_21_adam_dense_60_kernel_m:	?	6
(assignvariableop_22_adam_dense_60_bias_m:<
*assignvariableop_23_adam_dense_61_kernel_m:6
(assignvariableop_24_adam_dense_61_bias_m:E
+assignvariableop_25_adam_conv2d_62_kernel_v:7
)assignvariableop_26_adam_conv2d_62_bias_v:E
+assignvariableop_27_adam_conv2d_63_kernel_v:7
)assignvariableop_28_adam_conv2d_63_bias_v:=
*assignvariableop_29_adam_dense_60_kernel_v:	?	6
(assignvariableop_30_adam_dense_60_bias_v:<
*assignvariableop_31_adam_dense_61_kernel_v:6
(assignvariableop_32_adam_dense_61_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_62_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_62_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_63_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv2d_63_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_60_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_60_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_61_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_61_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_62_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_62_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_63_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_63_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_60_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_60_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_61_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_61_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_62_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_62_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_63_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_63_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_60_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_60_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_61_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_61_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
e
G__inference_dropout_59_layer_call_and_return_conditional_losses_1029294

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?G
?
 __inference__traced_save_1030663
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :::::	?	:::: : : : :::::	?	::::::::	?	:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 	

_output_shapes
::%
!

_output_shapes
:	?	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?	: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
?
c
G__inference_flatten_31_layer_call_and_return_conditional_losses_1030472

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_60_layer_call_and_return_conditional_losses_1030500

inputs1
matmul_readvariableop_resource:	?	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_60/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
?
F__inference_conv2d_63_layer_call_and_return_conditional_losses_1029282

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????:
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
Ã
?
E__inference_model_61_layer_call_and_return_conditional_losses_1030030
inputs_0
inputs_1K
1model_60_conv2d_62_conv2d_readvariableop_resource:@
2model_60_conv2d_62_biasadd_readvariableop_resource:K
1model_60_conv2d_63_conv2d_readvariableop_resource:@
2model_60_conv2d_63_biasadd_readvariableop_resource:C
0model_60_dense_60_matmul_readvariableop_resource:	?	?
1model_60_dense_60_biasadd_readvariableop_resource:B
0model_60_dense_61_matmul_readvariableop_resource:?
1model_60_dense_61_biasadd_readvariableop_resource:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp?)model_60/conv2d_62/BiasAdd/ReadVariableOp?+model_60/conv2d_62/BiasAdd_1/ReadVariableOp?(model_60/conv2d_62/Conv2D/ReadVariableOp?*model_60/conv2d_62/Conv2D_1/ReadVariableOp?)model_60/conv2d_63/BiasAdd/ReadVariableOp?+model_60/conv2d_63/BiasAdd_1/ReadVariableOp?(model_60/conv2d_63/Conv2D/ReadVariableOp?*model_60/conv2d_63/Conv2D_1/ReadVariableOp?(model_60/dense_60/BiasAdd/ReadVariableOp?*model_60/dense_60/BiasAdd_1/ReadVariableOp?'model_60/dense_60/MatMul/ReadVariableOp?)model_60/dense_60/MatMul_1/ReadVariableOp?(model_60/dense_61/BiasAdd/ReadVariableOp?*model_60/dense_61/BiasAdd_1/ReadVariableOp?'model_60/dense_61/MatMul/ReadVariableOp?)model_60/dense_61/MatMul_1/ReadVariableOp?
(model_60/conv2d_62/Conv2D/ReadVariableOpReadVariableOp1model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_60/conv2d_62/Conv2D/ReadVariableOp?
model_60/conv2d_62/Conv2DConv2Dinputs_00model_60/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
model_60/conv2d_62/Conv2D?
)model_60/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp2model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_60/conv2d_62/BiasAdd/ReadVariableOp?
model_60/conv2d_62/BiasAddBiasAdd"model_60/conv2d_62/Conv2D:output:01model_60/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/BiasAdd?
model_60/conv2d_62/TanhTanh#model_60/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/Tanh?
%model_60/average_pooling2d_62/AvgPoolAvgPoolmodel_60/conv2d_62/Tanh:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2'
%model_60/average_pooling2d_62/AvgPool?
model_60/dropout_58/IdentityIdentity.model_60/average_pooling2d_62/AvgPool:output:0*
T0*/
_output_shapes
:?????????>2
model_60/dropout_58/Identity?
(model_60/conv2d_63/Conv2D/ReadVariableOpReadVariableOp1model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_60/conv2d_63/Conv2D/ReadVariableOp?
model_60/conv2d_63/Conv2DConv2D%model_60/dropout_58/Identity:output:00model_60/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
model_60/conv2d_63/Conv2D?
)model_60/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp2model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_60/conv2d_63/BiasAdd/ReadVariableOp?
model_60/conv2d_63/BiasAddBiasAdd"model_60/conv2d_63/Conv2D:output:01model_60/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/BiasAdd?
model_60/conv2d_63/TanhTanh#model_60/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/Tanh?
%model_60/average_pooling2d_63/AvgPoolAvgPoolmodel_60/conv2d_63/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2'
%model_60/average_pooling2d_63/AvgPool?
model_60/dropout_59/IdentityIdentity.model_60/average_pooling2d_63/AvgPool:output:0*
T0*/
_output_shapes
:?????????2
model_60/dropout_59/Identity?
model_60/flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
model_60/flatten_31/Const?
model_60/flatten_31/ReshapeReshape%model_60/dropout_59/Identity:output:0"model_60/flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????	2
model_60/flatten_31/Reshape?
'model_60/dense_60/MatMul/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02)
'model_60/dense_60/MatMul/ReadVariableOp?
model_60/dense_60/MatMulMatMul$model_60/flatten_31/Reshape:output:0/model_60/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/MatMul?
(model_60/dense_60/BiasAdd/ReadVariableOpReadVariableOp1model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_60/dense_60/BiasAdd/ReadVariableOp?
model_60/dense_60/BiasAddBiasAdd"model_60/dense_60/MatMul:product:00model_60/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/BiasAdd?
model_60/dense_60/TanhTanh"model_60/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/Tanh?
'model_60/dense_61/MatMul/ReadVariableOpReadVariableOp0model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'model_60/dense_61/MatMul/ReadVariableOp?
model_60/dense_61/MatMulMatMulmodel_60/dense_60/Tanh:y:0/model_60/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/MatMul?
(model_60/dense_61/BiasAdd/ReadVariableOpReadVariableOp1model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_60/dense_61/BiasAdd/ReadVariableOp?
model_60/dense_61/BiasAddBiasAdd"model_60/dense_61/MatMul:product:00model_60/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/BiasAdd?
model_60/dense_61/SigmoidSigmoid"model_60/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/Sigmoid?
*model_60/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp1model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_60/conv2d_62/Conv2D_1/ReadVariableOp?
model_60/conv2d_62/Conv2D_1Conv2Dinputs_12model_60/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
model_60/conv2d_62/Conv2D_1?
+model_60/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp2model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_60/conv2d_62/BiasAdd_1/ReadVariableOp?
model_60/conv2d_62/BiasAdd_1BiasAdd$model_60/conv2d_62/Conv2D_1:output:03model_60/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/BiasAdd_1?
model_60/conv2d_62/Tanh_1Tanh%model_60/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/Tanh_1?
'model_60/average_pooling2d_62/AvgPool_1AvgPoolmodel_60/conv2d_62/Tanh_1:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2)
'model_60/average_pooling2d_62/AvgPool_1?
model_60/dropout_58/Identity_1Identity0model_60/average_pooling2d_62/AvgPool_1:output:0*
T0*/
_output_shapes
:?????????>2 
model_60/dropout_58/Identity_1?
*model_60/conv2d_63/Conv2D_1/ReadVariableOpReadVariableOp1model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_60/conv2d_63/Conv2D_1/ReadVariableOp?
model_60/conv2d_63/Conv2D_1Conv2D'model_60/dropout_58/Identity_1:output:02model_60/conv2d_63/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
model_60/conv2d_63/Conv2D_1?
+model_60/conv2d_63/BiasAdd_1/ReadVariableOpReadVariableOp2model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_60/conv2d_63/BiasAdd_1/ReadVariableOp?
model_60/conv2d_63/BiasAdd_1BiasAdd$model_60/conv2d_63/Conv2D_1:output:03model_60/conv2d_63/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/BiasAdd_1?
model_60/conv2d_63/Tanh_1Tanh%model_60/conv2d_63/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/Tanh_1?
'model_60/average_pooling2d_63/AvgPool_1AvgPoolmodel_60/conv2d_63/Tanh_1:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2)
'model_60/average_pooling2d_63/AvgPool_1?
model_60/dropout_59/Identity_1Identity0model_60/average_pooling2d_63/AvgPool_1:output:0*
T0*/
_output_shapes
:?????????2 
model_60/dropout_59/Identity_1?
model_60/flatten_31/Const_1Const*
_output_shapes
:*
dtype0*
valueB"?????  2
model_60/flatten_31/Const_1?
model_60/flatten_31/Reshape_1Reshape'model_60/dropout_59/Identity_1:output:0$model_60/flatten_31/Const_1:output:0*
T0*(
_output_shapes
:??????????	2
model_60/flatten_31/Reshape_1?
)model_60/dense_60/MatMul_1/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02+
)model_60/dense_60/MatMul_1/ReadVariableOp?
model_60/dense_60/MatMul_1MatMul&model_60/flatten_31/Reshape_1:output:01model_60/dense_60/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/MatMul_1?
*model_60/dense_60/BiasAdd_1/ReadVariableOpReadVariableOp1model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/dense_60/BiasAdd_1/ReadVariableOp?
model_60/dense_60/BiasAdd_1BiasAdd$model_60/dense_60/MatMul_1:product:02model_60/dense_60/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/BiasAdd_1?
model_60/dense_60/Tanh_1Tanh$model_60/dense_60/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/Tanh_1?
)model_60/dense_61/MatMul_1/ReadVariableOpReadVariableOp0model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02+
)model_60/dense_61/MatMul_1/ReadVariableOp?
model_60/dense_61/MatMul_1MatMulmodel_60/dense_60/Tanh_1:y:01model_60/dense_61/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/MatMul_1?
*model_60/dense_61/BiasAdd_1/ReadVariableOpReadVariableOp1model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/dense_61/BiasAdd_1/ReadVariableOp?
model_60/dense_61/BiasAdd_1BiasAdd$model_60/dense_61/MatMul_1:product:02model_60/dense_61/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/BiasAdd_1?
model_60/dense_61/Sigmoid_1Sigmoid$model_60/dense_61/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/Sigmoid_1?
lambda_30/subSubmodel_60/dense_61/Sigmoid:y:0model_60/dense_61/Sigmoid_1:y:0*
T0*'
_output_shapes
:?????????2
lambda_30/subs
lambda_30/SquareSquarelambda_30/sub:z:0*
T0*'
_output_shapes
:?????????2
lambda_30/Square?
lambda_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
lambda_30/Sum/reduction_indices?
lambda_30/SumSumlambda_30/Square:y:0(lambda_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
lambda_30/Sumo
lambda_30/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda_30/Maximum/y?
lambda_30/MaximumMaximumlambda_30/Sum:output:0lambda_30/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda_30/Maximumg
lambda_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda_30/Const?
lambda_30/Maximum_1Maximumlambda_30/Maximum:z:0lambda_30/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda_30/Maximum_1s
lambda_30/SqrtSqrtlambda_30/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda_30/Sqrt?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentitylambda_30/Sqrt:y:02^dense_60/kernel/Regularizer/Square/ReadVariableOp*^model_60/conv2d_62/BiasAdd/ReadVariableOp,^model_60/conv2d_62/BiasAdd_1/ReadVariableOp)^model_60/conv2d_62/Conv2D/ReadVariableOp+^model_60/conv2d_62/Conv2D_1/ReadVariableOp*^model_60/conv2d_63/BiasAdd/ReadVariableOp,^model_60/conv2d_63/BiasAdd_1/ReadVariableOp)^model_60/conv2d_63/Conv2D/ReadVariableOp+^model_60/conv2d_63/Conv2D_1/ReadVariableOp)^model_60/dense_60/BiasAdd/ReadVariableOp+^model_60/dense_60/BiasAdd_1/ReadVariableOp(^model_60/dense_60/MatMul/ReadVariableOp*^model_60/dense_60/MatMul_1/ReadVariableOp)^model_60/dense_61/BiasAdd/ReadVariableOp+^model_60/dense_61/BiasAdd_1/ReadVariableOp(^model_60/dense_61/MatMul/ReadVariableOp*^model_60/dense_61/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2V
)model_60/conv2d_62/BiasAdd/ReadVariableOp)model_60/conv2d_62/BiasAdd/ReadVariableOp2Z
+model_60/conv2d_62/BiasAdd_1/ReadVariableOp+model_60/conv2d_62/BiasAdd_1/ReadVariableOp2T
(model_60/conv2d_62/Conv2D/ReadVariableOp(model_60/conv2d_62/Conv2D/ReadVariableOp2X
*model_60/conv2d_62/Conv2D_1/ReadVariableOp*model_60/conv2d_62/Conv2D_1/ReadVariableOp2V
)model_60/conv2d_63/BiasAdd/ReadVariableOp)model_60/conv2d_63/BiasAdd/ReadVariableOp2Z
+model_60/conv2d_63/BiasAdd_1/ReadVariableOp+model_60/conv2d_63/BiasAdd_1/ReadVariableOp2T
(model_60/conv2d_63/Conv2D/ReadVariableOp(model_60/conv2d_63/Conv2D/ReadVariableOp2X
*model_60/conv2d_63/Conv2D_1/ReadVariableOp*model_60/conv2d_63/Conv2D_1/ReadVariableOp2T
(model_60/dense_60/BiasAdd/ReadVariableOp(model_60/dense_60/BiasAdd/ReadVariableOp2X
*model_60/dense_60/BiasAdd_1/ReadVariableOp*model_60/dense_60/BiasAdd_1/ReadVariableOp2R
'model_60/dense_60/MatMul/ReadVariableOp'model_60/dense_60/MatMul/ReadVariableOp2V
)model_60/dense_60/MatMul_1/ReadVariableOp)model_60/dense_60/MatMul_1/ReadVariableOp2T
(model_60/dense_61/BiasAdd/ReadVariableOp(model_60/dense_61/BiasAdd/ReadVariableOp2X
*model_60/dense_61/BiasAdd_1/ReadVariableOp*model_60/dense_61/BiasAdd_1/ReadVariableOp2R
'model_60/dense_61/MatMul/ReadVariableOp'model_60/dense_61/MatMul/ReadVariableOp2V
)model_60/dense_61/MatMul_1/ReadVariableOp)model_60/dense_61/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/1
?
m
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_1029221

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?1
?
E__inference_model_60_layer_call_and_return_conditional_losses_1029595
input_92+
conv2d_62_1029563:
conv2d_62_1029565:+
conv2d_63_1029570:
conv2d_63_1029572:#
dense_60_1029578:	?	
dense_60_1029580:"
dense_61_1029583:
dense_61_1029585:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?1dense_60/kernel/Regularizer/Square/ReadVariableOp? dense_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinput_92conv2d_62_1029563conv2d_62_1029565*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_62_layer_call_and_return_conditional_losses_10292572#
!conv2d_62/StatefulPartitionedCall?
$average_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_10292212&
$average_pooling2d_62/PartitionedCall?
dropout_58/PartitionedCallPartitionedCall-average_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10292692
dropout_58/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0conv2d_63_1029570conv2d_63_1029572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_63_layer_call_and_return_conditional_losses_10292822#
!conv2d_63/StatefulPartitionedCall?
$average_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_10292332&
$average_pooling2d_63/PartitionedCall?
dropout_59/PartitionedCallPartitionedCall-average_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10292942
dropout_59/PartitionedCall?
flatten_31/PartitionedCallPartitionedCall#dropout_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_10293022
flatten_31/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_60_1029578dense_60_1029580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_10293212"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_1029583dense_61_1029585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_10293382"
 dense_61/StatefulPartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_1029578*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_92
?
R
6__inference_average_pooling2d_62_layer_call_fn_1029227

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_10292212
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_59_layer_call_fn_1030461

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10292942
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030456

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O???2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1029950
input_93
input_94!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_93input_94unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_10292152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?
?
E__inference_model_61_layer_call_and_return_conditional_losses_1029797

inputs
inputs_1*
model_60_1029763:
model_60_1029765:*
model_60_1029767:
model_60_1029769:#
model_60_1029771:	?	
model_60_1029773:"
model_60_1029775:
model_60_1029777:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp? model_60/StatefulPartitionedCall?"model_60/StatefulPartitionedCall_1?
 model_60/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_60_1029763model_60_1029765model_60_1029767model_60_1029769model_60_1029771model_60_1029773model_60_1029775model_60_1029777*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202"
 model_60/StatefulPartitionedCall?
"model_60/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_60_1029763model_60_1029765model_60_1029767model_60_1029769model_60_1029771model_60_1029773model_60_1029775model_60_1029777*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10295202$
"model_60/StatefulPartitionedCall_1?
lambda_30/PartitionedCallPartitionedCall)model_60/StatefulPartitionedCall:output:0+model_60/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10297312
lambda_30/PartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmodel_60_1029771*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity"lambda_30/PartitionedCall:output:02^dense_60/kernel/Regularizer/Square/ReadVariableOp!^model_60/StatefulPartitionedCall#^model_60/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 model_60/StatefulPartitionedCall model_60/StatefulPartitionedCall2H
"model_60/StatefulPartitionedCall_1"model_60/StatefulPartitionedCall_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
W
+__inference_lambda_30_layer_call_fn_1030372
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10297312
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
F__inference_conv2d_62_layer_call_and_return_conditional_losses_1029257

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????|2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
c
G__inference_flatten_31_layer_call_and_return_conditional_losses_1029302

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1030540M
:dense_60_kernel_regularizer_square_readvariableop_resource:	?	
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_60_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity#dense_60/kernel/Regularizer/mul:z:02^dense_60/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp
?
m
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_1029233

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
*__inference_model_61_layer_call_fn_1029707
input_93
input_94!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_93input_94unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_61_layer_call_and_return_conditional_losses_10296882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?	
?
*__inference_model_60_layer_call_fn_1030311

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
H
,__inference_flatten_31_layer_call_fn_1030477

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_10293022
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_58_layer_call_fn_1030419

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10294492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?

?
E__inference_dense_61_layer_call_and_return_conditional_losses_1029338

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
*__inference_model_61_layer_call_fn_1030160
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?	
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_61_layer_call_and_return_conditional_losses_10296882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/1
?
?
F__inference_conv2d_62_layer_call_and_return_conditional_losses_1030383

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????|2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
e
G__inference_dropout_58_layer_call_and_return_conditional_losses_1029269

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????>2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????>2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
E__inference_dense_60_layer_call_and_return_conditional_losses_1029321

inputs1
matmul_readvariableop_resource:	?	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_60/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
f
G__inference_dropout_59_layer_call_and_return_conditional_losses_1029416

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O???2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?1
?
E__inference_model_60_layer_call_and_return_conditional_losses_1029351

inputs+
conv2d_62_1029258:
conv2d_62_1029260:+
conv2d_63_1029283:
conv2d_63_1029285:#
dense_60_1029322:	?	
dense_60_1029324:"
dense_61_1029339:
dense_61_1029341:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?1dense_60/kernel/Regularizer/Square/ReadVariableOp? dense_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_1029258conv2d_62_1029260*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_62_layer_call_and_return_conditional_losses_10292572#
!conv2d_62/StatefulPartitionedCall?
$average_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_10292212&
$average_pooling2d_62/PartitionedCall?
dropout_58/PartitionedCallPartitionedCall-average_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_10292692
dropout_58/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0conv2d_63_1029283conv2d_63_1029285*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_63_layer_call_and_return_conditional_losses_10292822#
!conv2d_63/StatefulPartitionedCall?
$average_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_10292332&
$average_pooling2d_63/PartitionedCall?
dropout_59/PartitionedCallPartitionedCall-average_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_10292942
dropout_59/PartitionedCall?
flatten_31/PartitionedCallPartitionedCall#dropout_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_10293022
flatten_31/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_60_1029322dense_60_1029324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_10293212"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_1029339dense_61_1029341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_10293382"
 dense_61/StatefulPartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_1029322*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
߱
?
E__inference_model_61_layer_call_and_return_conditional_losses_1030138
inputs_0
inputs_1K
1model_60_conv2d_62_conv2d_readvariableop_resource:@
2model_60_conv2d_62_biasadd_readvariableop_resource:K
1model_60_conv2d_63_conv2d_readvariableop_resource:@
2model_60_conv2d_63_biasadd_readvariableop_resource:C
0model_60_dense_60_matmul_readvariableop_resource:	?	?
1model_60_dense_60_biasadd_readvariableop_resource:B
0model_60_dense_61_matmul_readvariableop_resource:?
1model_60_dense_61_biasadd_readvariableop_resource:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp?)model_60/conv2d_62/BiasAdd/ReadVariableOp?+model_60/conv2d_62/BiasAdd_1/ReadVariableOp?(model_60/conv2d_62/Conv2D/ReadVariableOp?*model_60/conv2d_62/Conv2D_1/ReadVariableOp?)model_60/conv2d_63/BiasAdd/ReadVariableOp?+model_60/conv2d_63/BiasAdd_1/ReadVariableOp?(model_60/conv2d_63/Conv2D/ReadVariableOp?*model_60/conv2d_63/Conv2D_1/ReadVariableOp?(model_60/dense_60/BiasAdd/ReadVariableOp?*model_60/dense_60/BiasAdd_1/ReadVariableOp?'model_60/dense_60/MatMul/ReadVariableOp?)model_60/dense_60/MatMul_1/ReadVariableOp?(model_60/dense_61/BiasAdd/ReadVariableOp?*model_60/dense_61/BiasAdd_1/ReadVariableOp?'model_60/dense_61/MatMul/ReadVariableOp?)model_60/dense_61/MatMul_1/ReadVariableOp?
(model_60/conv2d_62/Conv2D/ReadVariableOpReadVariableOp1model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_60/conv2d_62/Conv2D/ReadVariableOp?
model_60/conv2d_62/Conv2DConv2Dinputs_00model_60/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
model_60/conv2d_62/Conv2D?
)model_60/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp2model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_60/conv2d_62/BiasAdd/ReadVariableOp?
model_60/conv2d_62/BiasAddBiasAdd"model_60/conv2d_62/Conv2D:output:01model_60/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/BiasAdd?
model_60/conv2d_62/TanhTanh#model_60/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/Tanh?
%model_60/average_pooling2d_62/AvgPoolAvgPoolmodel_60/conv2d_62/Tanh:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2'
%model_60/average_pooling2d_62/AvgPool?
!model_60/dropout_58/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU?@2#
!model_60/dropout_58/dropout/Const?
model_60/dropout_58/dropout/MulMul.model_60/average_pooling2d_62/AvgPool:output:0*model_60/dropout_58/dropout/Const:output:0*
T0*/
_output_shapes
:?????????>2!
model_60/dropout_58/dropout/Mul?
!model_60/dropout_58/dropout/ShapeShape.model_60/average_pooling2d_62/AvgPool:output:0*
T0*
_output_shapes
:2#
!model_60/dropout_58/dropout/Shape?
8model_60/dropout_58/dropout/random_uniform/RandomUniformRandomUniform*model_60/dropout_58/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????>*
dtype02:
8model_60/dropout_58/dropout/random_uniform/RandomUniform?
*model_60/dropout_58/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Y?2,
*model_60/dropout_58/dropout/GreaterEqual/y?
(model_60/dropout_58/dropout/GreaterEqualGreaterEqualAmodel_60/dropout_58/dropout/random_uniform/RandomUniform:output:03model_60/dropout_58/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????>2*
(model_60/dropout_58/dropout/GreaterEqual?
 model_60/dropout_58/dropout/CastCast,model_60/dropout_58/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????>2"
 model_60/dropout_58/dropout/Cast?
!model_60/dropout_58/dropout/Mul_1Mul#model_60/dropout_58/dropout/Mul:z:0$model_60/dropout_58/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????>2#
!model_60/dropout_58/dropout/Mul_1?
(model_60/conv2d_63/Conv2D/ReadVariableOpReadVariableOp1model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_60/conv2d_63/Conv2D/ReadVariableOp?
model_60/conv2d_63/Conv2DConv2D%model_60/dropout_58/dropout/Mul_1:z:00model_60/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
model_60/conv2d_63/Conv2D?
)model_60/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp2model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_60/conv2d_63/BiasAdd/ReadVariableOp?
model_60/conv2d_63/BiasAddBiasAdd"model_60/conv2d_63/Conv2D:output:01model_60/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/BiasAdd?
model_60/conv2d_63/TanhTanh#model_60/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/Tanh?
%model_60/average_pooling2d_63/AvgPoolAvgPoolmodel_60/conv2d_63/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2'
%model_60/average_pooling2d_63/AvgPool?
!model_60/dropout_59/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O???2#
!model_60/dropout_59/dropout/Const?
model_60/dropout_59/dropout/MulMul.model_60/average_pooling2d_63/AvgPool:output:0*model_60/dropout_59/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2!
model_60/dropout_59/dropout/Mul?
!model_60/dropout_59/dropout/ShapeShape.model_60/average_pooling2d_63/AvgPool:output:0*
T0*
_output_shapes
:2#
!model_60/dropout_59/dropout/Shape?
8model_60/dropout_59/dropout/random_uniform/RandomUniformRandomUniform*model_60/dropout_59/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02:
8model_60/dropout_59/dropout/random_uniform/RandomUniform?
*model_60/dropout_59/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33?>2,
*model_60/dropout_59/dropout/GreaterEqual/y?
(model_60/dropout_59/dropout/GreaterEqualGreaterEqualAmodel_60/dropout_59/dropout/random_uniform/RandomUniform:output:03model_60/dropout_59/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2*
(model_60/dropout_59/dropout/GreaterEqual?
 model_60/dropout_59/dropout/CastCast,model_60/dropout_59/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2"
 model_60/dropout_59/dropout/Cast?
!model_60/dropout_59/dropout/Mul_1Mul#model_60/dropout_59/dropout/Mul:z:0$model_60/dropout_59/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2#
!model_60/dropout_59/dropout/Mul_1?
model_60/flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
model_60/flatten_31/Const?
model_60/flatten_31/ReshapeReshape%model_60/dropout_59/dropout/Mul_1:z:0"model_60/flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????	2
model_60/flatten_31/Reshape?
'model_60/dense_60/MatMul/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02)
'model_60/dense_60/MatMul/ReadVariableOp?
model_60/dense_60/MatMulMatMul$model_60/flatten_31/Reshape:output:0/model_60/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/MatMul?
(model_60/dense_60/BiasAdd/ReadVariableOpReadVariableOp1model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_60/dense_60/BiasAdd/ReadVariableOp?
model_60/dense_60/BiasAddBiasAdd"model_60/dense_60/MatMul:product:00model_60/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/BiasAdd?
model_60/dense_60/TanhTanh"model_60/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/Tanh?
'model_60/dense_61/MatMul/ReadVariableOpReadVariableOp0model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'model_60/dense_61/MatMul/ReadVariableOp?
model_60/dense_61/MatMulMatMulmodel_60/dense_60/Tanh:y:0/model_60/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/MatMul?
(model_60/dense_61/BiasAdd/ReadVariableOpReadVariableOp1model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_60/dense_61/BiasAdd/ReadVariableOp?
model_60/dense_61/BiasAddBiasAdd"model_60/dense_61/MatMul:product:00model_60/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/BiasAdd?
model_60/dense_61/SigmoidSigmoid"model_60/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/Sigmoid?
*model_60/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp1model_60_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_60/conv2d_62/Conv2D_1/ReadVariableOp?
model_60/conv2d_62/Conv2D_1Conv2Dinputs_12model_60/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
model_60/conv2d_62/Conv2D_1?
+model_60/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp2model_60_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_60/conv2d_62/BiasAdd_1/ReadVariableOp?
model_60/conv2d_62/BiasAdd_1BiasAdd$model_60/conv2d_62/Conv2D_1:output:03model_60/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/BiasAdd_1?
model_60/conv2d_62/Tanh_1Tanh%model_60/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????|2
model_60/conv2d_62/Tanh_1?
'model_60/average_pooling2d_62/AvgPool_1AvgPoolmodel_60/conv2d_62/Tanh_1:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2)
'model_60/average_pooling2d_62/AvgPool_1?
#model_60/dropout_58/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU?@2%
#model_60/dropout_58/dropout_1/Const?
!model_60/dropout_58/dropout_1/MulMul0model_60/average_pooling2d_62/AvgPool_1:output:0,model_60/dropout_58/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????>2#
!model_60/dropout_58/dropout_1/Mul?
#model_60/dropout_58/dropout_1/ShapeShape0model_60/average_pooling2d_62/AvgPool_1:output:0*
T0*
_output_shapes
:2%
#model_60/dropout_58/dropout_1/Shape?
:model_60/dropout_58/dropout_1/random_uniform/RandomUniformRandomUniform,model_60/dropout_58/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????>*
dtype02<
:model_60/dropout_58/dropout_1/random_uniform/RandomUniform?
,model_60/dropout_58/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Y?2.
,model_60/dropout_58/dropout_1/GreaterEqual/y?
*model_60/dropout_58/dropout_1/GreaterEqualGreaterEqualCmodel_60/dropout_58/dropout_1/random_uniform/RandomUniform:output:05model_60/dropout_58/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????>2,
*model_60/dropout_58/dropout_1/GreaterEqual?
"model_60/dropout_58/dropout_1/CastCast.model_60/dropout_58/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????>2$
"model_60/dropout_58/dropout_1/Cast?
#model_60/dropout_58/dropout_1/Mul_1Mul%model_60/dropout_58/dropout_1/Mul:z:0&model_60/dropout_58/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????>2%
#model_60/dropout_58/dropout_1/Mul_1?
*model_60/conv2d_63/Conv2D_1/ReadVariableOpReadVariableOp1model_60_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_60/conv2d_63/Conv2D_1/ReadVariableOp?
model_60/conv2d_63/Conv2D_1Conv2D'model_60/dropout_58/dropout_1/Mul_1:z:02model_60/conv2d_63/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
model_60/conv2d_63/Conv2D_1?
+model_60/conv2d_63/BiasAdd_1/ReadVariableOpReadVariableOp2model_60_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_60/conv2d_63/BiasAdd_1/ReadVariableOp?
model_60/conv2d_63/BiasAdd_1BiasAdd$model_60/conv2d_63/Conv2D_1:output:03model_60/conv2d_63/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/BiasAdd_1?
model_60/conv2d_63/Tanh_1Tanh%model_60/conv2d_63/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????:
2
model_60/conv2d_63/Tanh_1?
'model_60/average_pooling2d_63/AvgPool_1AvgPoolmodel_60/conv2d_63/Tanh_1:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2)
'model_60/average_pooling2d_63/AvgPool_1?
#model_60/dropout_59/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O???2%
#model_60/dropout_59/dropout_1/Const?
!model_60/dropout_59/dropout_1/MulMul0model_60/average_pooling2d_63/AvgPool_1:output:0,model_60/dropout_59/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????2#
!model_60/dropout_59/dropout_1/Mul?
#model_60/dropout_59/dropout_1/ShapeShape0model_60/average_pooling2d_63/AvgPool_1:output:0*
T0*
_output_shapes
:2%
#model_60/dropout_59/dropout_1/Shape?
:model_60/dropout_59/dropout_1/random_uniform/RandomUniformRandomUniform,model_60/dropout_59/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02<
:model_60/dropout_59/dropout_1/random_uniform/RandomUniform?
,model_60/dropout_59/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33?>2.
,model_60/dropout_59/dropout_1/GreaterEqual/y?
*model_60/dropout_59/dropout_1/GreaterEqualGreaterEqualCmodel_60/dropout_59/dropout_1/random_uniform/RandomUniform:output:05model_60/dropout_59/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2,
*model_60/dropout_59/dropout_1/GreaterEqual?
"model_60/dropout_59/dropout_1/CastCast.model_60/dropout_59/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2$
"model_60/dropout_59/dropout_1/Cast?
#model_60/dropout_59/dropout_1/Mul_1Mul%model_60/dropout_59/dropout_1/Mul:z:0&model_60/dropout_59/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????2%
#model_60/dropout_59/dropout_1/Mul_1?
model_60/flatten_31/Const_1Const*
_output_shapes
:*
dtype0*
valueB"?????  2
model_60/flatten_31/Const_1?
model_60/flatten_31/Reshape_1Reshape'model_60/dropout_59/dropout_1/Mul_1:z:0$model_60/flatten_31/Const_1:output:0*
T0*(
_output_shapes
:??????????	2
model_60/flatten_31/Reshape_1?
)model_60/dense_60/MatMul_1/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02+
)model_60/dense_60/MatMul_1/ReadVariableOp?
model_60/dense_60/MatMul_1MatMul&model_60/flatten_31/Reshape_1:output:01model_60/dense_60/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/MatMul_1?
*model_60/dense_60/BiasAdd_1/ReadVariableOpReadVariableOp1model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/dense_60/BiasAdd_1/ReadVariableOp?
model_60/dense_60/BiasAdd_1BiasAdd$model_60/dense_60/MatMul_1:product:02model_60/dense_60/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/BiasAdd_1?
model_60/dense_60/Tanh_1Tanh$model_60/dense_60/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_60/Tanh_1?
)model_60/dense_61/MatMul_1/ReadVariableOpReadVariableOp0model_60_dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02+
)model_60/dense_61/MatMul_1/ReadVariableOp?
model_60/dense_61/MatMul_1MatMulmodel_60/dense_60/Tanh_1:y:01model_60/dense_61/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/MatMul_1?
*model_60/dense_61/BiasAdd_1/ReadVariableOpReadVariableOp1model_60_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/dense_61/BiasAdd_1/ReadVariableOp?
model_60/dense_61/BiasAdd_1BiasAdd$model_60/dense_61/MatMul_1:product:02model_60/dense_61/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/BiasAdd_1?
model_60/dense_61/Sigmoid_1Sigmoid$model_60/dense_61/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????2
model_60/dense_61/Sigmoid_1?
lambda_30/subSubmodel_60/dense_61/Sigmoid:y:0model_60/dense_61/Sigmoid_1:y:0*
T0*'
_output_shapes
:?????????2
lambda_30/subs
lambda_30/SquareSquarelambda_30/sub:z:0*
T0*'
_output_shapes
:?????????2
lambda_30/Square?
lambda_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
lambda_30/Sum/reduction_indices?
lambda_30/SumSumlambda_30/Square:y:0(lambda_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
lambda_30/Sumo
lambda_30/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda_30/Maximum/y?
lambda_30/MaximumMaximumlambda_30/Sum:output:0lambda_30/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda_30/Maximumg
lambda_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda_30/Const?
lambda_30/Maximum_1Maximumlambda_30/Maximum:z:0lambda_30/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda_30/Maximum_1s
lambda_30/SqrtSqrtlambda_30/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda_30/Sqrt?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentitylambda_30/Sqrt:y:02^dense_60/kernel/Regularizer/Square/ReadVariableOp*^model_60/conv2d_62/BiasAdd/ReadVariableOp,^model_60/conv2d_62/BiasAdd_1/ReadVariableOp)^model_60/conv2d_62/Conv2D/ReadVariableOp+^model_60/conv2d_62/Conv2D_1/ReadVariableOp*^model_60/conv2d_63/BiasAdd/ReadVariableOp,^model_60/conv2d_63/BiasAdd_1/ReadVariableOp)^model_60/conv2d_63/Conv2D/ReadVariableOp+^model_60/conv2d_63/Conv2D_1/ReadVariableOp)^model_60/dense_60/BiasAdd/ReadVariableOp+^model_60/dense_60/BiasAdd_1/ReadVariableOp(^model_60/dense_60/MatMul/ReadVariableOp*^model_60/dense_60/MatMul_1/ReadVariableOp)^model_60/dense_61/BiasAdd/ReadVariableOp+^model_60/dense_61/BiasAdd_1/ReadVariableOp(^model_60/dense_61/MatMul/ReadVariableOp*^model_60/dense_61/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2V
)model_60/conv2d_62/BiasAdd/ReadVariableOp)model_60/conv2d_62/BiasAdd/ReadVariableOp2Z
+model_60/conv2d_62/BiasAdd_1/ReadVariableOp+model_60/conv2d_62/BiasAdd_1/ReadVariableOp2T
(model_60/conv2d_62/Conv2D/ReadVariableOp(model_60/conv2d_62/Conv2D/ReadVariableOp2X
*model_60/conv2d_62/Conv2D_1/ReadVariableOp*model_60/conv2d_62/Conv2D_1/ReadVariableOp2V
)model_60/conv2d_63/BiasAdd/ReadVariableOp)model_60/conv2d_63/BiasAdd/ReadVariableOp2Z
+model_60/conv2d_63/BiasAdd_1/ReadVariableOp+model_60/conv2d_63/BiasAdd_1/ReadVariableOp2T
(model_60/conv2d_63/Conv2D/ReadVariableOp(model_60/conv2d_63/Conv2D/ReadVariableOp2X
*model_60/conv2d_63/Conv2D_1/ReadVariableOp*model_60/conv2d_63/Conv2D_1/ReadVariableOp2T
(model_60/dense_60/BiasAdd/ReadVariableOp(model_60/dense_60/BiasAdd/ReadVariableOp2X
*model_60/dense_60/BiasAdd_1/ReadVariableOp*model_60/dense_60/BiasAdd_1/ReadVariableOp2R
'model_60/dense_60/MatMul/ReadVariableOp'model_60/dense_60/MatMul/ReadVariableOp2V
)model_60/dense_60/MatMul_1/ReadVariableOp)model_60/dense_60/MatMul_1/ReadVariableOp2T
(model_60/dense_61/BiasAdd/ReadVariableOp(model_60/dense_61/BiasAdd/ReadVariableOp2X
*model_60/dense_61/BiasAdd_1/ReadVariableOp*model_60/dense_61/BiasAdd_1/ReadVariableOp2R
'model_60/dense_61/MatMul/ReadVariableOp'model_60/dense_61/MatMul/ReadVariableOp2V
)model_60/dense_61/MatMul_1/ReadVariableOp)model_60/dense_61/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
inputs/1
?
?
E__inference_model_61_layer_call_and_return_conditional_losses_1029876
input_93
input_94*
model_60_1029842:
model_60_1029844:*
model_60_1029846:
model_60_1029848:#
model_60_1029850:	?	
model_60_1029852:"
model_60_1029854:
model_60_1029856:
identity??1dense_60/kernel/Regularizer/Square/ReadVariableOp? model_60/StatefulPartitionedCall?"model_60/StatefulPartitionedCall_1?
 model_60/StatefulPartitionedCallStatefulPartitionedCallinput_93model_60_1029842model_60_1029844model_60_1029846model_60_1029848model_60_1029850model_60_1029852model_60_1029854model_60_1029856*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512"
 model_60/StatefulPartitionedCall?
"model_60/StatefulPartitionedCall_1StatefulPartitionedCallinput_94model_60_1029842model_60_1029844model_60_1029846model_60_1029848model_60_1029850model_60_1029852model_60_1029854model_60_1029856*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_60_layer_call_and_return_conditional_losses_10293512$
"model_60/StatefulPartitionedCall_1?
lambda_30/PartitionedCallPartitionedCall)model_60/StatefulPartitionedCall:output:0+model_60/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_30_layer_call_and_return_conditional_losses_10296792
lambda_30/PartitionedCall?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmodel_60_1029850*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentity"lambda_30/PartitionedCall:output:02^dense_60/kernel/Regularizer/Square/ReadVariableOp!^model_60/StatefulPartitionedCall#^model_60/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????? :?????????? : : : : : : : : 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 model_60/StatefulPartitionedCall model_60/StatefulPartitionedCall2H
"model_60/StatefulPartitionedCall_1"model_60/StatefulPartitionedCall_1:Z V
0
_output_shapes
:?????????? 
"
_user_specified_name
input_93:ZV
0
_output_shapes
:?????????? 
"
_user_specified_name
input_94
?;
?
E__inference_model_60_layer_call_and_return_conditional_losses_1030232

inputsB
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:B
(conv2d_63_conv2d_readvariableop_resource:7
)conv2d_63_biasadd_readvariableop_resource::
'dense_60_matmul_readvariableop_resource:	?	6
(dense_60_biasadd_readvariableop_resource:9
'dense_61_matmul_readvariableop_resource:6
(dense_61_biasadd_readvariableop_resource:
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?1dense_60/kernel/Regularizer/Square/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????|2
conv2d_62/BiasAdd~
conv2d_62/TanhTanhconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????|2
conv2d_62/Tanh?
average_pooling2d_62/AvgPoolAvgPoolconv2d_62/Tanh:y:0*
T0*/
_output_shapes
:?????????>*
ksize
*
paddingVALID*
strides
2
average_pooling2d_62/AvgPool?
dropout_58/IdentityIdentity%average_pooling2d_62/AvgPool:output:0*
T0*/
_output_shapes
:?????????>2
dropout_58/Identity?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Ddropout_58/Identity:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
*
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:
2
conv2d_63/BiasAdd~
conv2d_63/TanhTanhconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:
2
conv2d_63/Tanh?
average_pooling2d_63/AvgPoolAvgPoolconv2d_63/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d_63/AvgPool?
dropout_59/IdentityIdentity%average_pooling2d_63/AvgPool:output:0*
T0*/
_output_shapes
:?????????2
dropout_59/Identityu
flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_31/Const?
flatten_31/ReshapeReshapedropout_59/Identity:output:0flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten_31/Reshape?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMulflatten_31/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdds
dense_60/TanhTanhdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Tanh?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMuldense_60/Tanh:y:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SigmoidSigmoiddense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Sigmoid?
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp?
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	2$
"dense_60/kernel/Regularizer/Square?
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const?
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum?
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_60/kernel/Regularizer/mul/x?
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mul?
IdentityIdentitydense_61/Sigmoid:y:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????? : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
r
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030360
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
f
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030409

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU?@2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????>2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????>*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Y?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????>2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????>2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????>2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>:W S
/
_output_shapes
:?????????>
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
F
input_93:
serving_default_input_93:0?????????? 
F
input_94:
serving_default_input_94:0?????????? =
	lambda_300
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?n
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?l
_tf_keras_network?k{"name": "model_61", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_61", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_93"}, "name": "input_93", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_94"}, "name": "input_94", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "model_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_92"}, "name": "input_92", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_92", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_62", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.85, "noise_shape": null, "seed": null}, "name": "dropout_58", "inbound_nodes": [[["average_pooling2d_62", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["dropout_58", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_63", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.35, "noise_shape": null, "seed": null}, "name": "dropout_59", "inbound_nodes": [[["average_pooling2d_63", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_31", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_31", "inbound_nodes": [[["dropout_59", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["flatten_31", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}], "input_layers": [["input_92", 0, 0]], "output_layers": [["dense_61", 0, 0]]}, "name": "model_60", "inbound_nodes": [[["input_93", 0, 0, {}]], [["input_94", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_30", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAcAAABDAAAAczgAAAB8AFwCfQF9AnQAagF0AKACfAF8AhgAoQFkAWQCZAON\nA30DdACgA3QAoAR8A3QAoAWhAKECoQFTACkETukBAAAAVCkC2gRheGlz2ghrZWVwZGltcykG2gFL\n2gNzdW3aBnNxdWFyZdoEc3FydNoHbWF4aW11bdoHZXBzaWxvbikE2gV2ZWN0c9oBeNoBedoKc3Vt\nX3NxdWFyZakAcg4AAAD6IDxpcHl0aG9uLWlucHV0LTU4OS0zMzZjZWM0YzMwYTA+2gpldWNsaWRf\nZGlzAQAAAHMGAAAAAAEIARoB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAwAAAAIAAABDAAAAcxQAAAB8AFwCfQF9AnwBZAEZAGQCZgJTACkDTukAAAAA6QEA\nAACpACkD2gZzaGFwZXPaBnNoYXBlMdoGc2hhcGUycgMAAAByAwAAAPogPGlweXRob24taW5wdXQt\nNTg5LTMzNmNlYzRjMzBhMD7aFmV1Y2xfZGlzdF9vdXRwdXRfc2hhcGUGAAAAcwQAAAAAAQgB\n", null, null]}, "output_shape_type": "lambda", "output_shape_module": "__main__", "arguments": {}}, "name": "lambda_30", "inbound_nodes": [[["model_60", 1, 0, {}], ["model_60", 2, 0, {}]]]}], "input_layers": [["input_93", 0, 0], ["input_94", 0, 0]], "output_layers": [["lambda_30", 0, 0]]}, "shared_object_id": 23, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 32, 1]}, {"class_name": "TensorShape", "items": [null, 128, 32, 1]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 32, 1]}, "float32", "input_93"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 32, 1]}, "float32", "input_94"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_61", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_93"}, "name": "input_93", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_94"}, "name": "input_94", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Functional", "config": {"name": "model_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_92"}, "name": "input_92", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_92", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_62", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.85, "noise_shape": null, "seed": null}, "name": "dropout_58", "inbound_nodes": [[["average_pooling2d_62", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["dropout_58", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_63", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.35, "noise_shape": null, "seed": null}, "name": "dropout_59", "inbound_nodes": [[["average_pooling2d_63", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_31", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_31", "inbound_nodes": [[["dropout_59", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["flatten_31", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}], "input_layers": [["input_92", 0, 0]], "output_layers": [["dense_61", 0, 0]]}, "name": "model_60", "inbound_nodes": [[["input_93", 0, 0, {}]], [["input_94", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Lambda", "config": {"name": "lambda_30", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAcAAABDAAAAczgAAAB8AFwCfQF9AnQAagF0AKACfAF8AhgAoQFkAWQCZAON\nA30DdACgA3QAoAR8A3QAoAWhAKECoQFTACkETukBAAAAVCkC2gRheGlz2ghrZWVwZGltcykG2gFL\n2gNzdW3aBnNxdWFyZdoEc3FydNoHbWF4aW11bdoHZXBzaWxvbikE2gV2ZWN0c9oBeNoBedoKc3Vt\nX3NxdWFyZakAcg4AAAD6IDxpcHl0aG9uLWlucHV0LTU4OS0zMzZjZWM0YzMwYTA+2gpldWNsaWRf\nZGlzAQAAAHMGAAAAAAEIARoB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAwAAAAIAAABDAAAAcxQAAAB8AFwCfQF9AnwBZAEZAGQCZgJTACkDTukAAAAA6QEA\nAACpACkD2gZzaGFwZXPaBnNoYXBlMdoGc2hhcGUycgMAAAByAwAAAPogPGlweXRob24taW5wdXQt\nNTg5LTMzNmNlYzRjMzBhMD7aFmV1Y2xfZGlzdF9vdXRwdXRfc2hhcGUGAAAAcwQAAAAAAQgB\n", null, null]}, "output_shape_type": "lambda", "output_shape_module": "__main__", "arguments": {}}, "name": "lambda_30", "inbound_nodes": [[["model_60", 1, 0, {}], ["model_60", 2, 0, {}]]], "shared_object_id": 22}], "input_layers": [["input_93", 0, 0], ["input_94", 0, 0]], "output_layers": [["lambda_30", 0, 0]]}}, "training_config": {"loss": "contrastive_loss", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "accuracy"}, "shared_object_id": 26}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_93", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_93"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_94", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_94"}}
?O
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
layer_with_weights-2
layer-8
layer_with_weights-3
layer-9
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?M
_tf_keras_network?L{"name": "model_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_92"}, "name": "input_92", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_92", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_62", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.85, "noise_shape": null, "seed": null}, "name": "dropout_58", "inbound_nodes": [[["average_pooling2d_62", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["dropout_58", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_63", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.35, "noise_shape": null, "seed": null}, "name": "dropout_59", "inbound_nodes": [[["average_pooling2d_63", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_31", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_31", "inbound_nodes": [[["dropout_59", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["flatten_31", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}], "input_layers": [["input_92", 0, 0]], "output_layers": [["dense_61", 0, 0]]}, "inbound_nodes": [[["input_93", 0, 0, {}]], [["input_94", 0, 0, {}]]], "shared_object_id": 21, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 32, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 32, 1]}, "float32", "input_92"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_92"}, "name": "input_92", "inbound_nodes": [], "shared_object_id": 2}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_92", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_62", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.85, "noise_shape": null, "seed": null}, "name": "dropout_58", "inbound_nodes": [[["average_pooling2d_62", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["dropout_58", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_63", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.35, "noise_shape": null, "seed": null}, "name": "dropout_59", "inbound_nodes": [[["average_pooling2d_63", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Flatten", "config": {"name": "flatten_31", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_31", "inbound_nodes": [[["dropout_59", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["flatten_31", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]], "shared_object_id": 20}], "input_layers": [["input_92", 0, 0]], "output_layers": [["dense_61", 0, 0]]}}}
?

trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "lambda_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_30", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAcAAABDAAAAczgAAAB8AFwCfQF9AnQAagF0AKACfAF8AhgAoQFkAWQCZAON\nA30DdACgA3QAoAR8A3QAoAWhAKECoQFTACkETukBAAAAVCkC2gRheGlz2ghrZWVwZGltcykG2gFL\n2gNzdW3aBnNxdWFyZdoEc3FydNoHbWF4aW11bdoHZXBzaWxvbikE2gV2ZWN0c9oBeNoBedoKc3Vt\nX3NxdWFyZakAcg4AAAD6IDxpcHl0aG9uLWlucHV0LTU4OS0zMzZjZWM0YzMwYTA+2gpldWNsaWRf\nZGlzAQAAAHMGAAAAAAEIARoB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAwAAAAIAAABDAAAAcxQAAAB8AFwCfQF9AnwBZAEZAGQCZgJTACkDTukAAAAA6QEA\nAACpACkD2gZzaGFwZXPaBnNoYXBlMdoGc2hhcGUycgMAAAByAwAAAPogPGlweXRob24taW5wdXQt\nNTg5LTMzNmNlYzRjMzBhMD7aFmV1Y2xfZGlzdF9vdXRwdXRfc2hhcGUGAAAAcwQAAAAAAQgB\n", null, null]}, "output_shape_type": "lambda", "output_shape_module": "__main__", "arguments": {}}, "inbound_nodes": [[["model_60", 1, 0, {}], ["model_60", 2, 0, {}]]], "shared_object_id": 22}
?
iter

beta_1

beta_2
	 decay
!learning_rate"m?#m?$m?%m?&m?'m?(m?)m?"v?#v?$v?%v?&v?'v?(v?)v?"
	optimizer
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*layer_metrics

+layers
,metrics
-non_trainable_variables
.layer_regularization_losses
trainable_variables
	variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_92", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_92"}}
?


"kernel
#bias
/trainable_variables
0	variables
1regularization_losses
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_92", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 32, 1]}}
?
3trainable_variables
4	variables
5regularization_losses
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "average_pooling2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_62", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 29}}
?
7trainable_variables
8	variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.85, "noise_shape": null, "seed": null}, "inbound_nodes": [[["average_pooling2d_62", 0, 0, {}]]], "shared_object_id": 7}
?

$kernel
%bias
;trainable_variables
<	variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_58", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 14, 4]}}
?
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "average_pooling2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_63", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 31}}
?
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_59", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.35, "noise_shape": null, "seed": null}, "inbound_nodes": [[["average_pooling2d_63", 0, 0, {}]]], "shared_object_id": 12}
?
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_31", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dropout_59", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 32}}
?	

&kernel
'bias
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_31", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1160}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1160]}}
?	

(kernel
)bias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_60", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Slayer_metrics

Tlayers
Umetrics
Vnon_trainable_variables
Wlayer_regularization_losses
trainable_variables
	variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xlayer_metrics
Ymetrics

Zlayers
[non_trainable_variables
\layer_regularization_losses
trainable_variables
	variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:(2conv2d_62/kernel
:2conv2d_62/bias
*:(2conv2d_63/kernel
:2conv2d_63/bias
": 	?	2dense_60/kernel
:2dense_60/bias
!:2dense_61/kernel
:2dense_61/bias
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_layer_metrics
`metrics

alayers
bnon_trainable_variables
clayer_regularization_losses
/trainable_variables
0	variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
dlayer_metrics
emetrics

flayers
gnon_trainable_variables
hlayer_regularization_losses
3trainable_variables
4	variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ilayer_metrics
jmetrics

klayers
lnon_trainable_variables
mlayer_regularization_losses
7trainable_variables
8	variables
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
nlayer_metrics
ometrics

players
qnon_trainable_variables
rlayer_regularization_losses
;trainable_variables
<	variables
=regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
slayer_metrics
tmetrics

ulayers
vnon_trainable_variables
wlayer_regularization_losses
?trainable_variables
@	variables
Aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xlayer_metrics
ymetrics

zlayers
{non_trainable_variables
|layer_regularization_losses
Ctrainable_variables
D	variables
Eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
}layer_metrics
~metrics

layers
?non_trainable_variables
 ?layer_regularization_losses
Gtrainable_variables
H	variables
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?layer_metrics
?metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Ktrainable_variables
L	variables
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Otrainable_variables
P	variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 35}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "accuracy"}, "shared_object_id": 26}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-2Adam/conv2d_62/kernel/m
!:2Adam/conv2d_62/bias/m
/:-2Adam/conv2d_63/kernel/m
!:2Adam/conv2d_63/bias/m
':%	?	2Adam/dense_60/kernel/m
 :2Adam/dense_60/bias/m
&:$2Adam/dense_61/kernel/m
 :2Adam/dense_61/bias/m
/:-2Adam/conv2d_62/kernel/v
!:2Adam/conv2d_62/bias/v
/:-2Adam/conv2d_63/kernel/v
!:2Adam/conv2d_63/bias/v
':%	?	2Adam/dense_60/kernel/v
 :2Adam/dense_60/bias/v
&:$2Adam/dense_61/kernel/v
 :2Adam/dense_61/bias/v
?2?
E__inference_model_61_layer_call_and_return_conditional_losses_1030030
E__inference_model_61_layer_call_and_return_conditional_losses_1030138
E__inference_model_61_layer_call_and_return_conditional_losses_1029876
E__inference_model_61_layer_call_and_return_conditional_losses_1029914?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1029215?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *b?_
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
?2?
*__inference_model_61_layer_call_fn_1029707
*__inference_model_61_layer_call_fn_1030160
*__inference_model_61_layer_call_fn_1030182
*__inference_model_61_layer_call_fn_1029838?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_60_layer_call_and_return_conditional_losses_1030232
E__inference_model_60_layer_call_and_return_conditional_losses_1030290
E__inference_model_60_layer_call_and_return_conditional_losses_1029595
E__inference_model_60_layer_call_and_return_conditional_losses_1029630?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_model_60_layer_call_fn_1029370
*__inference_model_60_layer_call_fn_1030311
*__inference_model_60_layer_call_fn_1030332
*__inference_model_60_layer_call_fn_1029560?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030346
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030360?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lambda_30_layer_call_fn_1030366
+__inference_lambda_30_layer_call_fn_1030372?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_signature_wrapper_1029950input_93input_94"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_62_layer_call_and_return_conditional_losses_1030383?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_62_layer_call_fn_1030392?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_1029221?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
6__inference_average_pooling2d_62_layer_call_fn_1029227?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030397
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030409?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_58_layer_call_fn_1030414
,__inference_dropout_58_layer_call_fn_1030419?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_63_layer_call_and_return_conditional_losses_1030430?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_63_layer_call_fn_1030439?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_1029233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
6__inference_average_pooling2d_63_layer_call_fn_1029239?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030444
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030456?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_59_layer_call_fn_1030461
,__inference_dropout_59_layer_call_fn_1030466?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_flatten_31_layer_call_and_return_conditional_losses_1030472?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_31_layer_call_fn_1030477?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_60_layer_call_and_return_conditional_losses_1030500?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_60_layer_call_fn_1030509?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_61_layer_call_and_return_conditional_losses_1030520?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_61_layer_call_fn_1030529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_1030540?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ?
"__inference__wrapped_model_1029215?"#$%&'()l?i
b?_
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
? "5?2
0
	lambda_30#? 
	lambda_30??????????
Q__inference_average_pooling2d_62_layer_call_and_return_conditional_losses_1029221?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
6__inference_average_pooling2d_62_layer_call_fn_1029227?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
Q__inference_average_pooling2d_63_layer_call_and_return_conditional_losses_1029233?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
6__inference_average_pooling2d_63_layer_call_fn_1029239?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
F__inference_conv2d_62_layer_call_and_return_conditional_losses_1030383m"#8?5
.?+
)?&
inputs?????????? 
? "-?*
#? 
0?????????|
? ?
+__inference_conv2d_62_layer_call_fn_1030392`"#8?5
.?+
)?&
inputs?????????? 
? " ??????????|?
F__inference_conv2d_63_layer_call_and_return_conditional_losses_1030430l$%7?4
-?*
(?%
inputs?????????>
? "-?*
#? 
0?????????:

? ?
+__inference_conv2d_63_layer_call_fn_1030439_$%7?4
-?*
(?%
inputs?????????>
? " ??????????:
?
E__inference_dense_60_layer_call_and_return_conditional_losses_1030500]&'0?-
&?#
!?
inputs??????????	
? "%?"
?
0?????????
? ~
*__inference_dense_60_layer_call_fn_1030509P&'0?-
&?#
!?
inputs??????????	
? "???????????
E__inference_dense_61_layer_call_and_return_conditional_losses_1030520\()/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_61_layer_call_fn_1030529O()/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030397l;?8
1?.
(?%
inputs?????????>
p 
? "-?*
#? 
0?????????>
? ?
G__inference_dropout_58_layer_call_and_return_conditional_losses_1030409l;?8
1?.
(?%
inputs?????????>
p
? "-?*
#? 
0?????????>
? ?
,__inference_dropout_58_layer_call_fn_1030414_;?8
1?.
(?%
inputs?????????>
p 
? " ??????????>?
,__inference_dropout_58_layer_call_fn_1030419_;?8
1?.
(?%
inputs?????????>
p
? " ??????????>?
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030444l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
G__inference_dropout_59_layer_call_and_return_conditional_losses_1030456l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
,__inference_dropout_59_layer_call_fn_1030461_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
,__inference_dropout_59_layer_call_fn_1030466_;?8
1?.
(?%
inputs?????????
p
? " ???????????
G__inference_flatten_31_layer_call_and_return_conditional_losses_1030472a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????	
? ?
,__inference_flatten_31_layer_call_fn_1030477T7?4
-?*
(?%
inputs?????????
? "???????????	?
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030346?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????

 
p 
? "%?"
?
0?????????
? ?
F__inference_lambda_30_layer_call_and_return_conditional_losses_1030360?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????

 
p
? "%?"
?
0?????????
? ?
+__inference_lambda_30_layer_call_fn_1030366~b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????

 
p 
? "???????????
+__inference_lambda_30_layer_call_fn_1030372~b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????

 
p
? "??????????<
__inference_loss_fn_0_1030540&?

? 
? "? ?
E__inference_model_60_layer_call_and_return_conditional_losses_1029595u"#$%&'()B??
8?5
+?(
input_92?????????? 
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_60_layer_call_and_return_conditional_losses_1029630u"#$%&'()B??
8?5
+?(
input_92?????????? 
p

 
? "%?"
?
0?????????
? ?
E__inference_model_60_layer_call_and_return_conditional_losses_1030232s"#$%&'()@?=
6?3
)?&
inputs?????????? 
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_60_layer_call_and_return_conditional_losses_1030290s"#$%&'()@?=
6?3
)?&
inputs?????????? 
p

 
? "%?"
?
0?????????
? ?
*__inference_model_60_layer_call_fn_1029370h"#$%&'()B??
8?5
+?(
input_92?????????? 
p 

 
? "???????????
*__inference_model_60_layer_call_fn_1029560h"#$%&'()B??
8?5
+?(
input_92?????????? 
p

 
? "???????????
*__inference_model_60_layer_call_fn_1030311f"#$%&'()@?=
6?3
)?&
inputs?????????? 
p 

 
? "???????????
*__inference_model_60_layer_call_fn_1030332f"#$%&'()@?=
6?3
)?&
inputs?????????? 
p

 
? "???????????
E__inference_model_61_layer_call_and_return_conditional_losses_1029876?"#$%&'()t?q
j?g
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_61_layer_call_and_return_conditional_losses_1029914?"#$%&'()t?q
j?g
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
p

 
? "%?"
?
0?????????
? ?
E__inference_model_61_layer_call_and_return_conditional_losses_1030030?"#$%&'()t?q
j?g
]?Z
+?(
inputs/0?????????? 
+?(
inputs/1?????????? 
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_61_layer_call_and_return_conditional_losses_1030138?"#$%&'()t?q
j?g
]?Z
+?(
inputs/0?????????? 
+?(
inputs/1?????????? 
p

 
? "%?"
?
0?????????
? ?
*__inference_model_61_layer_call_fn_1029707?"#$%&'()t?q
j?g
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
p 

 
? "???????????
*__inference_model_61_layer_call_fn_1029838?"#$%&'()t?q
j?g
]?Z
+?(
input_93?????????? 
+?(
input_94?????????? 
p

 
? "???????????
*__inference_model_61_layer_call_fn_1030160?"#$%&'()t?q
j?g
]?Z
+?(
inputs/0?????????? 
+?(
inputs/1?????????? 
p 

 
? "???????????
*__inference_model_61_layer_call_fn_1030182?"#$%&'()t?q
j?g
]?Z
+?(
inputs/0?????????? 
+?(
inputs/1?????????? 
p

 
? "???????????
%__inference_signature_wrapper_1029950?"#$%&'()?|
? 
u?r
7
input_93+?(
input_93?????????? 
7
input_94+?(
input_94?????????? "5?2
0
	lambda_30#? 
	lambda_30?????????