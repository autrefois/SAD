��
��
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:*
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
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_1426399

NoOpNoOp
�M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�M
value�MB�M B�L
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures*
J
0
1
2
3
4
5
6
7
8
9*
J
0
1
2
3
4
5
6
7
8
9*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
 trace_1
!trace_2
"trace_3* 
* 
�
#layer_with_weights-0
#layer-0
$layer_with_weights-1
$layer-1
%layer_with_weights-2
%layer-2
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
�
,layer_with_weights-0
,layer-0
-layer_with_weights-1
-layer-1
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
�
4iter

5beta_1

6beta_2
	7decay
8learning_ratem�m�m�m�m�m�m�m�m�m�v�v�v�v�v�v�v�v�v�v�*

9serving_default* 
NH
VARIABLE_VALUEdense_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_5/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_6/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_6/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_7/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_7/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_8/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_8/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_9/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_9/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*

:0
;1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
bias*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
6
Strace_0
Ttrace_1
Utrace_2
Vtrace_3* 
6
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3* 
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
8
t	variables
u	keras_api
	vtotal
	wcount*
H
x	variables
y	keras_api
	ztotal
	{count
|
_fn_kwargs*

0
1*

0
1*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
�activity_regularizer_fn
*G&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
�activity_regularizer_fn
*M&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

#0
$1
%2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
�activity_regularizer_fn
*`&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

,0
-1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

v0
w1*

t	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

x	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
qk
VARIABLE_VALUEAdam/dense_5/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_5/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_6/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_6/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_7/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_7/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_8/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_8/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_9/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_9/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_5/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_5/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_6/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_6/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_7/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_7/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_8/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_8/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_9/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_9/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_1427114
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v*3
Tin,
*2(*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_1427241�
�
�
H__inference_dense_7_layer_call_and_return_all_conditional_losses_1426912

inputs
unknown:
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_7_activity_regularizer_1425589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426810

inputs8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity

identity_1��dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
dense_8/MatMulMatMulinputs%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_8/TanhTanhdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_8/ActivityRegularizer/AbsAbsdense_8/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_8/ActivityRegularizer/SumSum#dense_8/ActivityRegularizer/Abs:y:0*dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_8/ActivityRegularizer/mulMul*dense_8/ActivityRegularizer/mul/x:output:0(dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_8/ActivityRegularizer/ShapeShapedense_8/Tanh:y:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv#dense_8/ActivityRegularizer/mul:z:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_9/MatMulMatMuldense_8/Tanh:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_9/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
G
0__inference_dense_7_activity_regularizer_1425589
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������D
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�
�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426334
input_1&
sequential_2_1426305:"
sequential_2_1426307:&
sequential_2_1426309:"
sequential_2_1426311:&
sequential_2_1426313:"
sequential_2_1426315:&
sequential_3_1426320:"
sequential_3_1426322:&
sequential_3_1426324:"
sequential_3_1426326:
identity

identity_1

identity_2

identity_3��$sequential_2/StatefulPartitionedCall�$sequential_3/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_1426305sequential_2_1426307sequential_2_1426309sequential_2_1426311sequential_2_1426313sequential_2_1426315*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425666�
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_1426320sequential_3_1426322sequential_3_1426324sequential_3_1426326*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1425969|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m

Identity_1Identity-sequential_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_2Identity-sequential_2/StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: m

Identity_3Identity-sequential_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426366
input_1&
sequential_2_1426337:"
sequential_2_1426339:&
sequential_2_1426341:"
sequential_2_1426343:&
sequential_2_1426345:"
sequential_2_1426347:&
sequential_3_1426352:"
sequential_3_1426354:&
sequential_3_1426356:"
sequential_3_1426358:
identity

identity_1

identity_2

identity_3��$sequential_2/StatefulPartitionedCall�$sequential_3/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_1426337sequential_2_1426339sequential_2_1426341sequential_2_1426343sequential_2_1426345sequential_2_1426347*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425795�
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_1426352sequential_3_1426354sequential_3_1426356sequential_3_1426358*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426052|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m

Identity_1Identity-sequential_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_2Identity-sequential_2/StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: m

Identity_3Identity-sequential_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
.__inference_sequential_2_layer_call_fn_1426630

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425666o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
ʗ
�
#__inference__traced_restore_1427241
file_prefix1
assignvariableop_dense_5_kernel:-
assignvariableop_1_dense_5_bias:3
!assignvariableop_2_dense_6_kernel:-
assignvariableop_3_dense_6_bias:3
!assignvariableop_4_dense_7_kernel:-
assignvariableop_5_dense_7_bias:3
!assignvariableop_6_dense_8_kernel:-
assignvariableop_7_dense_8_bias:3
!assignvariableop_8_dense_9_kernel:-
assignvariableop_9_dense_9_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: ;
)assignvariableop_19_adam_dense_5_kernel_m:5
'assignvariableop_20_adam_dense_5_bias_m:;
)assignvariableop_21_adam_dense_6_kernel_m:5
'assignvariableop_22_adam_dense_6_bias_m:;
)assignvariableop_23_adam_dense_7_kernel_m:5
'assignvariableop_24_adam_dense_7_bias_m:;
)assignvariableop_25_adam_dense_8_kernel_m:5
'assignvariableop_26_adam_dense_8_bias_m:;
)assignvariableop_27_adam_dense_9_kernel_m:5
'assignvariableop_28_adam_dense_9_bias_m:;
)assignvariableop_29_adam_dense_5_kernel_v:5
'assignvariableop_30_adam_dense_5_bias_v:;
)assignvariableop_31_adam_dense_6_kernel_v:5
'assignvariableop_32_adam_dense_6_bias_v:;
)assignvariableop_33_adam_dense_7_kernel_v:5
'assignvariableop_34_adam_dense_7_bias_v:;
)assignvariableop_35_adam_dense_8_kernel_v:5
'assignvariableop_36_adam_dense_8_bias_v:;
)assignvariableop_37_adam_dense_9_kernel_v:5
'assignvariableop_38_adam_dense_9_bias_v:
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_8_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_9_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_9_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_5_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_5_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_6_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_6_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_7_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_7_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_8_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_8_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_9_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_9_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_5_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_5_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_6_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_7_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_7_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_9_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_9_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
�	
�
%__inference_signature_wrapper_1426399
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_1425563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�+
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425666

inputs!
dense_5_1425608:
dense_5_1425610:!
dense_6_1425625:
dense_6_1425627:!
dense_7_1425650:
dense_7_1425652:
identity

identity_1

identity_2��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_1425608dense_5_1425610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1425625dense_6_1425627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624�
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_6_activity_regularizer_1425576y
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1425650dense_7_1425652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649�
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_7_activity_regularizer_1425589y
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�9
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426751

inputs8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity

identity_1

identity_2��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_6/ActivityRegularizer/AbsAbsdense_6/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_6/ActivityRegularizer/ShapeShapedense_6/Tanh:y:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_7/MatMulMatMuldense_6/Tanh:y:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_7/ActivityRegularizer/AbsAbsdense_7/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/ActivityRegularizer/SumSum#dense_7/ActivityRegularizer/Abs:y:0*dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_7/ActivityRegularizer/mulMul*dense_7/ActivityRegularizer/mul/x:output:0(dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_7/ActivityRegularizer/ShapeShapedense_7/Tanh:y:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv#dense_7/ActivityRegularizer/mul:z:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: _
IdentityIdentitydense_7/Tanh:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426052

inputs!
dense_8_1426032:
dense_8_1426034:!
dense_9_1426045:
dense_9_1426047:
identity

identity_1��dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_1426032dense_8_1426034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936�
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_8_activity_regularizer_1425918y
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1426045dense_9_1426047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426124
dense_8_input!
dense_8_1426104:
dense_8_1426106:!
dense_9_1426117:
dense_9_1426119:
identity

identity_1��dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_1426104dense_8_1426106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936�
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_8_activity_regularizer_1425918y
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1426117dense_9_1426119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_8_input
�
�
H__inference_dense_6_layer_call_and_return_all_conditional_losses_1426881

inputs
unknown:
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_6_activity_regularizer_1425576o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_2_layer_call_fn_1426649

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_6_layer_call_and_return_conditional_losses_1426892

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_2_layer_call_fn_1425683
dense_5_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425666o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_5_input
�
�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426248
x&
sequential_2_1426219:"
sequential_2_1426221:&
sequential_2_1426223:"
sequential_2_1426225:&
sequential_2_1426227:"
sequential_2_1426229:&
sequential_3_1426234:"
sequential_3_1426236:&
sequential_3_1426238:"
sequential_3_1426240:
identity

identity_1

identity_2

identity_3��$sequential_2/StatefulPartitionedCall�$sequential_3/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallxsequential_2_1426219sequential_2_1426221sequential_2_1426223sequential_2_1426225sequential_2_1426227sequential_2_1426229*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425795�
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_1426234sequential_3_1426236sequential_3_1426238sequential_3_1426240*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426052|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m

Identity_1Identity-sequential_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_2Identity-sequential_2/StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: m

Identity_3Identity-sequential_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex
��
�
"__inference__wrapped_model_1425563
input_1V
Dfraud_detector_1_sequential_2_dense_5_matmul_readvariableop_resource:S
Efraud_detector_1_sequential_2_dense_5_biasadd_readvariableop_resource:V
Dfraud_detector_1_sequential_2_dense_6_matmul_readvariableop_resource:S
Efraud_detector_1_sequential_2_dense_6_biasadd_readvariableop_resource:V
Dfraud_detector_1_sequential_2_dense_7_matmul_readvariableop_resource:S
Efraud_detector_1_sequential_2_dense_7_biasadd_readvariableop_resource:V
Dfraud_detector_1_sequential_3_dense_8_matmul_readvariableop_resource:S
Efraud_detector_1_sequential_3_dense_8_biasadd_readvariableop_resource:V
Dfraud_detector_1_sequential_3_dense_9_matmul_readvariableop_resource:S
Efraud_detector_1_sequential_3_dense_9_biasadd_readvariableop_resource:
identity��<fraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOp�;fraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOp�<fraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOp�;fraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOp�<fraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOp�;fraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOp�<fraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOp�;fraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOp�<fraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOp�;fraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOp�
;fraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOpDfraud_detector_1_sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
,fraud_detector_1/sequential_2/dense_5/MatMulMatMulinput_1Cfraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<fraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOpEfraud_detector_1_sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-fraud_detector_1/sequential_2/dense_5/BiasAddBiasAdd6fraud_detector_1/sequential_2/dense_5/MatMul:product:0Dfraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*fraud_detector_1/sequential_2/dense_5/ReluRelu6fraud_detector_1/sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:����������
;fraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOpDfraud_detector_1_sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
,fraud_detector_1/sequential_2/dense_6/MatMulMatMul8fraud_detector_1/sequential_2/dense_5/Relu:activations:0Cfraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<fraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOpEfraud_detector_1_sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-fraud_detector_1/sequential_2/dense_6/BiasAddBiasAdd6fraud_detector_1/sequential_2/dense_6/MatMul:product:0Dfraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*fraud_detector_1/sequential_2/dense_6/TanhTanh6fraud_detector_1/sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:����������
=fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/AbsAbs.fraud_detector_1/sequential_2/dense_6/Tanh:y:0*
T0*'
_output_shapes
:����������
?fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
=fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/SumSumAfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/Abs:y:0Hfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
=fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/mulMulHfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/mul/x:output:0Ffraud_detector_1/sequential_2/dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/ShapeShape.fraud_detector_1/sequential_2/dense_6/Tanh:y:0*
T0*
_output_shapes
:�
Mfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ofraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ofraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_sliceStridedSliceHfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/Shape:output:0Vfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stack:output:0Xfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1:output:0Xfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>fraud_detector_1/sequential_2/dense_6/ActivityRegularizer/CastCastPfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Afraud_detector_1/sequential_2/dense_6/ActivityRegularizer/truedivRealDivAfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/mul:z:0Bfraud_detector_1/sequential_2/dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
;fraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOpDfraud_detector_1_sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
,fraud_detector_1/sequential_2/dense_7/MatMulMatMul.fraud_detector_1/sequential_2/dense_6/Tanh:y:0Cfraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<fraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOpEfraud_detector_1_sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-fraud_detector_1/sequential_2/dense_7/BiasAddBiasAdd6fraud_detector_1/sequential_2/dense_7/MatMul:product:0Dfraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*fraud_detector_1/sequential_2/dense_7/TanhTanh6fraud_detector_1/sequential_2/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:����������
=fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/AbsAbs.fraud_detector_1/sequential_2/dense_7/Tanh:y:0*
T0*'
_output_shapes
:����������
?fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
=fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/SumSumAfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/Abs:y:0Hfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
=fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/mulMulHfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/mul/x:output:0Ffraud_detector_1/sequential_2/dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/ShapeShape.fraud_detector_1/sequential_2/dense_7/Tanh:y:0*
T0*
_output_shapes
:�
Mfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ofraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ofraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_sliceStridedSliceHfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/Shape:output:0Vfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stack:output:0Xfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1:output:0Xfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>fraud_detector_1/sequential_2/dense_7/ActivityRegularizer/CastCastPfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Afraud_detector_1/sequential_2/dense_7/ActivityRegularizer/truedivRealDivAfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/mul:z:0Bfraud_detector_1/sequential_2/dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
;fraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOpReadVariableOpDfraud_detector_1_sequential_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
,fraud_detector_1/sequential_3/dense_8/MatMulMatMul.fraud_detector_1/sequential_2/dense_7/Tanh:y:0Cfraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<fraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOpReadVariableOpEfraud_detector_1_sequential_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-fraud_detector_1/sequential_3/dense_8/BiasAddBiasAdd6fraud_detector_1/sequential_3/dense_8/MatMul:product:0Dfraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*fraud_detector_1/sequential_3/dense_8/TanhTanh6fraud_detector_1/sequential_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:����������
=fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/AbsAbs.fraud_detector_1/sequential_3/dense_8/Tanh:y:0*
T0*'
_output_shapes
:����������
?fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
=fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/SumSumAfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/Abs:y:0Hfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
=fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/mulMulHfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/mul/x:output:0Ffraud_detector_1/sequential_3/dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
?fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/ShapeShape.fraud_detector_1/sequential_3/dense_8/Tanh:y:0*
T0*
_output_shapes
:�
Mfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ofraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ofraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_sliceStridedSliceHfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/Shape:output:0Vfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stack:output:0Xfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1:output:0Xfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>fraud_detector_1/sequential_3/dense_8/ActivityRegularizer/CastCastPfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Afraud_detector_1/sequential_3/dense_8/ActivityRegularizer/truedivRealDivAfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/mul:z:0Bfraud_detector_1/sequential_3/dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
;fraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOpReadVariableOpDfraud_detector_1_sequential_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
,fraud_detector_1/sequential_3/dense_9/MatMulMatMul.fraud_detector_1/sequential_3/dense_8/Tanh:y:0Cfraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<fraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpEfraud_detector_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-fraud_detector_1/sequential_3/dense_9/BiasAddBiasAdd6fraud_detector_1/sequential_3/dense_9/MatMul:product:0Dfraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*fraud_detector_1/sequential_3/dense_9/ReluRelu6fraud_detector_1/sequential_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity8fraud_detector_1/sequential_3/dense_9/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp=^fraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOp<^fraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOp=^fraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOp<^fraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOp=^fraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOp<^fraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOp=^fraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOp<^fraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOp=^fraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOp<^fraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2|
<fraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOp<fraud_detector_1/sequential_2/dense_5/BiasAdd/ReadVariableOp2z
;fraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOp;fraud_detector_1/sequential_2/dense_5/MatMul/ReadVariableOp2|
<fraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOp<fraud_detector_1/sequential_2/dense_6/BiasAdd/ReadVariableOp2z
;fraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOp;fraud_detector_1/sequential_2/dense_6/MatMul/ReadVariableOp2|
<fraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOp<fraud_detector_1/sequential_2/dense_7/BiasAdd/ReadVariableOp2z
;fraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOp;fraud_detector_1/sequential_2/dense_7/MatMul/ReadVariableOp2|
<fraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOp<fraud_detector_1/sequential_3/dense_8/BiasAdd/ReadVariableOp2z
;fraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOp;fraud_detector_1/sequential_3/dense_8/MatMul/ReadVariableOp2|
<fraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOp<fraud_detector_1/sequential_3/dense_9/BiasAdd/ReadVariableOp2z
;fraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOp;fraud_detector_1/sequential_3/dense_9/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426101
dense_8_input!
dense_8_1426081:
dense_8_1426083:!
dense_9_1426094:
dense_9_1426096:
identity

identity_1��dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_1426081dense_8_1426083*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936�
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_8_activity_regularizer_1425918y
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1426094dense_9_1426096*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_8_input
�

�
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
2__inference_fraud_detector_1_layer_call_fn_1426186
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426160
x&
sequential_2_1426131:"
sequential_2_1426133:&
sequential_2_1426135:"
sequential_2_1426137:&
sequential_2_1426139:"
sequential_2_1426141:&
sequential_3_1426146:"
sequential_3_1426148:&
sequential_3_1426150:"
sequential_3_1426152:
identity

identity_1

identity_2

identity_3��$sequential_2/StatefulPartitionedCall�$sequential_3/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallxsequential_2_1426131sequential_2_1426133sequential_2_1426135sequential_2_1426137sequential_2_1426139sequential_2_1426141*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425666�
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_1426146sequential_3_1426148sequential_3_1426150sequential_3_1426152*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1425969|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m

Identity_1Identity-sequential_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_2Identity-sequential_2/StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: m

Identity_3Identity-sequential_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
.__inference_sequential_3_layer_call_fn_1426779

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�+
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425795

inputs!
dense_5_1425761:
dense_5_1425763:!
dense_6_1425766:
dense_6_1425768:!
dense_7_1425779:
dense_7_1425781:
identity

identity_1

identity_2��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_1425761dense_5_1425763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1425766dense_6_1425768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624�
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_6_activity_regularizer_1425576y
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1425779dense_7_1425781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649�
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_7_activity_regularizer_1425589y
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_2_layer_call_fn_1425831
dense_5_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_5_input
�
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1425969

inputs!
dense_8_1425937:
dense_8_1425939:!
dense_9_1425962:
dense_9_1425964:
identity

identity_1��dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_1425937dense_8_1425939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936�
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_8_activity_regularizer_1425918y
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1425962dense_9_1425964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�+
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425905
dense_5_input!
dense_5_1425871:
dense_5_1425873:!
dense_6_1425876:
dense_6_1425878:!
dense_7_1425889:
dense_7_1425891:
identity

identity_1

identity_2��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_1425871dense_5_1425873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1425876dense_6_1425878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624�
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_6_activity_regularizer_1425576y
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1425889dense_7_1425891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649�
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_7_activity_regularizer_1425589y
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_5_input
�
�
)__inference_dense_5_layer_call_fn_1426850

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_3_layer_call_fn_1426765

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1425969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�k
�

M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426611
xE
3sequential_2_dense_5_matmul_readvariableop_resource:B
4sequential_2_dense_5_biasadd_readvariableop_resource:E
3sequential_2_dense_6_matmul_readvariableop_resource:B
4sequential_2_dense_6_biasadd_readvariableop_resource:E
3sequential_2_dense_7_matmul_readvariableop_resource:B
4sequential_2_dense_7_biasadd_readvariableop_resource:E
3sequential_3_dense_8_matmul_readvariableop_resource:B
4sequential_3_dense_8_biasadd_readvariableop_resource:E
3sequential_3_dense_9_matmul_readvariableop_resource:B
4sequential_3_dense_9_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3��+sequential_2/dense_5/BiasAdd/ReadVariableOp�*sequential_2/dense_5/MatMul/ReadVariableOp�+sequential_2/dense_6/BiasAdd/ReadVariableOp�*sequential_2/dense_6/MatMul/ReadVariableOp�+sequential_2/dense_7/BiasAdd/ReadVariableOp�*sequential_2/dense_7/MatMul/ReadVariableOp�+sequential_3/dense_8/BiasAdd/ReadVariableOp�*sequential_3/dense_8/MatMul/ReadVariableOp�+sequential_3/dense_9/BiasAdd/ReadVariableOp�*sequential_3/dense_9/MatMul/ReadVariableOp�
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_5/MatMulMatMulx2sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_5/ReluRelu%sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:����������
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_6/MatMulMatMul'sequential_2/dense_5/Relu:activations:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_6/TanhTanh%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_2/dense_6/ActivityRegularizer/AbsAbssequential_2/dense_6/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_2/dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_2/dense_6/ActivityRegularizer/SumSum0sequential_2/dense_6/ActivityRegularizer/Abs:y:07sequential_2/dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_2/dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_2/dense_6/ActivityRegularizer/mulMul7sequential_2/dense_6/ActivityRegularizer/mul/x:output:05sequential_2/dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_2/dense_6/ActivityRegularizer/ShapeShapesequential_2/dense_6/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_2/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2/dense_6/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_6/ActivityRegularizer/Shape:output:0Esequential_2/dense_6/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_2/dense_6/ActivityRegularizer/CastCast?sequential_2/dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_2/dense_6/ActivityRegularizer/truedivRealDiv0sequential_2/dense_6/ActivityRegularizer/mul:z:01sequential_2/dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_7/MatMulMatMulsequential_2/dense_6/Tanh:y:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_7/TanhTanh%sequential_2/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_2/dense_7/ActivityRegularizer/AbsAbssequential_2/dense_7/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_2/dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_2/dense_7/ActivityRegularizer/SumSum0sequential_2/dense_7/ActivityRegularizer/Abs:y:07sequential_2/dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_2/dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_2/dense_7/ActivityRegularizer/mulMul7sequential_2/dense_7/ActivityRegularizer/mul/x:output:05sequential_2/dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_2/dense_7/ActivityRegularizer/ShapeShapesequential_2/dense_7/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_2/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2/dense_7/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_7/ActivityRegularizer/Shape:output:0Esequential_2/dense_7/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_2/dense_7/ActivityRegularizer/CastCast?sequential_2/dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_2/dense_7/ActivityRegularizer/truedivRealDiv0sequential_2/dense_7/ActivityRegularizer/mul:z:01sequential_2/dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_3/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_3/dense_8/MatMulMatMulsequential_2/dense_7/Tanh:y:02sequential_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_3/dense_8/BiasAddBiasAdd%sequential_3/dense_8/MatMul:product:03sequential_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_3/dense_8/TanhTanh%sequential_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_3/dense_8/ActivityRegularizer/AbsAbssequential_3/dense_8/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_3/dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_3/dense_8/ActivityRegularizer/SumSum0sequential_3/dense_8/ActivityRegularizer/Abs:y:07sequential_3/dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_3/dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_3/dense_8/ActivityRegularizer/mulMul7sequential_3/dense_8/ActivityRegularizer/mul/x:output:05sequential_3/dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_3/dense_8/ActivityRegularizer/ShapeShapesequential_3/dense_8/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_3/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_3/dense_8/ActivityRegularizer/strided_sliceStridedSlice7sequential_3/dense_8/ActivityRegularizer/Shape:output:0Esequential_3/dense_8/ActivityRegularizer/strided_slice/stack:output:0Gsequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_3/dense_8/ActivityRegularizer/CastCast?sequential_3/dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_3/dense_8/ActivityRegularizer/truedivRealDiv0sequential_3/dense_8/ActivityRegularizer/mul:z:01sequential_3/dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_3/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_3/dense_9/MatMulMatMulsequential_3/dense_8/Tanh:y:02sequential_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_3/dense_9/BiasAddBiasAdd%sequential_3/dense_9/MatMul:product:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_3/dense_9/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������t

Identity_1Identity4sequential_2/dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: t

Identity_2Identity4sequential_2/dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4sequential_3/dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_3/dense_8/BiasAdd/ReadVariableOp+^sequential_3/dense_8/MatMul/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp+^sequential_3/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_3/dense_8/BiasAdd/ReadVariableOp+sequential_3/dense_8/BiasAdd/ReadVariableOp2X
*sequential_3/dense_8/MatMul/ReadVariableOp*sequential_3/dense_8/MatMul/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2X
*sequential_3/dense_9/MatMul/ReadVariableOp*sequential_3/dense_9/MatMul/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex
�

�
2__inference_fraud_detector_1_layer_call_fn_1426302
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
D__inference_dense_9_layer_call_and_return_conditional_losses_1426974

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_7_layer_call_and_return_conditional_losses_1426923

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_5_layer_call_and_return_conditional_losses_1426861

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1426943

inputs
unknown:
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_8_activity_regularizer_1425918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
2__inference_fraud_detector_1_layer_call_fn_1426427
x
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex
�L
�
 __inference__traced_save_1427114
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::::: : : : : : : : : ::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
�
�
)__inference_dense_6_layer_call_fn_1426870

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�+
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425868
dense_5_input!
dense_5_1425834:
dense_5_1425836:!
dense_6_1425839:
dense_6_1425841:!
dense_7_1425852:
dense_7_1425854:
identity

identity_1

identity_2��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_1425834dense_5_1425836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1425607�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1425839dense_6_1425841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1425624�
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_6_activity_regularizer_1425576y
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1425852dense_7_1425854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649�
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8� *9
f4R2
0__inference_dense_7_activity_regularizer_1425589y
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_5_input
�
G
0__inference_dense_8_activity_regularizer_1425918
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������D
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�

�
D__inference_dense_8_layer_call_and_return_conditional_losses_1426954

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_9_layer_call_fn_1426963

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1425961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
2__inference_fraud_detector_1_layer_call_fn_1426455
x
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex
�
G
0__inference_dense_6_activity_regularizer_1425576
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������D
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�k
�

M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426533
xE
3sequential_2_dense_5_matmul_readvariableop_resource:B
4sequential_2_dense_5_biasadd_readvariableop_resource:E
3sequential_2_dense_6_matmul_readvariableop_resource:B
4sequential_2_dense_6_biasadd_readvariableop_resource:E
3sequential_2_dense_7_matmul_readvariableop_resource:B
4sequential_2_dense_7_biasadd_readvariableop_resource:E
3sequential_3_dense_8_matmul_readvariableop_resource:B
4sequential_3_dense_8_biasadd_readvariableop_resource:E
3sequential_3_dense_9_matmul_readvariableop_resource:B
4sequential_3_dense_9_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3��+sequential_2/dense_5/BiasAdd/ReadVariableOp�*sequential_2/dense_5/MatMul/ReadVariableOp�+sequential_2/dense_6/BiasAdd/ReadVariableOp�*sequential_2/dense_6/MatMul/ReadVariableOp�+sequential_2/dense_7/BiasAdd/ReadVariableOp�*sequential_2/dense_7/MatMul/ReadVariableOp�+sequential_3/dense_8/BiasAdd/ReadVariableOp�*sequential_3/dense_8/MatMul/ReadVariableOp�+sequential_3/dense_9/BiasAdd/ReadVariableOp�*sequential_3/dense_9/MatMul/ReadVariableOp�
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_5/MatMulMatMulx2sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_5/ReluRelu%sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:����������
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_6/MatMulMatMul'sequential_2/dense_5/Relu:activations:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_6/TanhTanh%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_2/dense_6/ActivityRegularizer/AbsAbssequential_2/dense_6/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_2/dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_2/dense_6/ActivityRegularizer/SumSum0sequential_2/dense_6/ActivityRegularizer/Abs:y:07sequential_2/dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_2/dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_2/dense_6/ActivityRegularizer/mulMul7sequential_2/dense_6/ActivityRegularizer/mul/x:output:05sequential_2/dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_2/dense_6/ActivityRegularizer/ShapeShapesequential_2/dense_6/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_2/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2/dense_6/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_6/ActivityRegularizer/Shape:output:0Esequential_2/dense_6/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_2/dense_6/ActivityRegularizer/CastCast?sequential_2/dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_2/dense_6/ActivityRegularizer/truedivRealDiv0sequential_2/dense_6/ActivityRegularizer/mul:z:01sequential_2/dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_7/MatMulMatMulsequential_2/dense_6/Tanh:y:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_2/dense_7/TanhTanh%sequential_2/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_2/dense_7/ActivityRegularizer/AbsAbssequential_2/dense_7/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_2/dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_2/dense_7/ActivityRegularizer/SumSum0sequential_2/dense_7/ActivityRegularizer/Abs:y:07sequential_2/dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_2/dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_2/dense_7/ActivityRegularizer/mulMul7sequential_2/dense_7/ActivityRegularizer/mul/x:output:05sequential_2/dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_2/dense_7/ActivityRegularizer/ShapeShapesequential_2/dense_7/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_2/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2/dense_7/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_7/ActivityRegularizer/Shape:output:0Esequential_2/dense_7/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_2/dense_7/ActivityRegularizer/CastCast?sequential_2/dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_2/dense_7/ActivityRegularizer/truedivRealDiv0sequential_2/dense_7/ActivityRegularizer/mul:z:01sequential_2/dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_3/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_3/dense_8/MatMulMatMulsequential_2/dense_7/Tanh:y:02sequential_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_3/dense_8/BiasAddBiasAdd%sequential_3/dense_8/MatMul:product:03sequential_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_3/dense_8/TanhTanh%sequential_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,sequential_3/dense_8/ActivityRegularizer/AbsAbssequential_3/dense_8/Tanh:y:0*
T0*'
_output_shapes
:���������
.sequential_3/dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential_3/dense_8/ActivityRegularizer/SumSum0sequential_3/dense_8/ActivityRegularizer/Abs:y:07sequential_3/dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_3/dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
,sequential_3/dense_8/ActivityRegularizer/mulMul7sequential_3/dense_8/ActivityRegularizer/mul/x:output:05sequential_3/dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: {
.sequential_3/dense_8/ActivityRegularizer/ShapeShapesequential_3/dense_8/Tanh:y:0*
T0*
_output_shapes
:�
<sequential_3/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_3/dense_8/ActivityRegularizer/strided_sliceStridedSlice7sequential_3/dense_8/ActivityRegularizer/Shape:output:0Esequential_3/dense_8/ActivityRegularizer/strided_slice/stack:output:0Gsequential_3/dense_8/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_3/dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
-sequential_3/dense_8/ActivityRegularizer/CastCast?sequential_3/dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential_3/dense_8/ActivityRegularizer/truedivRealDiv0sequential_3/dense_8/ActivityRegularizer/mul:z:01sequential_3/dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
*sequential_3/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_3/dense_9/MatMulMatMulsequential_3/dense_8/Tanh:y:02sequential_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_3/dense_9/BiasAddBiasAdd%sequential_3/dense_9/MatMul:product:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_3/dense_9/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������t

Identity_1Identity4sequential_2/dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: t

Identity_2Identity4sequential_2/dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4sequential_3/dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_3/dense_8/BiasAdd/ReadVariableOp+^sequential_3/dense_8/MatMul/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp+^sequential_3/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_3/dense_8/BiasAdd/ReadVariableOp+sequential_3/dense_8/BiasAdd/ReadVariableOp2X
*sequential_3/dense_8/MatMul/ReadVariableOp*sequential_3/dense_8/MatMul/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2X
*sequential_3/dense_9/MatMul/ReadVariableOp*sequential_3/dense_9/MatMul/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex
�"
�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426841

inputs8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity

identity_1��dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
dense_8/MatMulMatMulinputs%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_8/TanhTanhdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_8/ActivityRegularizer/AbsAbsdense_8/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_8/ActivityRegularizer/SumSum#dense_8/ActivityRegularizer/Abs:y:0*dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_8/ActivityRegularizer/mulMul*dense_8/ActivityRegularizer/mul/x:output:0(dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_8/ActivityRegularizer/ShapeShapedense_8/Tanh:y:0*
T0*
_output_shapes
:y
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_8/ActivityRegularizer/truedivRealDiv#dense_8/ActivityRegularizer/mul:z:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_9/MatMulMatMuldense_8/Tanh:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_9/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_8/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_8_layer_call_fn_1426932

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1425936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�9
�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426700

inputs8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity

identity_1

identity_2��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_6/ActivityRegularizer/AbsAbsdense_6/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_6/ActivityRegularizer/ShapeShapedense_6/Tanh:y:0*
T0*
_output_shapes
:y
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_7/MatMulMatMuldense_6/Tanh:y:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
dense_7/ActivityRegularizer/AbsAbsdense_7/Tanh:y:0*
T0*'
_output_shapes
:���������r
!dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/ActivityRegularizer/SumSum#dense_7/ActivityRegularizer/Abs:y:0*dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
dense_7/ActivityRegularizer/mulMul*dense_7/ActivityRegularizer/mul/x:output:0(dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: a
!dense_7/ActivityRegularizer/ShapeShapedense_7/Tanh:y:0*
T0*
_output_shapes
:y
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_7/ActivityRegularizer/truedivRealDiv#dense_7/ActivityRegularizer/mul:z:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: _
IdentityIdentitydense_7/Tanh:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_7_layer_call_fn_1426901

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1425649o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_3_layer_call_fn_1425981
dense_8_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1425969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_8_input
�
�
.__inference_sequential_3_layer_call_fn_1426078
dense_8_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_namedense_8_input"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:ы
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures"
_tf_keras_model
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
2__inference_fraud_detector_1_layer_call_fn_1426186
2__inference_fraud_detector_1_layer_call_fn_1426427
2__inference_fraud_detector_1_layer_call_fn_1426455
2__inference_fraud_detector_1_layer_call_fn_1426302�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
 trace_1
!trace_2
"trace_32�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426533
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426611
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426334
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426366�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0z trace_1z!trace_2z"trace_3
�B�
"__inference__wrapped_model_1425563input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
#layer_with_weights-0
#layer-0
$layer_with_weights-1
$layer-1
%layer_with_weights-2
%layer-2
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
,layer_with_weights-0
,layer-0
-layer_with_weights-1
-layer-1
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
4iter

5beta_1

6beta_2
	7decay
8learning_ratem�m�m�m�m�m�m�m�m�m�v�v�v�v�v�v�v�v�v�v�"
	optimizer
,
9serving_default"
signature_map
 :2dense_5/kernel
:2dense_5/bias
 :2dense_6/kernel
:2dense_6/bias
 :2dense_7/kernel
:2dense_7/bias
 :2dense_8/kernel
:2dense_8/bias
 :2dense_9/kernel
:2dense_9/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_fraud_detector_1_layer_call_fn_1426186input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
2__inference_fraud_detector_1_layer_call_fn_1426427x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
2__inference_fraud_detector_1_layer_call_fn_1426455x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
2__inference_fraud_detector_1_layer_call_fn_1426302input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426533x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426611x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426334input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426366input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
Strace_0
Ttrace_1
Utrace_2
Vtrace_32�
.__inference_sequential_2_layer_call_fn_1425683
.__inference_sequential_2_layer_call_fn_1426630
.__inference_sequential_2_layer_call_fn_1426649
.__inference_sequential_2_layer_call_fn_1425831�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0zTtrace_1zUtrace_2zVtrace_3
�
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_32�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426700
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426751
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425868
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425905�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zWtrace_0zXtrace_1zYtrace_2zZtrace_3
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
ltrace_0
mtrace_1
ntrace_2
otrace_32�
.__inference_sequential_3_layer_call_fn_1425981
.__inference_sequential_3_layer_call_fn_1426765
.__inference_sequential_3_layer_call_fn_1426779
.__inference_sequential_3_layer_call_fn_1426078�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0zmtrace_1zntrace_2zotrace_3
�
ptrace_0
qtrace_1
rtrace_2
strace_32�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426810
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426841
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426101
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426124�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_1426399input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
t	variables
u	keras_api
	vtotal
	wcount"
_tf_keras_metric
^
x	variables
y	keras_api
	ztotal
	{count
|
_fn_kwargs"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_5_layer_call_fn_1426850�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_5_layer_call_and_return_conditional_losses_1426861�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
�activity_regularizer_fn
*G&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_6_layer_call_fn_1426870�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_6_layer_call_and_return_all_conditional_losses_1426881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
�activity_regularizer_fn
*M&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_7_layer_call_fn_1426901�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_7_layer_call_and_return_all_conditional_losses_1426912�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_2_layer_call_fn_1425683dense_5_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_2_layer_call_fn_1426630inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_2_layer_call_fn_1426649inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_2_layer_call_fn_1425831dense_5_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426700inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426751inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425868dense_5_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425905dense_5_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
�activity_regularizer_fn
*`&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_8_layer_call_fn_1426932�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1426943�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_9_layer_call_fn_1426963�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_9_layer_call_and_return_conditional_losses_1426974�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_3_layer_call_fn_1425981dense_8_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_3_layer_call_fn_1426765inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_3_layer_call_fn_1426779inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_3_layer_call_fn_1426078dense_8_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426810inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426841inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426101dense_8_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426124dense_8_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
v0
w1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
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
�B�
)__inference_dense_5_layer_call_fn_1426850inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_5_layer_call_and_return_conditional_losses_1426861inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�
�trace_02�
0__inference_dense_6_activity_regularizer_1425576�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�z�trace_0
�
�trace_02�
D__inference_dense_6_layer_call_and_return_conditional_losses_1426892�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�B�
)__inference_dense_6_layer_call_fn_1426870inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_6_layer_call_and_return_all_conditional_losses_1426881inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�
�trace_02�
0__inference_dense_7_activity_regularizer_1425589�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�z�trace_0
�
�trace_02�
D__inference_dense_7_layer_call_and_return_conditional_losses_1426923�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�B�
)__inference_dense_7_layer_call_fn_1426901inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_7_layer_call_and_return_all_conditional_losses_1426912inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�
�trace_02�
0__inference_dense_8_activity_regularizer_1425918�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�z�trace_0
�
�trace_02�
D__inference_dense_8_layer_call_and_return_conditional_losses_1426954�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�B�
)__inference_dense_8_layer_call_fn_1426932inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1426943inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_9_layer_call_fn_1426963inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_9_layer_call_and_return_conditional_losses_1426974inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_dense_6_activity_regularizer_1425576x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�B�
D__inference_dense_6_layer_call_and_return_conditional_losses_1426892inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_dense_7_activity_regularizer_1425589x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�B�
D__inference_dense_7_layer_call_and_return_conditional_losses_1426923inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_dense_8_activity_regularizer_1425918x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�B�
D__inference_dense_8_layer_call_and_return_conditional_losses_1426954inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
%:#2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
%:#2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
%:#2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
%:#2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
%:#2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
%:#2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
%:#2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
%:#2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
%:#2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/v
%:#2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v�
"__inference__wrapped_model_1425563s
0�-
&�#
!�
input_1���������
� "3�0
.
output_1"�
output_1����������
D__inference_dense_5_layer_call_and_return_conditional_losses_1426861\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_5_layer_call_fn_1426850O/�,
%�"
 �
inputs���������
� "����������Z
0__inference_dense_6_activity_regularizer_1425576&�
�
�	
x
� "� �
H__inference_dense_6_layer_call_and_return_all_conditional_losses_1426881j/�,
%�"
 �
inputs���������
� "3�0
�
0���������
�
�	
1/0 �
D__inference_dense_6_layer_call_and_return_conditional_losses_1426892\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_6_layer_call_fn_1426870O/�,
%�"
 �
inputs���������
� "����������Z
0__inference_dense_7_activity_regularizer_1425589&�
�
�	
x
� "� �
H__inference_dense_7_layer_call_and_return_all_conditional_losses_1426912j/�,
%�"
 �
inputs���������
� "3�0
�
0���������
�
�	
1/0 �
D__inference_dense_7_layer_call_and_return_conditional_losses_1426923\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_7_layer_call_fn_1426901O/�,
%�"
 �
inputs���������
� "����������Z
0__inference_dense_8_activity_regularizer_1425918&�
�
�	
x
� "� �
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1426943j/�,
%�"
 �
inputs���������
� "3�0
�
0���������
�
�	
1/0 �
D__inference_dense_8_layer_call_and_return_conditional_losses_1426954\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_8_layer_call_fn_1426932O/�,
%�"
 �
inputs���������
� "�����������
D__inference_dense_9_layer_call_and_return_conditional_losses_1426974\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_9_layer_call_fn_1426963O/�,
%�"
 �
inputs���������
� "�����������
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426334�
@�=
&�#
!�
input_1���������
�

trainingp "O�L
�
0���������
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426366�
@�=
&�#
!�
input_1���������
�

trainingp"O�L
�
0���������
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426533�
:�7
 �
�
x���������
�

trainingp "O�L
�
0���������
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
M__inference_fraud_detector_1_layer_call_and_return_conditional_losses_1426611�
:�7
 �
�
x���������
�

trainingp"O�L
�
0���������
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
2__inference_fraud_detector_1_layer_call_fn_1426186h
@�=
&�#
!�
input_1���������
�

trainingp "�����������
2__inference_fraud_detector_1_layer_call_fn_1426302h
@�=
&�#
!�
input_1���������
�

trainingp"�����������
2__inference_fraud_detector_1_layer_call_fn_1426427b
:�7
 �
�
x���������
�

trainingp "�����������
2__inference_fraud_detector_1_layer_call_fn_1426455b
:�7
 �
�
x���������
�

trainingp"�����������
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425868�>�;
4�1
'�$
dense_5_input���������
p 

 
� "A�>
�
0���������
�
�	
1/0 
�	
1/1 �
I__inference_sequential_2_layer_call_and_return_conditional_losses_1425905�>�;
4�1
'�$
dense_5_input���������
p

 
� "A�>
�
0���������
�
�	
1/0 
�	
1/1 �
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426700�7�4
-�*
 �
inputs���������
p 

 
� "A�>
�
0���������
�
�	
1/0 
�	
1/1 �
I__inference_sequential_2_layer_call_and_return_conditional_losses_1426751�7�4
-�*
 �
inputs���������
p

 
� "A�>
�
0���������
�
�	
1/0 
�	
1/1 �
.__inference_sequential_2_layer_call_fn_1425683b>�;
4�1
'�$
dense_5_input���������
p 

 
� "�����������
.__inference_sequential_2_layer_call_fn_1425831b>�;
4�1
'�$
dense_5_input���������
p

 
� "�����������
.__inference_sequential_2_layer_call_fn_1426630[7�4
-�*
 �
inputs���������
p 

 
� "�����������
.__inference_sequential_2_layer_call_fn_1426649[7�4
-�*
 �
inputs���������
p

 
� "�����������
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426101{>�;
4�1
'�$
dense_8_input���������
p 

 
� "3�0
�
0���������
�
�	
1/0 �
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426124{>�;
4�1
'�$
dense_8_input���������
p

 
� "3�0
�
0���������
�
�	
1/0 �
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426810t7�4
-�*
 �
inputs���������
p 

 
� "3�0
�
0���������
�
�	
1/0 �
I__inference_sequential_3_layer_call_and_return_conditional_losses_1426841t7�4
-�*
 �
inputs���������
p

 
� "3�0
�
0���������
�
�	
1/0 �
.__inference_sequential_3_layer_call_fn_1425981`>�;
4�1
'�$
dense_8_input���������
p 

 
� "�����������
.__inference_sequential_3_layer_call_fn_1426078`>�;
4�1
'�$
dense_8_input���������
p

 
� "�����������
.__inference_sequential_3_layer_call_fn_1426765Y7�4
-�*
 �
inputs���������
p 

 
� "�����������
.__inference_sequential_3_layer_call_fn_1426779Y7�4
-�*
 �
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_1426399~
;�8
� 
1�.
,
input_1!�
input_1���������"3�0
.
output_1"�
output_1���������