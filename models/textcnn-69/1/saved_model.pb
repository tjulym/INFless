³%
âHıH
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 

BatchDatasetV2
input_dataset

batch_size	
drop_remainder


handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ì
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0

IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
IteratorToStringHandle
resource_handle
string_handle
2
L2Loss
t"T
output"T"
Ttype:
2
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
b
LookupTableInsertV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
,
MakeIterator
dataset
iterator
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
¨
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?

ScatterAdd
ref"T
indices"Tindices
updates"T

output_ref"T" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
½
ShuffleDataset
input_dataset
buffer_size	
seed		
seed2	

handle"$
reshuffle_each_iterationbool("
output_types
list(type)(0" 
output_shapeslist(shape)(0
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
V
TextLineDataset
	filenames
compression_type
buffer_size	

handle
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02v1.10.0-0-g656e7a2b34Î$

	filenamesConst*]
valueTBR BL../data/corpus/corpus_char_all_20190201_20190819_Iterative20190919/train.txt*
dtype0*
_output_shapes
: 
Q
compression_typeConst*
valueB B *
dtype0*
_output_shapes
: 
O
buffer_sizeConst*
valueB		 R*
dtype0	*
_output_shapes
: 
P
countConst*
dtype0	*
_output_shapes
: *
valueB	 R
˙˙˙˙˙˙˙˙˙
O
buffer_size_1Const*
value	B	 Rd*
dtype0	*
_output_shapes
: 
F
seedConst*
value	B	 R *
dtype0	*
_output_shapes
: 
G
seed2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
M

batch_sizeConst*
value
B	 R*
dtype0	*
_output_shapes
: 
P
drop_remainderConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

IteratorIterator*
output_types
2*
shared_name *"
output_shapes
:˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
	container 

TextLineDatasetTextLineDataset	filenamescompression_typebuffer_size*
_class
loc:@Iterator*
_output_shapes
: 

RepeatDatasetRepeatDatasetTextLineDatasetcount*
output_types
2*
output_shapes
: *
_class
loc:@Iterator*
_output_shapes
: 
Î
ShuffleDatasetShuffleDatasetRepeatDatasetbuffer_size_1seedseed2*
output_types
2*
output_shapes
: *
_class
loc:@Iterator*
reshuffle_each_iteration(*
_output_shapes
: 
ĵ
BatchDatasetV2BatchDatasetV2ShuffleDataset
batch_sizedrop_remainder*
_class
loc:@Iterator*
_output_shapes
: *
output_types
2*"
output_shapes
:˙˙˙˙˙˙˙˙˙
S
MakeIteratorMakeIteratorBatchDatasetV2Iterator*
_class
loc:@Iterator
R
IteratorToStringHandleIteratorToStringHandleIterator*
_output_shapes
: 

IteratorGetNextIteratorGetNextIterator*
output_types
2*"
output_shapes
:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

filenames_1Const*]
valueTBR BL../data/corpus/corpus_char_all_20190201_20190819_Iterative20190919/valid.txt*
dtype0*
_output_shapes
: 
S
compression_type_1Const*
valueB B *
dtype0*
_output_shapes
: 
Q
buffer_size_2Const*
valueB		 R*
dtype0	*
_output_shapes
: 
R
count_1Const*
valueB	 R
˙˙˙˙˙˙˙˙˙*
dtype0	*
_output_shapes
: 
O
buffer_size_3Const*
value	B	 Rd*
dtype0	*
_output_shapes
: 
H
seed_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
I
seed2_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
O
batch_size_1Const*
value
B	 RŞP*
dtype0	*
_output_shapes
: 
R
drop_remainder_1Const*
value	B
 Z *
dtype0
*
_output_shapes
: 


Iterator_1Iterator*
shared_name *"
output_shapes
:˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
	container *
output_types
2

TextLineDataset_1TextLineDatasetfilenames_1compression_type_1buffer_size_2*
_class
loc:@Iterator_1*
_output_shapes
: 
Ħ
RepeatDataset_1RepeatDatasetTextLineDataset_1count_1*
_output_shapes
: *
output_types
2*
output_shapes
: *
_class
loc:@Iterator_1
Ĝ
ShuffleDataset_1ShuffleDatasetRepeatDataset_1buffer_size_3seed_1seed2_1*
output_shapes
: *
_class
loc:@Iterator_1*
reshuffle_each_iteration(*
_output_shapes
: *
output_types
2
Ĉ
BatchDatasetV2_1BatchDatasetV2ShuffleDataset_1batch_size_1drop_remainder_1*"
output_shapes
:˙˙˙˙˙˙˙˙˙*
_class
loc:@Iterator_1*
_output_shapes
: *
output_types
2
[
MakeIterator_1MakeIteratorBatchDatasetV2_1
Iterator_1*
_class
loc:@Iterator_1
V
IteratorToStringHandle_1IteratorToStringHandle
Iterator_1*
_output_shapes
: 

IteratorGetNext_1IteratorGetNext
Iterator_1*
output_types
2*"
output_shapes
:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
global_step/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
o
global_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
?
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
_output_shapes
: 
[
Variable/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
l
Variable
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
˘
Variable/AssignAssignVariableVariable/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
a
Variable/readIdentityVariable*
_output_shapes
: *
T0*
_class
loc:@Variable
}
sentencePlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
`
labelPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
d
padding/ShapeShapesentence"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
t
padding/strided_slice/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
v
padding/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
v
padding/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
°
padding/strided_sliceStridedSlicepadding/Shapepadding/strided_slice/stackpadding/strided_slice/stack_1padding/strided_slice/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
padding/Minimum/yConst"/device:CPU:0*
_output_shapes
: *
value	B :2*
dtype0
t
padding/MinimumMinimumpadding/strided_slicepadding/Minimum/y"/device:CPU:0*
T0*
_output_shapes
: 
s
padding/Slice/beginConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
n
padding/Slice/size/0Const"/device:CPU:0*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

padding/Slice/sizePackpadding/Slice/size/0padding/Minimum"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
 
padding/SliceSlicesentencepadding/Slice/beginpadding/Slice/size"/device:CPU:0*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
padding/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
x
padding/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
x
padding/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
¸
padding/strided_slice_1StridedSlicepadding/Shapepadding/strided_slice_1/stackpadding/strided_slice_1/stack_1padding/strided_slice_1/stack_2"/device:CPU:0*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
^
padding/sub/xConst"/device:CPU:0*
value	B :2*
dtype0*
_output_shapes
: 
b
padding/subSubpadding/sub/xpadding/Minimum"/device:CPU:0*
_output_shapes
: *
T0

padding/Fill/dimsPackpadding/strided_slice_1padding/sub"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
g
padding/Fill/valueConst"/device:CPU:0*
valueB B<pad>*
dtype0*
_output_shapes
: 

padding/FillFillpadding/Fill/dimspadding/Fill/value"/device:CPU:0*
T0*

index_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
d
padding/concat/axisConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
Ğ
padding/concatConcatV2padding/Slicepadding/Fillpadding/concat/axis"/device:CPU:0*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
\
dropout_keep_prob/inputConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
dropout_keep_probPlaceholderWithDefaultdropout_keep_prob/input*
dtype0*
_output_shapes
: *
shape: 
F
epochPlaceholder*
shape: *
dtype0*
_output_shapes
: 
J
	temp_lossPlaceholder*
shape: *
dtype0*
_output_shapes
: 
I
temp_accPlaceholder*
shape: *
dtype0*
_output_shapes
: 
G
ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ħ
symbol_tableMutableHashTableV2*
value_dtype0	*
_output_shapes
: *#
shared_namesymbol_table_share*
use_node_name_sharing( *
	key_dtype0*
	container 
½
'symbol_table_lookup_table_export_valuesLookupTableExportV2symbol_table*
_class
loc:@symbol_table*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tkeys0*
Tvalues0	
I
Const_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ż
label_tableMutableHashTableV2*
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *"
shared_namelabel_table_share*
use_node_name_sharing( 
ş
&label_table_lookup_table_export_valuesLookupTableExportV2label_table*
_class
loc:@label_table*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tkeys0*
Tvalues0	
X
Const_2Const*!
valueB B__label__unknown*
dtype0*
_output_shapes
: 
Ğ
	out_tableMutableHashTableV2*
use_node_name_sharing( *
	key_dtype0	*
	container *
value_dtype0*
_output_shapes
: * 
shared_nameout_table_share
´
$out_table_lookup_table_export_valuesLookupTableExportV2	out_table*
Tkeys0	*
Tvalues0*
_class
loc:@out_table*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ż
input/x_idxLookupTableFindV2symbol_tablepadding/concatConst*
_class
loc:@symbol_table*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*	
Tin0*

Tout0	

input/y_idxLookupTableFindV2label_tablelabelConst_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*	
Tin0*

Tout0	*
_class
loc:@label_table
Ż
5embedding/emb_matrix/Initializer/random_uniform/shapeConst*'
_class
loc:@embedding/emb_matrix*
valueB"Ë     *
dtype0*
_output_shapes
:
Ħ
3embedding/emb_matrix/Initializer/random_uniform/minConst*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 
Ħ
3embedding/emb_matrix/Initializer/random_uniform/maxConst*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
valueB
 *  ?*
dtype0
˙
=embedding/emb_matrix/Initializer/random_uniform/RandomUniformRandomUniform5embedding/emb_matrix/Initializer/random_uniform/shape*

seed *
T0*'
_class
loc:@embedding/emb_matrix*
seed2 *
dtype0* 
_output_shapes
:
Ë
î
3embedding/emb_matrix/Initializer/random_uniform/subSub3embedding/emb_matrix/Initializer/random_uniform/max3embedding/emb_matrix/Initializer/random_uniform/min*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: *
T0

3embedding/emb_matrix/Initializer/random_uniform/mulMul=embedding/emb_matrix/Initializer/random_uniform/RandomUniform3embedding/emb_matrix/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
ô
/embedding/emb_matrix/Initializer/random_uniformAdd3embedding/emb_matrix/Initializer/random_uniform/mul3embedding/emb_matrix/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
Ä
embedding/emb_matrix
VariableV2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
	container *
shape:
Ë*
dtype0* 
_output_shapes
:
Ë*
shared_name 
ĝ
embedding/emb_matrix/AssignAssignembedding/emb_matrix/embedding/emb_matrix/Initializer/random_uniform"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(

embedding/emb_matrix/readIdentityembedding/emb_matrix"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë

embedding/embedding_lookup/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
value	B : 

embedding/embedding_lookupGatherV2embedding/emb_matrix/readinput/x_idxembedding/embedding_lookup/axis"/device:CPU:0*
Tindices0	*
Tparams0*'
_class
loc:@embedding/emb_matrix*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Taxis0
r
embedding/ExpandDims/dimConst"/device:CPU:0*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
·
embedding/ExpandDims
ExpandDimsembedding/embedding_lookupembedding/ExpandDims/dim"/device:CPU:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tdim0
~
%cnn_max_pool_2/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
i
$cnn_max_pool_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&cnn_max_pool_2/truncated_normal/stddevConst*
valueB
 *ÍÌÌ=*
dtype0*
_output_shapes
: 
Â
/cnn_max_pool_2/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_2/truncated_normal/shape*
T0*
dtype0*(
_output_shapes
:*
seed2 *

seed 
ĥ
#cnn_max_pool_2/truncated_normal/mulMul/cnn_max_pool_2/truncated_normal/TruncatedNormal&cnn_max_pool_2/truncated_normal/stddev*
T0*(
_output_shapes
:
¤
cnn_max_pool_2/truncated_normalAdd#cnn_max_pool_2/truncated_normal/mul$cnn_max_pool_2/truncated_normal/mean*
T0*(
_output_shapes
:

cnn_max_pool_2/W
VariableV2*
shape:*
shared_name *
dtype0*(
_output_shapes
:*
	container 
Ġ
cnn_max_pool_2/W/AssignAssigncnn_max_pool_2/Wcnn_max_pool_2/truncated_normal*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:

cnn_max_pool_2/W/readIdentitycnn_max_pool_2/W*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:
c
cnn_max_pool_2/ConstConst*
valueB*ÍÌÌ=*
dtype0*
_output_shapes	
:
~
cnn_max_pool_2/b
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
½
cnn_max_pool_2/b/AssignAssigncnn_max_pool_2/bcnn_max_pool_2/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
~
cnn_max_pool_2/b/readIdentitycnn_max_pool_2/b*
T0*#
_class
loc:@cnn_max_pool_2/b*
_output_shapes	
:
ŭ
cnn_max_pool_2/convConv2Dembedding/ExpandDimscnn_max_pool_2/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¨
cnn_max_pool_2/BiasAddBiasAddcnn_max_pool_2/convcnn_max_pool_2/b/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
w
cnn_max_pool_2/reluRelucnn_max_pool_2/BiasAdd*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Î
cnn_max_pool_2/max_poolMaxPoolcnn_max_pool_2/relu*
T0*
strides
*
data_formatNHWC*
ksize
1*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
~
%cnn_max_pool_3/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
i
$cnn_max_pool_3/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&cnn_max_pool_3/truncated_normal/stddevConst*
valueB
 *ÍÌÌ=*
dtype0*
_output_shapes
: 
Â
/cnn_max_pool_3/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_3/truncated_normal/shape*
T0*
dtype0*(
_output_shapes
:*
seed2 *

seed 
ĥ
#cnn_max_pool_3/truncated_normal/mulMul/cnn_max_pool_3/truncated_normal/TruncatedNormal&cnn_max_pool_3/truncated_normal/stddev*(
_output_shapes
:*
T0
¤
cnn_max_pool_3/truncated_normalAdd#cnn_max_pool_3/truncated_normal/mul$cnn_max_pool_3/truncated_normal/mean*
T0*(
_output_shapes
:

cnn_max_pool_3/W
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ġ
cnn_max_pool_3/W/AssignAssigncnn_max_pool_3/Wcnn_max_pool_3/truncated_normal*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:

cnn_max_pool_3/W/readIdentitycnn_max_pool_3/W*
T0*#
_class
loc:@cnn_max_pool_3/W*(
_output_shapes
:
c
cnn_max_pool_3/ConstConst*
valueB*ÍÌÌ=*
dtype0*
_output_shapes	
:
~
cnn_max_pool_3/b
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
½
cnn_max_pool_3/b/AssignAssigncnn_max_pool_3/bcnn_max_pool_3/Const*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
~
cnn_max_pool_3/b/readIdentitycnn_max_pool_3/b*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:
ŭ
cnn_max_pool_3/convConv2Dembedding/ExpandDimscnn_max_pool_3/W/read*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
¨
cnn_max_pool_3/BiasAddBiasAddcnn_max_pool_3/convcnn_max_pool_3/b/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
w
cnn_max_pool_3/reluRelucnn_max_pool_3/BiasAdd*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Î
cnn_max_pool_3/max_poolMaxPoolcnn_max_pool_3/relu*
strides
*
data_formatNHWC*
ksize
0*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
~
%cnn_max_pool_4/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
i
$cnn_max_pool_4/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
&cnn_max_pool_4/truncated_normal/stddevConst*
valueB
 *ÍÌÌ=*
dtype0*
_output_shapes
: 
Â
/cnn_max_pool_4/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_4/truncated_normal/shape*
dtype0*(
_output_shapes
:*
seed2 *

seed *
T0
ĥ
#cnn_max_pool_4/truncated_normal/mulMul/cnn_max_pool_4/truncated_normal/TruncatedNormal&cnn_max_pool_4/truncated_normal/stddev*
T0*(
_output_shapes
:
¤
cnn_max_pool_4/truncated_normalAdd#cnn_max_pool_4/truncated_normal/mul$cnn_max_pool_4/truncated_normal/mean*
T0*(
_output_shapes
:

cnn_max_pool_4/W
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ġ
cnn_max_pool_4/W/AssignAssigncnn_max_pool_4/Wcnn_max_pool_4/truncated_normal*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(

cnn_max_pool_4/W/readIdentitycnn_max_pool_4/W*
T0*#
_class
loc:@cnn_max_pool_4/W*(
_output_shapes
:
c
cnn_max_pool_4/ConstConst*
_output_shapes	
:*
valueB*ÍÌÌ=*
dtype0
~
cnn_max_pool_4/b
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
½
cnn_max_pool_4/b/AssignAssigncnn_max_pool_4/bcnn_max_pool_4/Const*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
~
cnn_max_pool_4/b/readIdentitycnn_max_pool_4/b*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:
ŭ
cnn_max_pool_4/convConv2Dembedding/ExpandDimscnn_max_pool_4/W/read*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
¨
cnn_max_pool_4/BiasAddBiasAddcnn_max_pool_4/convcnn_max_pool_4/b/read*
data_formatNHWC*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
w
cnn_max_pool_4/reluRelucnn_max_pool_4/BiasAdd*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Î
cnn_max_pool_4/max_poolMaxPoolcnn_max_pool_4/relu*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC*
ksize
/*
paddingVALID
M
concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
?
concatConcatV2cnn_max_pool_2/max_poolcnn_max_pool_3/max_poolcnn_max_pool_4/max_poolconcat/axis*
N*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
^
Reshape/shapeConst*
valueB"˙˙˙˙  *
dtype0*
_output_shapes
:
j
ReshapeReshapeconcatReshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
dropout/dropout/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 

"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout/dropout/addAdddropout_keep_probdropout/dropout/random_uniform*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
dropout/dropout/FloorFloordropout/dropout/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
dropout/dropout/divRealDivReshapedropout_keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)output/W/Initializer/random_uniform/shapeConst*
_class
loc:@output/W*
valueB"     *
dtype0*
_output_shapes
:

'output/W/Initializer/random_uniform/minConst*
_class
loc:@output/W*
valueB
 *<ù½*
dtype0*
_output_shapes
: 

'output/W/Initializer/random_uniform/maxConst*
_class
loc:@output/W*
valueB
 *<ù=*
dtype0*
_output_shapes
: 
Ú
1output/W/Initializer/random_uniform/RandomUniformRandomUniform)output/W/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*
_class
loc:@output/W*
seed2 
?
'output/W/Initializer/random_uniform/subSub'output/W/Initializer/random_uniform/max'output/W/Initializer/random_uniform/min*
_class
loc:@output/W*
_output_shapes
: *
T0
Ñ
'output/W/Initializer/random_uniform/mulMul1output/W/Initializer/random_uniform/RandomUniform'output/W/Initializer/random_uniform/sub*
T0*
_class
loc:@output/W*
_output_shapes
:	
?
#output/W/Initializer/random_uniformAdd'output/W/Initializer/random_uniform/mul'output/W/Initializer/random_uniform/min*
T0*
_class
loc:@output/W*
_output_shapes
:	

output/W
VariableV2*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name *
_class
loc:@output/W
¸
output/W/AssignAssignoutput/W#output/W/Initializer/random_uniform*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
j
output/W/readIdentityoutput/W*
T0*
_class
loc:@output/W*
_output_shapes
:	
Y
output/ConstConst*
valueB*ÍÌÌ=*
dtype0*
_output_shapes
:
t
output/b
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 

output/b/AssignAssignoutput/boutput/Const*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
e
output/b/readIdentityoutput/b*
T0*
_class
loc:@output/b*
_output_shapes
:
S
output/l2_lossConst*
valueB
 *    *
dtype0*
_output_shapes
: 
G
output/L2LossL2Lossoutput/W/read*
_output_shapes
: *
T0
Q

output/addAddoutput/l2_lossoutput/L2Loss*
T0*
_output_shapes
: 
I
output/L2Loss_1L2Lossoutput/b/read*
_output_shapes
: *
T0
Q
output/add_1Add
output/addoutput/L2Loss_1*
T0*
_output_shapes
: 

output/logits/MatMulMatMuldropout/dropout/muloutput/W/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

output/logitsBiasAddoutput/logits/MatMuloutput/b/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
output/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

output/predictionsArgMaxoutput/logitsoutput/predictions/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
output/label_outLookupTableFindV2	out_tableoutput/predictionsConst_2*

Tout0*
_class
loc:@out_table*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*	
Tin0	
f
$output/label_score/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

output/label_scoreMaxoutput/logits$output/label_score/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
]
inference/SoftmaxSoftmaxoutput/logits*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
inference/output/kConst*
value	B :*
dtype0*
_output_shapes
: 

inference/outputTopKV2inference/Softmaxinference/output/k*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
sorted(*
T0
k
inference/CastCastinference/output:1*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0	
Ş
inference/label_outLookupTableFindV2	out_tableinference/CastConst_2*
_class
loc:@out_table*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*	
Tin0	*

Tout0
y
.loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeinput/y_idx*
T0	*
out_type0*
_output_shapes
:
ß
Lloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsoutput/logitsinput/y_idx*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0	
T

loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
İ
	loss/MeanMeanLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *ÍÌL>*
dtype0*
_output_shapes
: 
J
loss/mulMul
loss/mul/xoutput/add_1*
_output_shapes
: *
T0
E
loss/addAdd	loss/Meanloss/mul*
T0*
_output_shapes
: 
f
accuracy/EqualEqualoutput/predictionsinput/y_idx*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
accuracy/CastCastaccuracy/Equal*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
v
accuracy/accuracyMeanaccuracy/Castaccuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
A
(gradients/loss/add_grad/tuple/group_depsNoOp^gradients/Fill
ğ
0gradients/loss/add_grad/tuple/control_dependencyIdentitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
½
2gradients/loss/add_grad/tuple/control_dependency_1Identitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
p
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
¸
 gradients/loss/Mean_grad/ReshapeReshape0gradients/loss/add_grad/tuple/control_dependency&gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Ş
gradients/loss/Mean_grad/ShapeShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
§
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshapegradients/loss/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
 gradients/loss/Mean_grad/Shape_1ShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
gradients/loss/Mean_grad/ProdProd gradients/loss/Mean_grad/Shape_1gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
j
 gradients/loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
İ
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_2 gradients/loss/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
d
"gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
_output_shapes
: *
T0

!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
_output_shapes
: *
T0
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0

 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/loss/mul_grad/MulMul2gradients/loss/add_grad/tuple/control_dependency_1output/add_1*
_output_shapes
: *
T0

gradients/loss/mul_grad/Mul_1Mul2gradients/loss/add_grad/tuple/control_dependency_1
loss/mul/x*
T0*
_output_shapes
: 
n
(gradients/loss/mul_grad/tuple/group_depsNoOp^gradients/loss/mul_grad/Mul^gradients/loss/mul_grad/Mul_1
Ġ
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Mul)^gradients/loss/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/loss/mul_grad/Mul
Û
2gradients/loss/mul_grad/tuple/control_dependency_1Identitygradients/loss/mul_grad/Mul_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
£
gradients/zeros_like	ZerosLikeNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
kgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*´
message¨?Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
µ
jgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
À
fgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/loss/Mean_grad/truedivjgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
í
_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulfgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimskgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
,gradients/output/add_1_grad/tuple/group_depsNoOp3^gradients/loss/mul_grad/tuple/control_dependency_1
ö
4gradients/output/add_1_grad/tuple/control_dependencyIdentity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
ĝ
6gradients/output/add_1_grad/tuple/control_dependency_1Identity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
Ô
(gradients/output/logits_grad/BiasAddGradBiasAddGrad_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
Â
-gradients/output/logits_grad/tuple/group_depsNoOp`^gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul)^gradients/output/logits_grad/BiasAddGrad
ĝ
5gradients/output/logits_grad/tuple/control_dependencyIdentity_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/output/logits_grad/tuple/group_deps*
T0*r
_classh
fdloc:@gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
7gradients/output/logits_grad/tuple/control_dependency_1Identity(gradients/output/logits_grad/BiasAddGrad.^gradients/output/logits_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/output/logits_grad/BiasAddGrad*
_output_shapes
:
i
*gradients/output/add_grad/tuple/group_depsNoOp5^gradients/output/add_1_grad/tuple/control_dependency
ô
2gradients/output/add_grad/tuple/control_dependencyIdentity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
ö
4gradients/output/add_grad/tuple/control_dependency_1Identity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 

"gradients/output/L2Loss_1_grad/mulMuloutput/b/read6gradients/output/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
Ó
*gradients/output/logits/MatMul_grad/MatMulMatMul5gradients/output/logits_grad/tuple/control_dependencyoutput/W/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
Ò
,gradients/output/logits/MatMul_grad/MatMul_1MatMuldropout/dropout/mul5gradients/output/logits_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0

4gradients/output/logits/MatMul_grad/tuple/group_depsNoOp+^gradients/output/logits/MatMul_grad/MatMul-^gradients/output/logits/MatMul_grad/MatMul_1

<gradients/output/logits/MatMul_grad/tuple/control_dependencyIdentity*gradients/output/logits/MatMul_grad/MatMul5^gradients/output/logits/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*=
_class3
1/loc:@gradients/output/logits/MatMul_grad/MatMul

>gradients/output/logits/MatMul_grad/tuple/control_dependency_1Identity,gradients/output/logits/MatMul_grad/MatMul_15^gradients/output/logits/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*?
_class5
31loc:@gradients/output/logits/MatMul_grad/MatMul_1

 gradients/output/L2Loss_grad/mulMuloutput/W/read4gradients/output/add_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0
Ŝ
gradients/AddNAddN7gradients/output/logits_grad/tuple/control_dependency_1"gradients/output/L2Loss_1_grad/mul*
T0*;
_class1
/-loc:@gradients/output/logits_grad/BiasAddGrad*
N*
_output_shapes
:
{
(gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*
_output_shapes
:

*gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
ä
8gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/mul_grad/Shape*gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
µ
&gradients/dropout/dropout/mul_grad/MulMul<gradients/output/logits/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
&gradients/dropout/dropout/mul_grad/SumSum&gradients/dropout/dropout/mul_grad/Mul8gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
È
*gradients/dropout/dropout/mul_grad/ReshapeReshape&gradients/dropout/dropout/mul_grad/Sum(gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
µ
(gradients/dropout/dropout/mul_grad/Mul_1Muldropout/dropout/div<gradients/output/logits/MatMul_grad/tuple/control_dependency*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ġ
(gradients/dropout/dropout/mul_grad/Sum_1Sum(gradients/dropout/dropout/mul_grad/Mul_1:gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Î
,gradients/dropout/dropout/mul_grad/Reshape_1Reshape(gradients/dropout/dropout/mul_grad/Sum_1*gradients/dropout/dropout/mul_grad/Shape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

3gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/mul_grad/Reshape-^gradients/dropout/dropout/mul_grad/Reshape_1

;gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/mul_grad/Reshape4^gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
=gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/mul_grad/Reshape_14^gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
gradients/AddN_1AddN>gradients/output/logits/MatMul_grad/tuple/control_dependency_1 gradients/output/L2Loss_grad/mul*
T0*?
_class5
31loc:@gradients/output/logits/MatMul_grad/MatMul_1*
N*
_output_shapes
:	
o
(gradients/dropout/dropout/div_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
m
*gradients/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ä
8gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/div_grad/Shape*gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
*gradients/dropout/dropout/div_grad/RealDivRealDiv;gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout_keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&gradients/dropout/dropout/div_grad/SumSum*gradients/dropout/dropout/div_grad/RealDiv8gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
È
*gradients/dropout/dropout/div_grad/ReshapeReshape&gradients/dropout/dropout/div_grad/Sum(gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
&gradients/dropout/dropout/div_grad/NegNegReshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
,gradients/dropout/dropout/div_grad/RealDiv_1RealDiv&gradients/dropout/dropout/div_grad/Negdropout_keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ğ
,gradients/dropout/dropout/div_grad/RealDiv_2RealDiv,gradients/dropout/dropout/div_grad/RealDiv_1dropout_keep_prob*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ë
&gradients/dropout/dropout/div_grad/mulMul;gradients/dropout/dropout/mul_grad/tuple/control_dependency,gradients/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
(gradients/dropout/dropout/div_grad/Sum_1Sum&gradients/dropout/dropout/div_grad/mul:gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ĵ
,gradients/dropout/dropout/div_grad/Reshape_1Reshape(gradients/dropout/dropout/div_grad/Sum_1*gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

3gradients/dropout/dropout/div_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/div_grad/Reshape-^gradients/dropout/dropout/div_grad/Reshape_1

;gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/div_grad/Reshape4^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

=gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/div_grad/Reshape_14^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
b
gradients/Reshape_grad/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
Ö
gradients/Reshape_grad/ReshapeReshape;gradients/dropout/dropout/div_grad/tuple/control_dependencygradients/Reshape_grad/Shape*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
\
gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0*
_output_shapes
: 
r
gradients/concat_grad/ShapeShapecnn_max_pool_2/max_pool*
T0*
out_type0*
_output_shapes
:
ğ
gradients/concat_grad/ShapeNShapeNcnn_max_pool_2/max_poolcnn_max_pool_3/max_poolcnn_max_pool_4/max_pool*
T0*
out_type0*
N*&
_output_shapes
:::
Ü
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2*
N*&
_output_shapes
:::
×
gradients/concat_grad/SliceSlicegradients/Reshape_grad/Reshape"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
Index0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ŭ
gradients/concat_grad/Slice_1Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
Index0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ŭ
gradients/concat_grad/Slice_2Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*
Index0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1^gradients/concat_grad/Slice_2
ô
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_1*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
0gradients/concat_grad/tuple/control_dependency_2Identitygradients/concat_grad/Slice_2'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_2*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ĥ
2gradients/cnn_max_pool_2/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_2/relucnn_max_pool_2/max_pool.gradients/concat_grad/tuple/control_dependency*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC*
ksize
1
¸
2gradients/cnn_max_pool_3/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_3/relucnn_max_pool_3/max_pool0gradients/concat_grad/tuple/control_dependency_1*
ksize
0*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC
¸
2gradients/cnn_max_pool_4/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_4/relucnn_max_pool_4/max_pool0gradients/concat_grad/tuple/control_dependency_2*
ksize
/*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC
Ä
+gradients/cnn_max_pool_2/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_2/max_pool_grad/MaxPoolGradcnn_max_pool_2/relu*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ä
+gradients/cnn_max_pool_3/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_3/max_pool_grad/MaxPoolGradcnn_max_pool_3/relu*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ä
+gradients/cnn_max_pool_4/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_4/max_pool_grad/MaxPoolGradcnn_max_pool_4/relu*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş
1gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_2/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
 
6gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_2/relu_grad/ReluGrad
´
>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_2/relu_grad/ReluGrad7^gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_2/relu_grad/ReluGrad*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¤
@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ş
1gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_3/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
 
6gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_3/relu_grad/ReluGrad
´
>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_3/relu_grad/ReluGrad7^gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_3/relu_grad/ReluGrad*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¤
@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ş
1gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_4/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
 
6gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_4/relu_grad/ReluGrad
´
>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_4/relu_grad/ReluGrad7^gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_4/relu_grad/ReluGrad*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¤
@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
¤
)gradients/cnn_max_pool_2/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_2/W/read*
T0*
out_type0*
N* 
_output_shapes
::

6gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_2/conv_grad/ShapeNcnn_max_pool_2/W/read>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations

ô
7gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_2/conv_grad/ShapeN:1>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
?
3gradients/cnn_max_pool_2/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput
Ä
;gradients/cnn_max_pool_2/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_2/conv_grad/tuple/group_deps*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput
·
=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_2/conv_grad/tuple/group_deps*(
_output_shapes
:*
T0*J
_class@
><loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter
¤
)gradients/cnn_max_pool_3/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_3/W/read*
T0*
out_type0*
N* 
_output_shapes
::

6gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_3/conv_grad/ShapeNcnn_max_pool_3/W/read>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ô
7gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_3/conv_grad/ShapeN:1>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*(
_output_shapes
:
?
3gradients/cnn_max_pool_3/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput
Ä
;gradients/cnn_max_pool_3/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_3/conv_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
·
=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_3/conv_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter*(
_output_shapes
:
¤
)gradients/cnn_max_pool_4/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_4/W/read*
T0*
out_type0*
N* 
_output_shapes
::

6gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_4/conv_grad/ShapeNcnn_max_pool_4/W/read>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency*
paddingVALID*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ô
7gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_4/conv_grad/ShapeN:1>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*(
_output_shapes
:
?
3gradients/cnn_max_pool_4/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput
Ä
;gradients/cnn_max_pool_4/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_4/conv_grad/tuple/group_deps*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput
·
=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_4/conv_grad/tuple/group_deps*(
_output_shapes
:*
T0*J
_class@
><loc:@gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter
ç
gradients/AddN_2AddN;gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency;gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency;gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency*
N*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput

)gradients/embedding/ExpandDims_grad/ShapeShapeembedding/embedding_lookup*
T0*
out_type0*
_output_shapes
:
Á
+gradients/embedding/ExpandDims_grad/ReshapeReshapegradients/AddN_2)gradients/embedding/ExpandDims_grad/Shape*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
À
/gradients/embedding/embedding_lookup_grad/ShapeConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*%
valueB	"Ë             *
dtype0	*
_output_shapes
:
Ö
1gradients/embedding/embedding_lookup_grad/ToInt32Cast/gradients/embedding/embedding_lookup_grad/Shape"/device:CPU:0*

SrcT0	*'
_class
loc:@embedding/emb_matrix*
_output_shapes
:*

DstT0
t
.gradients/embedding/embedding_lookup_grad/SizeSizeinput/x_idx*
_output_shapes
: *
T0	*
out_type0
z
8gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ŭ
4gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims.gradients/embedding/embedding_lookup_grad/Size8gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0

=gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ñ
7gradients/embedding/embedding_lookup_grad/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt32=gradients/embedding/embedding_lookup_grad/strided_slice/stack?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
w
5gradients/embedding/embedding_lookup_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 

0gradients/embedding/embedding_lookup_grad/concatConcatV24gradients/embedding/embedding_lookup_grad/ExpandDims7gradients/embedding/embedding_lookup_grad/strided_slice5gradients/embedding/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ü
1gradients/embedding/embedding_lookup_grad/ReshapeReshape+gradients/embedding/ExpandDims_grad/Reshape0gradients/embedding/embedding_lookup_grad/concat*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
½
3gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeinput/x_idx4gradients/embedding/embedding_lookup_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

beta1_power/initial_valueConst*
_output_shapes
: *#
_class
loc:@cnn_max_pool_2/W*
valueB
 *fff?*
dtype0

beta1_power
VariableV2*#
_class
loc:@cnn_max_pool_2/W*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
³
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
o
beta1_power/readIdentitybeta1_power*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 

beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *#
_class
loc:@cnn_max_pool_2/W*
valueB
 *w??

beta2_power
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_2/W*
	container *
shape: *
dtype0*
_output_shapes
: 
³
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
o
beta2_power/readIdentitybeta2_power*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 
Ä
;embedding/emb_matrix/Adam/Initializer/zeros/shape_as_tensorConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB"Ë     *
dtype0*
_output_shapes
:
?
1embedding/emb_matrix/Adam/Initializer/zeros/ConstConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 

+embedding/emb_matrix/Adam/Initializer/zerosFill;embedding/emb_matrix/Adam/Initializer/zeros/shape_as_tensor1embedding/emb_matrix/Adam/Initializer/zeros/Const"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*

index_type0* 
_output_shapes
:
Ë
É
embedding/emb_matrix/Adam
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
Ë*
shared_name *'
_class
loc:@embedding/emb_matrix*
	container *
shape:
Ë
ŝ
 embedding/emb_matrix/Adam/AssignAssignembedding/emb_matrix/Adam+embedding/emb_matrix/Adam/Initializer/zeros"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
¨
embedding/emb_matrix/Adam/readIdentityembedding/emb_matrix/Adam"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
Ĉ
=embedding/emb_matrix/Adam_1/Initializer/zeros/shape_as_tensorConst"/device:CPU:0*
dtype0*
_output_shapes
:*'
_class
loc:@embedding/emb_matrix*
valueB"Ë     
°
3embedding/emb_matrix/Adam_1/Initializer/zeros/ConstConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 

-embedding/emb_matrix/Adam_1/Initializer/zerosFill=embedding/emb_matrix/Adam_1/Initializer/zeros/shape_as_tensor3embedding/emb_matrix/Adam_1/Initializer/zeros/Const"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*

index_type0* 
_output_shapes
:
Ë
Ë
embedding/emb_matrix/Adam_1
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
Ë*
shared_name *'
_class
loc:@embedding/emb_matrix*
	container *
shape:
Ë

"embedding/emb_matrix/Adam_1/AssignAssignembedding/emb_matrix/Adam_1-embedding/emb_matrix/Adam_1/Initializer/zeros"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ĵ
 embedding/emb_matrix/Adam_1/readIdentityembedding/emb_matrix/Adam_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
µ
7cnn_max_pool_2/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_2/W*%
valueB"            *
dtype0*
_output_shapes
:

-cnn_max_pool_2/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 

'cnn_max_pool_2/W/Adam/Initializer/zerosFill7cnn_max_pool_2/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_2/W/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@cnn_max_pool_2/W*

index_type0*(
_output_shapes
:
Â
cnn_max_pool_2/W/Adam
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *#
_class
loc:@cnn_max_pool_2/W*
	container *
shape:
ç
cnn_max_pool_2/W/Adam/AssignAssigncnn_max_pool_2/W/Adam'cnn_max_pool_2/W/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W

cnn_max_pool_2/W/Adam/readIdentitycnn_max_pool_2/W/Adam*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:
·
9cnn_max_pool_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_2/W*%
valueB"            *
dtype0*
_output_shapes
:

/cnn_max_pool_2/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 

)cnn_max_pool_2/W/Adam_1/Initializer/zerosFill9cnn_max_pool_2/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_2/W/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@cnn_max_pool_2/W*

index_type0*(
_output_shapes
:
Ä
cnn_max_pool_2/W/Adam_1
VariableV2*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name *#
_class
loc:@cnn_max_pool_2/W
í
cnn_max_pool_2/W/Adam_1/AssignAssigncnn_max_pool_2/W/Adam_1)cnn_max_pool_2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:

cnn_max_pool_2/W/Adam_1/readIdentitycnn_max_pool_2/W/Adam_1*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:

'cnn_max_pool_2/b/Adam/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_2/b*
valueB*    *
dtype0*
_output_shapes	
:
¨
cnn_max_pool_2/b/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_2/b*
	container *
shape:*
dtype0*
_output_shapes	
:
Ú
cnn_max_pool_2/b/Adam/AssignAssigncnn_max_pool_2/b/Adam'cnn_max_pool_2/b/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:

cnn_max_pool_2/b/Adam/readIdentitycnn_max_pool_2/b/Adam*
_output_shapes	
:*
T0*#
_class
loc:@cnn_max_pool_2/b

)cnn_max_pool_2/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_2/b*
valueB*    *
dtype0*
_output_shapes	
:
Ş
cnn_max_pool_2/b/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *#
_class
loc:@cnn_max_pool_2/b*
	container *
shape:
à
cnn_max_pool_2/b/Adam_1/AssignAssigncnn_max_pool_2/b/Adam_1)cnn_max_pool_2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:

cnn_max_pool_2/b/Adam_1/readIdentitycnn_max_pool_2/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_2/b*
_output_shapes	
:
µ
7cnn_max_pool_3/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_3/W*%
valueB"            *
dtype0*
_output_shapes
:

-cnn_max_pool_3/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 

'cnn_max_pool_3/W/Adam/Initializer/zerosFill7cnn_max_pool_3/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_3/W/Adam/Initializer/zeros/Const*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_3/W*

index_type0
Â
cnn_max_pool_3/W/Adam
VariableV2*#
_class
loc:@cnn_max_pool_3/W*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name 
ç
cnn_max_pool_3/W/Adam/AssignAssigncnn_max_pool_3/W/Adam'cnn_max_pool_3/W/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:

cnn_max_pool_3/W/Adam/readIdentitycnn_max_pool_3/W/Adam*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_3/W
·
9cnn_max_pool_3/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_3/W*%
valueB"            *
dtype0*
_output_shapes
:

/cnn_max_pool_3/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 

)cnn_max_pool_3/W/Adam_1/Initializer/zerosFill9cnn_max_pool_3/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_3/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_3/W*

index_type0
Ä
cnn_max_pool_3/W/Adam_1
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_3/W*
	container *
shape:*
dtype0*(
_output_shapes
:
í
cnn_max_pool_3/W/Adam_1/AssignAssigncnn_max_pool_3/W/Adam_1)cnn_max_pool_3/W/Adam_1/Initializer/zeros*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W

cnn_max_pool_3/W/Adam_1/readIdentitycnn_max_pool_3/W/Adam_1*
T0*#
_class
loc:@cnn_max_pool_3/W*(
_output_shapes
:

'cnn_max_pool_3/b/Adam/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_3/b*
valueB*    *
dtype0*
_output_shapes	
:
¨
cnn_max_pool_3/b/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_3/b*
	container *
shape:*
dtype0*
_output_shapes	
:
Ú
cnn_max_pool_3/b/Adam/AssignAssigncnn_max_pool_3/b/Adam'cnn_max_pool_3/b/Adam/Initializer/zeros*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

cnn_max_pool_3/b/Adam/readIdentitycnn_max_pool_3/b/Adam*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:

)cnn_max_pool_3/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_3/b*
valueB*    *
dtype0*
_output_shapes	
:
Ş
cnn_max_pool_3/b/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *#
_class
loc:@cnn_max_pool_3/b*
	container *
shape:
à
cnn_max_pool_3/b/Adam_1/AssignAssigncnn_max_pool_3/b/Adam_1)cnn_max_pool_3/b/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:

cnn_max_pool_3/b/Adam_1/readIdentitycnn_max_pool_3/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:
µ
7cnn_max_pool_4/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_4/W*%
valueB"            *
dtype0*
_output_shapes
:

-cnn_max_pool_4/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 

'cnn_max_pool_4/W/Adam/Initializer/zerosFill7cnn_max_pool_4/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_4/W/Adam/Initializer/zeros/Const*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_4/W*

index_type0
Â
cnn_max_pool_4/W/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_4/W*
	container *
shape:*
dtype0*(
_output_shapes
:
ç
cnn_max_pool_4/W/Adam/AssignAssigncnn_max_pool_4/W/Adam'cnn_max_pool_4/W/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:

cnn_max_pool_4/W/Adam/readIdentitycnn_max_pool_4/W/Adam*
T0*#
_class
loc:@cnn_max_pool_4/W*(
_output_shapes
:
·
9cnn_max_pool_4/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_4/W*%
valueB"            *
dtype0*
_output_shapes
:

/cnn_max_pool_4/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 

)cnn_max_pool_4/W/Adam_1/Initializer/zerosFill9cnn_max_pool_4/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_4/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_4/W*

index_type0
Ä
cnn_max_pool_4/W/Adam_1
VariableV2*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name *#
_class
loc:@cnn_max_pool_4/W
í
cnn_max_pool_4/W/Adam_1/AssignAssigncnn_max_pool_4/W/Adam_1)cnn_max_pool_4/W/Adam_1/Initializer/zeros*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(

cnn_max_pool_4/W/Adam_1/readIdentitycnn_max_pool_4/W/Adam_1*(
_output_shapes
:*
T0*#
_class
loc:@cnn_max_pool_4/W

'cnn_max_pool_4/b/Adam/Initializer/zerosConst*
_output_shapes	
:*#
_class
loc:@cnn_max_pool_4/b*
valueB*    *
dtype0
¨
cnn_max_pool_4/b/Adam
VariableV2*#
_class
loc:@cnn_max_pool_4/b*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ú
cnn_max_pool_4/b/Adam/AssignAssigncnn_max_pool_4/b/Adam'cnn_max_pool_4/b/Adam/Initializer/zeros*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(

cnn_max_pool_4/b/Adam/readIdentitycnn_max_pool_4/b/Adam*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:

)cnn_max_pool_4/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_4/b*
valueB*    *
dtype0*
_output_shapes	
:
Ş
cnn_max_pool_4/b/Adam_1
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_4/b*
	container *
shape:*
dtype0*
_output_shapes	
:
à
cnn_max_pool_4/b/Adam_1/AssignAssigncnn_max_pool_4/b/Adam_1)cnn_max_pool_4/b/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b

cnn_max_pool_4/b/Adam_1/readIdentitycnn_max_pool_4/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:

/output/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@output/W*
valueB"     *
dtype0*
_output_shapes
:

%output/W/Adam/Initializer/zeros/ConstConst*
_class
loc:@output/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ĝ
output/W/Adam/Initializer/zerosFill/output/W/Adam/Initializer/zeros/shape_as_tensor%output/W/Adam/Initializer/zeros/Const*
T0*
_class
loc:@output/W*

index_type0*
_output_shapes
:	
 
output/W/Adam
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *
_class
loc:@output/W*
	container *
shape:	
?
output/W/Adam/AssignAssignoutput/W/Adamoutput/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
t
output/W/Adam/readIdentityoutput/W/Adam*
T0*
_class
loc:@output/W*
_output_shapes
:	

1output/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@output/W*
valueB"     *
dtype0*
_output_shapes
:

'output/W/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@output/W*
valueB
 *    
Ŝ
!output/W/Adam_1/Initializer/zerosFill1output/W/Adam_1/Initializer/zeros/shape_as_tensor'output/W/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@output/W*

index_type0*
_output_shapes
:	
˘
output/W/Adam_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *
_class
loc:@output/W*
	container *
shape:	
Ä
output/W/Adam_1/AssignAssignoutput/W/Adam_1!output/W/Adam_1/Initializer/zeros*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
x
output/W/Adam_1/readIdentityoutput/W/Adam_1*
_output_shapes
:	*
T0*
_class
loc:@output/W

output/b/Adam/Initializer/zerosConst*
_class
loc:@output/b*
valueB*    *
dtype0*
_output_shapes
:

output/b/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/b*
	container 
ı
output/b/Adam/AssignAssignoutput/b/Adamoutput/b/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
o
output/b/Adam/readIdentityoutput/b/Adam*
T0*
_class
loc:@output/b*
_output_shapes
:

!output/b/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@output/b*
valueB*    

output/b/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/b*
	container *
shape:
ż
output/b/Adam_1/AssignAssignoutput/b/Adam_1!output/b/Adam_1/Initializer/zeros*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
s
output/b/Adam_1/readIdentityoutput/b/Adam_1*
T0*
_class
loc:@output/b*
_output_shapes
:
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w??
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *wÌ+2*
dtype0
ê
'Adam/update_embedding/emb_matrix/UniqueUnique3gradients/embedding/embedding_lookup_grad/Reshape_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
out_idx0*
T0	
Ċ
&Adam/update_embedding/emb_matrix/ShapeShape'Adam/update_embedding/emb_matrix/Unique"/device:CPU:0*
T0	*'
_class
loc:@embedding/emb_matrix*
out_type0*
_output_shapes
:
ĥ
4Adam/update_embedding/emb_matrix/strided_slice/stackConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB: *
dtype0*
_output_shapes
:
¸
6Adam/update_embedding/emb_matrix/strided_slice/stack_1Const"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB:*
dtype0*
_output_shapes
:
¸
6Adam/update_embedding/emb_matrix/strided_slice/stack_2Const"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB:*
dtype0*
_output_shapes
:
Ö
.Adam/update_embedding/emb_matrix/strided_sliceStridedSlice&Adam/update_embedding/emb_matrix/Shape4Adam/update_embedding/emb_matrix/strided_slice/stack6Adam/update_embedding/emb_matrix/strided_slice/stack_16Adam/update_embedding/emb_matrix/strided_slice/stack_2"/device:CPU:0*
end_mask *
_output_shapes
: *
T0*
Index0*'
_class
loc:@embedding/emb_matrix*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
ĉ
3Adam/update_embedding/emb_matrix/UnsortedSegmentSumUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape)Adam/update_embedding/emb_matrix/Unique:1.Adam/update_embedding/emb_matrix/strided_slice"/device:CPU:0*
Tnumsegments0*
Tindices0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
£
&Adam/update_embedding/emb_matrix/sub/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
$Adam/update_embedding/emb_matrix/subSub&Adam/update_embedding/emb_matrix/sub/xbeta2_power/read"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@embedding/emb_matrix
Ĵ
%Adam/update_embedding/emb_matrix/SqrtSqrt$Adam/update_embedding/emb_matrix/sub"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
ş
$Adam/update_embedding/emb_matrix/mulMulVariable/read%Adam/update_embedding/emb_matrix/Sqrt"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
?
(Adam/update_embedding/emb_matrix/sub_1/xConst"/device:CPU:0*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
valueB
 *  ?
Â
&Adam/update_embedding/emb_matrix/sub_1Sub(Adam/update_embedding/emb_matrix/sub_1/xbeta1_power/read"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
Ú
(Adam/update_embedding/emb_matrix/truedivRealDiv$Adam/update_embedding/emb_matrix/mul&Adam/update_embedding/emb_matrix/sub_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
?
(Adam/update_embedding/emb_matrix/sub_2/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ĵ
&Adam/update_embedding/emb_matrix/sub_2Sub(Adam/update_embedding/emb_matrix/sub_2/x
Adam/beta1"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@embedding/emb_matrix
ġ
&Adam/update_embedding/emb_matrix/mul_1Mul3Adam/update_embedding/emb_matrix/UnsortedSegmentSum&Adam/update_embedding/emb_matrix/sub_2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
&Adam/update_embedding/emb_matrix/mul_2Mulembedding/emb_matrix/Adam/read
Adam/beta1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë

'Adam/update_embedding/emb_matrix/AssignAssignembedding/emb_matrix/Adam&Adam/update_embedding/emb_matrix/mul_2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking( *
T0
Ġ
+Adam/update_embedding/emb_matrix/ScatterAdd
ScatterAddembedding/emb_matrix/Adam'Adam/update_embedding/emb_matrix/Unique&Adam/update_embedding/emb_matrix/mul_1(^Adam/update_embedding/emb_matrix/Assign"/device:CPU:0*
use_locking( *
Tindices0	*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë

&Adam/update_embedding/emb_matrix/mul_3Mul3Adam/update_embedding/emb_matrix/UnsortedSegmentSum3Adam/update_embedding/emb_matrix/UnsortedSegmentSum"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
(Adam/update_embedding/emb_matrix/sub_3/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ĵ
&Adam/update_embedding/emb_matrix/sub_3Sub(Adam/update_embedding/emb_matrix/sub_3/x
Adam/beta2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
è
&Adam/update_embedding/emb_matrix/mul_4Mul&Adam/update_embedding/emb_matrix/mul_3&Adam/update_embedding/emb_matrix/sub_3"/device:CPU:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*'
_class
loc:@embedding/emb_matrix
?
&Adam/update_embedding/emb_matrix/mul_5Mul embedding/emb_matrix/Adam_1/read
Adam/beta2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë

)Adam/update_embedding/emb_matrix/Assign_1Assignembedding/emb_matrix/Adam_1&Adam/update_embedding/emb_matrix/mul_5"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking( *
T0
Û
-Adam/update_embedding/emb_matrix/ScatterAdd_1
ScatterAddembedding/emb_matrix/Adam_1'Adam/update_embedding/emb_matrix/Unique&Adam/update_embedding/emb_matrix/mul_4*^Adam/update_embedding/emb_matrix/Assign_1"/device:CPU:0*
use_locking( *
Tindices0	*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
Á
'Adam/update_embedding/emb_matrix/Sqrt_1Sqrt-Adam/update_embedding/emb_matrix/ScatterAdd_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
ç
&Adam/update_embedding/emb_matrix/mul_6Mul(Adam/update_embedding/emb_matrix/truediv+Adam/update_embedding/emb_matrix/ScatterAdd"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
Ċ
$Adam/update_embedding/emb_matrix/addAdd'Adam/update_embedding/emb_matrix/Sqrt_1Adam/epsilon"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
ĉ
*Adam/update_embedding/emb_matrix/truediv_1RealDiv&Adam/update_embedding/emb_matrix/mul_6$Adam/update_embedding/emb_matrix/add"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
ï
*Adam/update_embedding/emb_matrix/AssignSub	AssignSubembedding/emb_matrix*Adam/update_embedding/emb_matrix/truediv_1"/device:CPU:0*
use_locking( *
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
Ë
ö
+Adam/update_embedding/emb_matrix/group_depsNoOp+^Adam/update_embedding/emb_matrix/AssignSub,^Adam/update_embedding/emb_matrix/ScatterAdd.^Adam/update_embedding/emb_matrix/ScatterAdd_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix

&Adam/update_cnn_max_pool_2/W/ApplyAdam	ApplyAdamcnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W*
use_nesterov( *(
_output_shapes
:

&Adam/update_cnn_max_pool_2/b/ApplyAdam	ApplyAdamcnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1*
T0*#
_class
loc:@cnn_max_pool_2/b*
use_nesterov( *
_output_shapes	
:*
use_locking( 

&Adam/update_cnn_max_pool_3/W/ApplyAdam	ApplyAdamcnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1*
use_nesterov( *(
_output_shapes
:*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_3/W

&Adam/update_cnn_max_pool_3/b/ApplyAdam	ApplyAdamcnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@cnn_max_pool_3/b*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0

&Adam/update_cnn_max_pool_4/W/ApplyAdam	ApplyAdamcnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_4/W*
use_nesterov( *(
_output_shapes
:

&Adam/update_cnn_max_pool_4/b/ApplyAdam	ApplyAdamcnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@cnn_max_pool_4/b*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0
?
Adam/update_output/W/ApplyAdam	ApplyAdamoutput/Woutput/W/Adamoutput/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_locking( *
T0*
_class
loc:@output/W*
use_nesterov( *
_output_shapes
:	
§
Adam/update_output/b/ApplyAdam	ApplyAdamoutput/boutput/b/Adamoutput/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@output/b*
use_nesterov( 
Ù
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam,^Adam/update_embedding/emb_matrix/group_deps^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W
Û

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam,^Adam/update_embedding/emb_matrix/group_deps^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W
î
Adam/update/NoOpNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam
W
Adam/update/NoOp_1NoOp,^Adam/update_embedding/emb_matrix/group_deps"/device:CPU:0
;
Adam/updateNoOp^Adam/update/NoOp^Adam/update/NoOp_1
z

Adam/valueConst^Adam/update*
dtype0*
_output_shapes
: *
_class
loc:@global_step*
value	B :
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@global_step

$embedding/emb_matrix_0/grad/hist/tagConst*1
value(B& B embedding/emb_matrix_0/grad/hist*
dtype0*
_output_shapes
: 
~
4embedding/emb_matrix_0/grad/hist/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6embedding/emb_matrix_0/grad/hist/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6embedding/emb_matrix_0/grad/hist/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
İ
.embedding/emb_matrix_0/grad/hist/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt324embedding/emb_matrix_0/grad/hist/strided_slice/stack6embedding/emb_matrix_0/grad/hist/strided_slice/stack_16embedding/emb_matrix_0/grad/hist/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
¤
'embedding/emb_matrix_0/grad/hist/valuesUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1.embedding/emb_matrix_0/grad/hist/strided_slice*
Tnumsegments0*
Tindices0	*
T0* 
_output_shapes
:
Ë
¤
 embedding/emb_matrix_0/grad/histHistogramSummary$embedding/emb_matrix_0/grad/hist/tag'embedding/emb_matrix_0/grad/hist/values*
_output_shapes
: *
T0
k
!zero_fraction/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
m
#zero_fraction/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#zero_fraction/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ŭ
zero_fraction/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt32!zero_fraction/strided_slice/stack#zero_fraction/strided_slice/stack_1#zero_fraction/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
ŭ
zero_fraction/valueUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1zero_fraction/strided_slice* 
_output_shapes
:
Ë*
Tnumsegments0*
Tindices0	*
T0
W
zero_fraction/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
p
zero_fraction/EqualEqualzero_fraction/valuezero_fraction/zero*
T0* 
_output_shapes
:
Ë
i
zero_fraction/CastCastzero_fraction/Equal*

SrcT0
* 
_output_shapes
:
Ë*

DstT0
d
zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

)embedding/emb_matrix_0/grad/sparsity/tagsConst*5
value,B* B$embedding/emb_matrix_0/grad/sparsity*
dtype0*
_output_shapes
: 

$embedding/emb_matrix_0/grad/sparsityScalarSummary)embedding/emb_matrix_0/grad/sparsity/tagszero_fraction/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_2/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_2/W_0/grad/hist*
dtype0*
_output_shapes
: 
²
cnn_max_pool_2/W_0/grad/histHistogramSummary cnn_max_pool_2/W_0/grad/hist/tag=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ĥ
zero_fraction_1/EqualEqual=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1zero_fraction_1/zero*(
_output_shapes
:*
T0
u
zero_fraction_1/CastCastzero_fraction_1/Equal*

SrcT0
*(
_output_shapes
:*

DstT0
n
zero_fraction_1/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:

zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

%cnn_max_pool_2/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_2/W_0/grad/sparsity*
dtype0*
_output_shapes
: 

 cnn_max_pool_2/W_0/grad/sparsityScalarSummary%cnn_max_pool_2/W_0/grad/sparsity/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_2/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_2/b_0/grad/hist*
dtype0*
_output_shapes
: 
µ
cnn_max_pool_2/b_0/grad/histHistogramSummary cnn_max_pool_2/b_0/grad/hist/tag@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

zero_fraction_2/EqualEqual@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1zero_fraction_2/zero*
_output_shapes	
:*
T0
h
zero_fraction_2/CastCastzero_fraction_2/Equal*

SrcT0
*
_output_shapes	
:*

DstT0
_
zero_fraction_2/ConstConst*
valueB: *
dtype0*
_output_shapes
:

zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

%cnn_max_pool_2/b_0/grad/sparsity/tagsConst*
_output_shapes
: *1
value(B& B cnn_max_pool_2/b_0/grad/sparsity*
dtype0

 cnn_max_pool_2/b_0/grad/sparsityScalarSummary%cnn_max_pool_2/b_0/grad/sparsity/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_3/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_3/W_0/grad/hist*
dtype0*
_output_shapes
: 
²
cnn_max_pool_3/W_0/grad/histHistogramSummary cnn_max_pool_3/W_0/grad/hist/tag=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ĥ
zero_fraction_3/EqualEqual=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1zero_fraction_3/zero*
T0*(
_output_shapes
:
u
zero_fraction_3/CastCastzero_fraction_3/Equal*

SrcT0
*(
_output_shapes
:*

DstT0
n
zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             

zero_fraction_3/MeanMeanzero_fraction_3/Castzero_fraction_3/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

%cnn_max_pool_3/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_3/W_0/grad/sparsity*
dtype0*
_output_shapes
: 

 cnn_max_pool_3/W_0/grad/sparsityScalarSummary%cnn_max_pool_3/W_0/grad/sparsity/tagszero_fraction_3/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_3/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_3/b_0/grad/hist*
dtype0*
_output_shapes
: 
µ
cnn_max_pool_3/b_0/grad/histHistogramSummary cnn_max_pool_3/b_0/grad/hist/tag@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_4/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    

zero_fraction_4/EqualEqual@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1zero_fraction_4/zero*
T0*
_output_shapes	
:
h
zero_fraction_4/CastCastzero_fraction_4/Equal*

SrcT0
*
_output_shapes	
:*

DstT0
_
zero_fraction_4/ConstConst*
valueB: *
dtype0*
_output_shapes
:

zero_fraction_4/MeanMeanzero_fraction_4/Castzero_fraction_4/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

%cnn_max_pool_3/b_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_3/b_0/grad/sparsity*
dtype0*
_output_shapes
: 

 cnn_max_pool_3/b_0/grad/sparsityScalarSummary%cnn_max_pool_3/b_0/grad/sparsity/tagszero_fraction_4/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_4/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_4/W_0/grad/hist*
dtype0*
_output_shapes
: 
²
cnn_max_pool_4/W_0/grad/histHistogramSummary cnn_max_pool_4/W_0/grad/hist/tag=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
Y
zero_fraction_5/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ĥ
zero_fraction_5/EqualEqual=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1zero_fraction_5/zero*
T0*(
_output_shapes
:
u
zero_fraction_5/CastCastzero_fraction_5/Equal*

SrcT0
*(
_output_shapes
:*

DstT0
n
zero_fraction_5/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             

zero_fraction_5/MeanMeanzero_fraction_5/Castzero_fraction_5/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

%cnn_max_pool_4/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_4/W_0/grad/sparsity*
dtype0*
_output_shapes
: 

 cnn_max_pool_4/W_0/grad/sparsityScalarSummary%cnn_max_pool_4/W_0/grad/sparsity/tagszero_fraction_5/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_4/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_4/b_0/grad/hist*
dtype0*
_output_shapes
: 
µ
cnn_max_pool_4/b_0/grad/histHistogramSummary cnn_max_pool_4/b_0/grad/hist/tag@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_6/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

zero_fraction_6/EqualEqual@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1zero_fraction_6/zero*
T0*
_output_shapes	
:
h
zero_fraction_6/CastCastzero_fraction_6/Equal*

SrcT0
*
_output_shapes	
:*

DstT0
_
zero_fraction_6/ConstConst*
valueB: *
dtype0*
_output_shapes
:

zero_fraction_6/MeanMeanzero_fraction_6/Castzero_fraction_6/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

%cnn_max_pool_4/b_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_4/b_0/grad/sparsity*
dtype0*
_output_shapes
: 

 cnn_max_pool_4/b_0/grad/sparsityScalarSummary%cnn_max_pool_4/b_0/grad/sparsity/tagszero_fraction_6/Mean*
_output_shapes
: *
T0
m
output/W_0/grad/hist/tagConst*
dtype0*
_output_shapes
: *%
valueB Boutput/W_0/grad/hist
u
output/W_0/grad/histHistogramSummaryoutput/W_0/grad/hist/taggradients/AddN_1*
T0*
_output_shapes
: 
Y
zero_fraction_7/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
zero_fraction_7/EqualEqualgradients/AddN_1zero_fraction_7/zero*
_output_shapes
:	*
T0
l
zero_fraction_7/CastCastzero_fraction_7/Equal*
_output_shapes
:	*

DstT0*

SrcT0

f
zero_fraction_7/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

zero_fraction_7/MeanMeanzero_fraction_7/Castzero_fraction_7/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
v
output/W_0/grad/sparsity/tagsConst*)
value B Boutput/W_0/grad/sparsity*
dtype0*
_output_shapes
: 

output/W_0/grad/sparsityScalarSummaryoutput/W_0/grad/sparsity/tagszero_fraction_7/Mean*
_output_shapes
: *
T0
m
output/b_0/grad/hist/tagConst*%
valueB Boutput/b_0/grad/hist*
dtype0*
_output_shapes
: 
s
output/b_0/grad/histHistogramSummaryoutput/b_0/grad/hist/taggradients/AddN*
T0*
_output_shapes
: 
Y
zero_fraction_8/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
zero_fraction_8/EqualEqualgradients/AddNzero_fraction_8/zero*
T0*
_output_shapes
:
g
zero_fraction_8/CastCastzero_fraction_8/Equal*

SrcT0
*
_output_shapes
:*

DstT0
_
zero_fraction_8/ConstConst*
valueB: *
dtype0*
_output_shapes
:

zero_fraction_8/MeanMeanzero_fraction_8/Castzero_fraction_8/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
v
output/b_0/grad/sparsity/tagsConst*)
value B Boutput/b_0/grad/sparsity*
dtype0*
_output_shapes
: 

output/b_0/grad/sparsityScalarSummaryoutput/b_0/grad/sparsity/tagszero_fraction_8/Mean*
T0*
_output_shapes
: 
ë
Merge/MergeSummaryMergeSummary embedding/emb_matrix_0/grad/hist$embedding/emb_matrix_0/grad/sparsitycnn_max_pool_2/W_0/grad/hist cnn_max_pool_2/W_0/grad/sparsitycnn_max_pool_2/b_0/grad/hist cnn_max_pool_2/b_0/grad/sparsitycnn_max_pool_3/W_0/grad/hist cnn_max_pool_3/W_0/grad/sparsitycnn_max_pool_3/b_0/grad/hist cnn_max_pool_3/b_0/grad/sparsitycnn_max_pool_4/W_0/grad/hist cnn_max_pool_4/W_0/grad/sparsitycnn_max_pool_4/b_0/grad/hist cnn_max_pool_4/b_0/grad/sparsityoutput/W_0/grad/histoutput/W_0/grad/sparsityoutput/b_0/grad/histoutput/b_0/grad/sparsity*
N*
_output_shapes
: 
R
loss_1/tagsConst*
_output_shapes
: *
valueB Bloss_1*
dtype0
P
loss_1ScalarSummaryloss_1/tags	temp_loss*
T0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
W

accuracy_1ScalarSummaryaccuracy_1/tagstemp_acc*
_output_shapes
: *
T0
T
epoch_1/tagsConst*
_output_shapes
: *
valueB Bepoch_1*
dtype0
N
epoch_1ScalarSummaryepoch_1/tagsepoch*
_output_shapes
: *
T0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ħ
save/SaveV2/tensor_namesConst*ä
valueÚB×%BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:%
­
save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
á
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1embedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1*3
dtypes)
'2%			
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*ä
valueÚB×%BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:%
ż
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
Ö
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%			*Ş
_output_shapes
:::::::::::::::::::::::::::::::::::::

save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
?
save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
?
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
ĵ
save/Assign_3Assigncnn_max_pool_2/Wsave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Á
save/Assign_4Assigncnn_max_pool_2/W/Adamsave/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
?
save/Assign_5Assigncnn_max_pool_2/W/Adam_1save/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ż
save/Assign_6Assigncnn_max_pool_2/bsave/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
´
save/Assign_7Assigncnn_max_pool_2/b/Adamsave/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĥ
save/Assign_8Assigncnn_max_pool_2/b/Adam_1save/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save/Assign_9Assigncnn_max_pool_3/Wsave/RestoreV2:9*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
?
save/Assign_10Assigncnn_max_pool_3/W/Adamsave/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ċ
save/Assign_11Assigncnn_max_pool_3/W/Adam_1save/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
ħ
save/Assign_12Assigncnn_max_pool_3/bsave/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĥ
save/Assign_13Assigncnn_max_pool_3/b/Adamsave/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
¸
save/Assign_14Assigncnn_max_pool_3/b/Adam_1save/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save/Assign_15Assigncnn_max_pool_4/Wsave/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
?
save/Assign_16Assigncnn_max_pool_4/W/Adamsave/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ċ
save/Assign_17Assigncnn_max_pool_4/W/Adam_1save/RestoreV2:17*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
ħ
save/Assign_18Assigncnn_max_pool_4/bsave/RestoreV2:18*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
ĥ
save/Assign_19Assigncnn_max_pool_4/b/Adamsave/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¸
save/Assign_20Assigncnn_max_pool_4/b/Adam_1save/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Í
save/Assign_21Assignembedding/emb_matrixsave/RestoreV2:21"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ò
save/Assign_22Assignembedding/emb_matrix/Adamsave/RestoreV2:22"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ô
save/Assign_23Assignembedding/emb_matrix/Adam_1save/RestoreV2:23"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
˘
save/Assign_24Assignglobal_stepsave/RestoreV2:24*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(

save/LookupTableImportV2LookupTableImportV2label_tablesave/RestoreV2:25save/RestoreV2:26*	
Tin0*

Tout0	*
_class
loc:@label_table

save/LookupTableImportV2_1LookupTableImportV2	out_tablesave/RestoreV2:27save/RestoreV2:28*
_class
loc:@out_table*	
Tin0	*

Tout0
?
save/Assign_25Assignoutput/Wsave/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ş
save/Assign_26Assignoutput/W/Adamsave/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĵ
save/Assign_27Assignoutput/W/Adam_1save/RestoreV2:31*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
 
save/Assign_28Assignoutput/bsave/RestoreV2:32*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
?
save/Assign_29Assignoutput/b/Adamsave/RestoreV2:33*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
§
save/Assign_30Assignoutput/b/Adam_1save/RestoreV2:34*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/LookupTableImportV2_2LookupTableImportV2symbol_tablesave/RestoreV2:35save/RestoreV2:36*
_class
loc:@symbol_table*	
Tin0*

Tout0	
Â
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/LookupTableImportV2^save/LookupTableImportV2_1^save/LookupTableImportV2_2
a
save/restore_all/NoOp_1NoOp^save/Assign_21^save/Assign_22^save/Assign_23"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1

	init/NoOpNoOp^Variable/Assign^beta1_power/Assign^beta2_power/Assign^cnn_max_pool_2/W/Adam/Assign^cnn_max_pool_2/W/Adam_1/Assign^cnn_max_pool_2/W/Assign^cnn_max_pool_2/b/Adam/Assign^cnn_max_pool_2/b/Adam_1/Assign^cnn_max_pool_2/b/Assign^cnn_max_pool_3/W/Adam/Assign^cnn_max_pool_3/W/Adam_1/Assign^cnn_max_pool_3/W/Assign^cnn_max_pool_3/b/Adam/Assign^cnn_max_pool_3/b/Adam_1/Assign^cnn_max_pool_3/b/Assign^cnn_max_pool_4/W/Adam/Assign^cnn_max_pool_4/W/Adam_1/Assign^cnn_max_pool_4/W/Assign^cnn_max_pool_4/b/Adam/Assign^cnn_max_pool_4/b/Adam_1/Assign^cnn_max_pool_4/b/Assign^global_step/Assign^output/W/Adam/Assign^output/W/Adam_1/Assign^output/W/Assign^output/b/Adam/Assign^output/b/Adam_1/Assign^output/b/Assign

init/NoOp_1NoOp!^embedding/emb_matrix/Adam/Assign#^embedding/emb_matrix/Adam_1/Assign^embedding/emb_matrix/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
ĜW
Const_3Const"/device:CPU:0*W
valueWB˙VËBċ˘Bĉ³µBċ¸Bĉµ·Bċ³BèBçBċBċĵBç¤Bċ½Bċ§Bä½Bĉ°¸BEBèħBĉ?Bä½Bè§£BèĤBä?Bè´Bè´ĦBè²BéBċŻBċħBĉ·ħBċşBéBĉ²­Bç§BèŻBéğBèBċ?Bĉ­Bç¨BäğBéBè²BéBċ­BéBċ¨ħBä¸BèBċBç?BçBĉ³Bè˘BèBċ·BXBèµBċBċ?BĉİħBċ°BçĥBéBéĞBċħBĉBçĥBçĞBĉĥBĉ½?Bè?¨BċBċ?BĉBċıĥBäğĴBèBċ°ıBĉ¨¨BĉĦBċşBĉBéĥBè½?BċBĉ˘§BċBèż­BçğBè??BċĤBċ?Bç­Bĉ?Bĉ½BéBĉBċ¸BċżBéBĉĵ³BéBé²BċżBĉĥŻBĉŻBċ?BĉBĉ˘Bè½żBGBçBéBċBè§ĤBĉBċ¤Bĉ?·BèBçżBé³Bç³BéŞBèBċ´BċşBĉBĉĴBċĤBç§Bä¸Bċ·˘BéBéBċİBĉĦĤBċBèBĉ§Bĉ?BèĦ˘BċŞBĉĴBċ¨BĉBċBċ¤BĉBç?­BéİĴBĉĵ BéBċBĉ³BèBè?BäğBċĵşBç­Bċ²Bċı²BĉĴ§Bè¨Bĉ½BĉBè˘BèµµBĉBċ½İBĉBċBĉBéİĥBċ§Bä¸¤BċBäĵBċ·ĤBċBèBèżBäğBĉ¸Bäş¤BċĤ?BèŻBĉħBé½BéğBċşBĉĴ?Bç˘Bè°ħBéŞBçBé½BéşBĉ´ŞBċ?ĥBéİ?BċĤBċBäĵBċ??Bċ§BèŻ·BċİBé²BèŻŻBè½ŻBĉĞBQBĉ²½Bċ¤ıBçş¸BĉŻBċ¨Bç˘?Bċ?ĦBĉ³Bĉ³BçBĉĤBĉĦBĉBçĦĴBoBèBè½İBç¸BĉĴĦBċ?Bçğ­BċBèĦBé˘BèBĉĦĥBèBċ?Bä½BċĦBċBĉŻBç?Bç˘BéBĉµBĉBċBĉBèBĉBċ³Bĉ£BĉBèżBä¸´BĉİĦBéBĉµBċżBċBéBċ¸BçBçŞBċĤBċşBċBĉ§Bċ½BċğBèŻBċ¸?Bĉ­Bç¨ğBèµĞBèħBċ¤BäğBċ?ŞBç¸BċşBç´ Bċ?BċBé­BïĵBéB<unk>Bç¤?Bé˘BċBç£BçBċ?Bĉ?BċışBçBċ³BçĞBKBĉ°Bĉ½BèĦBĉĴ˘BċĵıBċBċ?Bä?Bè?Bä½Bçğ§BèżBèBĉ?§Bĉ´BċBĉBċħBċBċ¸BċĦBĉ²ğBċ˘BçBċ?BĉĴ£Bċ¤ħBç³Bé?BĉBċ£°BĉBé˘Bċ BċĤBċBĉı?BdBç½BçĵBäşBä¸½BĉBéĦBċ²˘BçBtBċĥBçİĥBĉ£ Bċ¨BéBèBèBċ°BçİBċ´Bċ˘Bĉ°BĉBċ¤İBċ°BéĥBċşBç²Bé?ŞBċBĉ¨BéĞBĉĤBçBĉµBĉ½BċħBäıBċşBé¸BċBċBċ¸BĉħBéµBZBäżBĉİBċ?ĦBċ?£BċBèżBĉ°BéĤBċBèŻBSBċ?·Bè·BĉĦBċĦBâ˘BċBèBċĤBċŞBċğBĉ˘BçĞ Bĉ¤BäğBċ¸¸BéBéBĉ´ğBç½Bç¨³Bċĵ Bċ¤Bä?Bç·Bĉĥ§Bç²¤BċğBċ­Bċ°BäşB2BçğBċ¤Bç§Bĉ?BĉĦ£Bç²BĉBé˘BéĵBè?½BĉBċBèBċBċ½Bċ£ĞBĉħBĉBxBä½żBé´BċıBċĞBċĵBqBéBċĴBĉ­BċşBéŞBç?BçğżBïĵBéBä¸BéĦBċBĉBèżBè§BĉBèBĉ°´BYBĉ ŞBĉ§BĉBĉħBċĦĞBċşBç¸Bċ½­BĉBĉŻBçĦBéBçBç?Bċ˘BĉBçş§BèĦBçĦ?BéBĉ°BċBċBĉ³¨Bè°BĉBè ĦBċĴBċBċ BéıBĉBĉBé§BċBċBĉBċŞBċħBéBĉ?³BĉżBèµĥBç?¤BèĥBèŻğBéBĉµ´BċİBIBċ?BçşŞBèBçşħBçĞBċŻBèBċ²Bĉ­BĉBĉ­ĤBĉBhBĉBç?Bç§BĉBċıBĉBèBċ¤§BRBċBĉBĉŻBçżBéBċµBçğ´Bĉ²§Bĉ´Bċ?BéĦµBĉğBé¸żBé?Bĉ½Bç¨BċşBèBç?Bç§Bċ˘¨Bĉ§Bé£BéBċĵBĉ³BċĞBç­?Bäı³Bĉ¨Bċ³ŞBċ¤BĉğBĉşŞBè­BéŻBçBçğBèBèBä¸ğBċ­Bċ BèBĉ£Bĉ Bè?BċĵBĉ´Bĉ·?BĉBlBèBĉĞBĉşBè·BfBċ?BèħBçBċĥBïĵBäğğBçBç­BĉBċBè?Bè´£Bĉ¤Bé³BĉµŞBç?Bĉ²Bċ³ĦBĉğBçBé£BèBèBNBċBè·Bè°˘Bĉ ¸Bĉ²BçĤBĉ?ĦBç?şBĉħŞBèŻBé˘BĉħĦBçBè§Bĉ˘Bè?Bè¸Bé·Bċ§Bè³BĉıBäşBċğBé??Bè·Bĉ­ğBèBċ?Bç§­BçĞBċĤBç?BçBĉBĉżBċ?BĉBäĵBéBċĤBç½BéµBċ·?BçżğBċBċBĉBċ°ĵBċħŻBċ¸BċĴBĉĵŻBä¸BċĵBĉşBĉBç?BĉıBċĤğBĉ³³Bè²Bċ¤Bċ?˘BċBä½ Bĉ¨BéBĉ´§Bç˘Bç ´Bĉ²³BċĞBçħBä¸?Bè?BĉµBċ­Bç˘BäĵBèBĉıżBĉBĉ²?BĉŻBé¨Bċ·?BéĞBĉBäğBiBçĥBäĵŞBĉĥµBçğBĉ­˘Bĉş§Bċ¤ĞBċŞBĉ³˘BċµBċ·²Bċ·Bċ?Bç¨żBçBçBèŻ?BċşBè½ğBäżĦBĉĦBċ?½BäşBċBèżBéBĉµĤBċ³¨BĉŻBçBäşİBçş˘Bç??BĉżBç˘Bç·BċBä¸Bä¸ıBèŻ­BéĤBĉBĉ­ŞBèBä¸Bè??Bç³BèĞBċBċĵBċ³BĉBċ¨BéBäşBçŞBèŻşBè°Bċ?BèBè?¤BèµBäżİBèŻBé­BéŞBçħ³Bä¸şBéBċBèBèĥBċBĉĴ²Bċ?Bè§BĉĵBä¸BéİıBäşĴBéŞBĉ˘Bç½BäĵĤBĉBċBéı°BèŞBĉşBèıBĉBċ·Bäğ²Bè?BçBĉ³?BçŻBéBè½½Bċ?½BéBĉİBċĵBè?BċBċ¨BéBċBċ½BèBé¨BéBèżBè?İBé?°Bè·BċħBċ´BçıBċ?BĉĥBèħĞBè´BèBbBċĵ?BéıBç·BéşBĉ­?BçĤBéĥBċ³Bĉħ?Bäğ·BéBċ²Bè´§Bċ§Bè?BçBĉ²BĉBäşBä½³BċBç§BĉıBĉ¸¸BċħBçBċBèBä½BçBċBĉ°Bĉ?BĉBċBċBäğBuBċ£ĥBĉµBĉ˘Bè??Bè£BçĤıBç¨BċBċığBçİşBçBċB1BäıBèŻ?Bäż?BĉĦBċBċ¤BçİżBċ°Bĉ?BĉBçşĤBéBĉBċ?BéBĉİBäıĦBĉBċĥBĉ ıBèBċżµBç§Bċ·B5BçBèBçBċżBéBéĤBċBĉBäş¨BFBä½BçŞBéĴĵBĉµBċBè²BĉBçğĵBéBĉBéBçŻBĉ½Bċ¸ĤBċ²Bċ?BĉBĉBĉĴBèŻBrBè£Bĉ­£BnBWBĉ ?BċBè˘ĞB#BéBĉ·BäıBç?BçµB)BéBĉBċ·BċıBèBç­Bĉ?BäıBäżBċıBèĤBè´?BĉĤ¨BéµBç­ıBçşĞBèżBĉĥBéĤBèŻ˘BèBè?BwBĉ½˘BċBéBċBéŞBè§BċĦBĉBĉĴBçıBpBĉ·Bċ¨BèıBçBçĥBċ¸BèBè?­Bĉ ·Bä¸BèĦBç´BçĴBéĵBĉ­BéµBé?BċµBċżBéBèŻĤBċ²BèBċ?ĞBċ?BċBĉ·Bç§ŻB(BçBéBçĤBċ¸Bè?´Bċ°BèBċĵBçBċBè£BçBçŻBċ¤Bè?BĉBèşBĉ´ħBċBç§°BèĞBä¸Bċż Bċ­BçĞBċBĉĥBċ´BéBç½BĉBċ°BéBé¤Bĉ§Bċ§BċBä½°Bĉĵ?BĉĥBè¸BĉıBċĞİBçĞ?BċŻBċ·ħB7B,BĉBç²Bè?Bç´ŻBä½Bé¸BċşBċşBé˘Bä¸BçBĉ½BċŻıBċBċżBè½BäıBä¸°BċBçżBèBéğBèBéBé­Bĉ¤Bċ BçĵBé´BçĤBèşBċBċ­BèµBéBéB9BJBè´¨BéşBĉBçBèŻ´BéµBèBċŻ¸BċBéĥBċ?Bċ·BäğĥBçBABé½Bĉ?Bċ?BèŻBäĵ BċĦBç?BċğBċBċ¤·BèşĞBċBç¤Bä¸BäıĤBĉBċBĉ´²BèBĉğ´Bèµ°BéBä¸²Bċ²¸Bä¸­BèBċ§BċBċğBċ²İBĉ²BéBèŻBċ­BĉBçBç£BçBċ?ıBċBĉBċ¤BĉıBèĦBĉ²żBċ˘Bè?²Bċ£Bé³Bċ­İBĉBĉBçĞBĉŻBéğBèż·BĉBé?­Bç?BĉżBçBéżBé²BéĤBè?żBĉ·Bä¸BċBèħıBċBMBäğBçşżBéBĉBċ´Bċ?Bċ¨Bċ·´Bĉ?Bè´µBè°Bċ˘BĉBċ¤?BċĵBĉŻĞBċ? Bĉ­BéBĉ²Bé¸ĦBċĤBċ BçBĉBċBċ?BĉBçĴĴBċ­Bċ²ĞBĉ´Bċ?BïĵBçıBċBé²BçBçŻBé?ħBéħBĉ´BĉBé²Bċ¨BĉğĦBèħBċğBäıħBèBä¸BċBç§BçµBè´­BċBç?BçBċBċ ĦBçğBäğBé­BèĴBĉBçğBç BĉBè½ĴBçğ?BĉŞBç­BçżĵBçĴBĉŞBĉ·Bċ§¨Bè´ĤBċŻBïĵBĉĥBç¤ĵBèBçBċµBèBċBċBċ°?Bċ½Bċ¸Bè?ĦBċşBĉğĤBċB<go>BċBäğBĉ°BèBäşBçBċ£BèBçĴBéşğBċ¸Bĉ·ğBèBĉĦBéğBçBċżĞBä¸Bċ°Bç§ğBéBĉBċı¸BċżBċ?BċBè°BĉBĉBċŻ¨BċBċş­Bè´Bċ§BèŻBèŞBéBĉBċBĉBċşĤBĉ¸İBĉ?Bċ­Bĉ?ĵBċ˘BéĴBè?BçğBĉ¨Bĉħ¤Bċ²ħBċ?ĥBé¸BéBċıżBç BċBèżBéBĉ­Bċ¸BèµBĉħBèĥBċ²BĉĥĤBèĴBċŻBçB;BĉBċ¨BċBç¸Bç˘§Bċ?Bä¸Bç­Bĉż?Bĉ˘BçĤBèBèĥBçħBċ?BäıBċŞBçğBè´¸BéĦżBè½BĉżBèµ·BèBĉıBèıBĉBĉ²Bċ Bċ³°Bè·ŻBçBä½Bċ§BéBċBèBċİBçżİBçİBċBçğBèĥBçBĉBċ˘BċBèżBċ°Bè·¨BċŻğBċBĉBĉħĥBĉ¸ BĉBĉ·Bé?BċĵBĉĥBçĞŻBèşşBè½ĤBéğBç§BĉBĉżBĉ BçBĉĵBçBĉĞBgBċ?Bä½BċBċ£BçBċ°BèĦ¨BéĦĥBéĤBĉ²ıB?B<eos>Bç§BèBèĦBĉ°BĉĥBċ°Bç´ĞBèBçżBċBĉ?Bĉ³¸Bè·BéİżBĉBĉĦBĉ´?BäıBċżğB?BĉBĉ¸ŻBĉBĉĤBĉ²Bĉ¤BèBLBĉBĉBċ¸BĉĥBĉ´ByBè?BĉĦBċ··BĉBċŻżBé˘BċıĵBèĦĦBé?Bè?Bĉ¨Bè·ŞBċ¸Bç³ğBäğ½BċBĉµBċ?Bè§BċĞBè½Bé?şBé¸Bĉ BçĵİBçğBċ·Bċ¨BäıBċ °Bä¸?Bċ´Bċ˘İBé´BçğBé¨BċBç?BçBĉ´?BvBç?¨BçBċ?Bĉ°BCBé˘Bċ¸­BĉBċ²­BċBè´·Bĉ¨BċBċ BċħBèĦBċĞBĉĵBèĴBçĴ¨Bĉ?BéİğBċBĉşBċBèżĤBċ¨BèŞBĉ?Bĉ³½BċİBç£¨Bç³Bç Bċ¸Bè´¤Bċ´Bè?Bè?°Bçĵ¸Bè?şBèBéİBċĤBċ£BĉBċ²Bĉ²ĦBċBçĦBċ´BéğBĉĦ?Bç?BĉBçğBçż BçBċż½BéŞBçıBċBè§BċBĉŻBĉİBċ?BçBĉBĉBä?ŻBäğBċBkBĉ½­BçĤğBĉ¤Bĉ·ĞBçħBèşBĉ¨ĦB?ğBéBċ³BċBè?BèBçBéBéBċŻĵBè´Bĉ°BéµB&Bäş³BċBĉ?Bç¨·Bċ­BĉĤBĉ˘°BèŻĥBé˘Bé¸Bç²?BĉĵBċBċBċżBèBäżBĉşBċ£BèĦBçĞBç§Bé?BèħĦBçĥĤBéżBè´BèBç­Bè?·BéĦ?BċBUBċ°BċBċ¤´Bĉ­Bċ­BéBç?ĦBé˘Bè£ħBéBċşµBèıBĉ?µBċĦBè§BċĥBċĴBĉ´BäĵBäşşBċBéşB4Bäı BċİBé?żB6Bç­BèBçBċBçşşBĉĥBèĦ£BçBBBè·³BçğBĉ£µBĉğİBç½?BĉŻBéİ°BéğBéĦıBèBäı°BçĴĵBĉĤBċħBĉ˘Bè?°Bĉµ?Bç´˘BĉµBéħBç?ħBéBĉĥ²Bä¸BçŻBĉĦBçµBĉŻBçBçğBĉŻBèBĉ½ĵBè²BċBcBċ£Bċı´BĉBĉBéBèBèħBċ?BçşŻBä¸BçĥBĉBċŻBè?Bé BċBċħBĉ¨BçİBĉ·ĦBäğ¤Bĉ BéBé¸Bċ??BäĵBè´˘BĉBèBç Bċ­BçBPBé?²BĉħBéĦğBçBĉŞBĉ£ħBċ¨BċBçĤBĉ§½Bĉ Bċ²Bċ¸Bċ?Bĉ£BċĤBè²BċĞBèBäğżBċ¨BċŻBĉğ¤B<space>BçBĉĦBç§ĤBé²BĉŻBĉıBèĴBĉĤBéBċBçBĉħBè§Bè°BĉBéBè´İBçBé¸­Bĉ¸BċBè´şBċıBĉ´BéĵBĉBĉBĉ³?BĉBè?ıBċ?³BäşBċ?¤BĉBċ§Bĉħ BĉşBĉBċ³ĤBĉ£?BéşBäĵ°Bċ²³BéBċBċBĉżBĉğBċĤBé£BéBéBċğBċ?½Bé˘BĉBĉĵBĉµBéBċBċBĉħBĉ¨BçBċBċBċħBċ°½BĉħBçğİBé²¤BċBVBċBċ¤ŞBéBċBĉĥBċ°BçBĉıBċĦBäıBĉğ¨BèŻBè?¸Bè˘Bé˘BèBĉ¨BċĵħBċ??BéĦşBéİBäĵBĉşBmBèµBèħŞBè£Bċ°¤Bċ¸BċħBé¸ BċBeBĉ¸ĦBèħBçĴBèBċ½BċBéİBċŞ³Bĉħ½BĉBèµBçĵBċħBè­BéBċBċBäĵ´BċĵBċħBèżŞBç?Bè°Bè?˘BéŞBç²BéBHBç¤şBèBé˘Bä¸ŞBĉ²BèżBè?B3BċBċı³Bé·BçğBĉBèBċBé²BĉŞBċ£?BĉBċ³BèBéıżBçBċ?˘BĉµİBéBċ°BċğBĉBċBċBĉ·BèBéBĉBèµBċĥBĉ?BċŻBèŻBäĵ½BäĵĵBéB0BĉBèĥ£BċşBċ?żBċ?BçĵBċ­Bäğ£Bç˘ħBçĵBçBĉğBċĤBċBċğĥBĉ BċBç?Bé¤BċĵBċŞBĉBċ³BċBéBçBĉBċĤıBĉĥBĉ Bĉ´Bç´§BéBĉ¸BĉBä¸BäıBċŻşBċ¤BDBèżBĉ£Bċ¤BçğB8BçżBċ½ħBé BäĵBĉ­¤Bċ·Bé²BäĵBĉżBäş­BĉBèżBĉ´Bċ°ħBċ BċĵBċ§Bċ?BèŞBzBċBä?żBè°·B?BċżBċ°BäıBéBċ½ĤBçĤşBéı¤BċğşBèŻBċ¤BéBĉ˘¨BĉĤBĉ²?Bċ¤¸Bĉ·³Bċ?Bĉ³BċşBèĥ³BèżBċBċ­ĤBè°ĤBċ½Bĉ³BċĞBéBèŻBĉ ĵBè´ıBçĞıBċİşBċ­BċħħBçBċ½˘BĉBèżBçBċŻBĉBçğµBĉ?BéħĵBĉ¨ŞBéŻBċ Bċ­¤Bç­BĉBĉ BéBTBċşBĉBċ³ğBĉBċBĉBè³BèBéBĉŻBċµİBĉBè?żBĉ°¨BĉħBäş§BçBĉıBċĥBè£BéBäğ?Bĉ ĦBċ˘BĉBĉĥżBé£BĉĴBçħğBçĵşBäşBċħżBä?BéBèĤBĉ£Bċ°Bċ?ıBċİ´BçBĉBċŻBèµ£BĉżBĉ··BċŻBçĴĤBäşBéBç°BèµBċ²Bċ?´Bç?BĉBċBèµ BéğBçĤBċş·Bç­BċĦBéĦBĉŻBċBäıBċŻBĉĤBċB/BċşBĉ°BċBĉBç¨Bé£Bé?BċBĉBċ¨Bè?Bç£BċBèĥBç¨Bç¨Bċş§Bċ?BĉBç°BċBĉBéBOBċBċ½ğBċżBĉ²Bç¸Bċż§BäĵBèŻBĉ²BċµBèĞBïĵBĉ˘ŻBèBè´?BċBä?Bèµ¤Bĉµ Bċ­£BċŻBĉµBéBċBċ˘Bè¨BĉĥŞBçBèBäĵŻBsBĉ?BjBäş²Bċ·Bċ²BĉĵBé³BäğBĉ³°BĉżBé£Bĉ§BĉBĉ·BĉħBçĤ?BaBéĥBé´BäğŞBĉ¸­B<pad>BçıBä?¨Bĉ´ĵBċ£¤BçĦBċ³BèĞBè½BĉµBéBċĵBĉ Bäş?BċBçBĉBçş³BäżşBé?ĥBċBçğBċ?Bé?ĵBĉ?*
dtype0*
_output_shapes	
:Ë
Á
Const_4Const"/device:CPU:0*ô
valueéBċ	Ë"Ĝ8            Ó      ´       2                  (            Ù      Â      ï      Ŝ       ĉ      S            q      8             û      Î       Ú                   ä            í      Ĵ      Ì      ŭ      Ä      â      :      ş      i      [       y       f       ¨      Ç      p      C      ?      ş      e            D      Ĵ       À                        |      =      J            	      Ó      x      Ù      ö      F      ÷       $      T      Ş      Ì      Ĥ      Ċ            )      í                         c            J      d      M             Ë                  g      2            0            F      ù            @      ?      u      .            Ħ      á      Ç      s            n      O      {            §       >            M      ç      -      Ğ            x      ğ       z      Ħ            :             ?      K      ˙      À             .      n       ş       ĵ             Ê      û      f      e      i      r      ë                  à      <      U      -      v      Í      M      `      â      ?            ë      #       u      £            r      {      ;      ?       <      [      Ä      3       ü      a            è      Í                          ;      İ      '      z      °      ı      E      J            ?            5      9      &      ğ      É      #      5            #      Ĉ      Ŝ      I      ġ      ö      à             ¤      +      N      m      Ö      -            v      ú            T      O      7      V            A      d            Ü      Y                  °       `      ĉ      ħ             d      f      ­                   z                   Ŭ      S      T                  ğ      
      S            P            ˙      ?      V      ¤      ?      ·       v                  m       (       ı      v      ß      Ŝ      ¨      8      È            q      +      è      .      Q      Q                        Ô       ?      (      ~      :                   Ŭ            "      §             B       ë                          :            B      ä      ×      A            Ô      n             ,            Ê      \      o      C            q      Z      4      ­      0      (            á      Ê      E      ?       a      j      ĉ      c      *            Ò      Ş      N      Ĉ      ´      ĉ      +            9             C                  v      	                   Ò      ÷      È                   ¤      Ĝ      á      î      F                    Ü      v      ^            Í      É       Á      `                                     ?      Ö      <            ·      /      Û            Â      ĝ      ĝ       È      ħ      W      ĝ                  u      X      7      Ġ      Ü      6      =      ô      p      V      :      Q      Z      =      [            £       ë      İ      K      ï      0      /                  c            È                  ?            ù      Ġ      @      Ú      Î      ?      /      Í            K      ŭ      =      ú            Ò      E             ˙      Á      D      ġ      á      c       ô            G            Ċ      .      í      û      &      £            W            !      ²      p             í      ô            ì      6                         l                         I      >      }      W      ]      Y      R      ¨                        Ú      î      2      ñ      g      ?      ,      j      -      î            ä       y            (            l      H                  %             |      è                  Ħ            ;      N            Y       Ä      _      È            °      b      H      §            _      F      Ï      D            g      G             n      q      !      R      À      9      ß                        "      ĥ      è            ı      H      P            Ş      Ì      Ĵ      ñ      b      ?            ?      >      ş      Ç      Ġ      ö      X      Á      P      ĝ            Ġ      x      ³            :      Ż      ħ             ó      r            Û            _      B      §      [      d       ú      ò       i      Q      û       ù      S      §      Z      Ö      O            Ĥ            û      ¤                  É      r             ²      ˙                         Y            Á      Ó      Û       h      â      Ĵ      ³      ~            ı      Ş      °      t      O      G      Ħ      
             B      Â      ²      #      Ĉ                  Ì      !      '      j      f      0      q      ¸            ç      r      v       ?      Ï                  {      İ      "      -      P      &      £                  X            ë            Ï                  ö       8      "            :      ^      T      q             ż            G      ·            ċ       l      °      ³      F      İ      ]                   ô            A            µ      o      Ż                  }      ï      l      °      ¤       e            y      l             Ċ      -      ˘      ¤      	       à      Ú      Ĉ      §      7            ¸      Ó      ?      s      ?      k            Y      	      ^            ˙                         ż      ?                   x      Ç      6      İ      ^      0                   {      ĵ            }             ŝ      Í      {      ?      C      Ó      ~      /       7      ß      o            ?      ħ      ˙                  C       *      ×             h      g      é       C      ż      ­                    .      x       +      ö      a      ì            ü      Q             Y      0       ĵ                        W      ÷            ˘      ó      ğ            \      ˘                  ·      ä      }      G      ĉ       ë                          ê      Ñ                         	      w            z      É      p      ë             F      Ğ      Ĵ      Ġ      i                  w      V      T      ?      L            c      V            E      ê      Á      À             ħ      ó      ;      1      ×            `      z      1      ù             k                    §            £      ¨                   à      e      M      x            H      K      <            ü      x                         S      ?             Ê      Ĥ      9      X            b            ?      @      )      ż       ½            E            =      ğ      ĥ      :      y            @            L      é            s             J       Ô      ?      5      Î            d      K       i      I            ú      ċ      %      .      1      1      8      É      P      ĥ      ù            ½      î      r      À      ,            |      p            4             V      ^            Ü      ê      \      Ċ      è      ¨      Ç            ĵ      "      /      b      °      g       ;       Ġ            À      X      ŝ      n            5      =      A       I      k             Q      ñ      h            ò            j      ÷      l      !            Ġ       R       }      Y            z      a      9      ô      ÷      Q      Ĉ              ĝ      M       Í      ä      /            ñ      j       I      È      #      u      J      R                  `      #      ^            Ĉ      Ĝ                  &       F      ŭ      W      £      x      ß            ş      Ë      B      
      D      (      ü                         p      L      2      o      ¸       ĉ             [            +      ²      p            ?      }      À      U      *      ĥ      k      L      Ĥ      ×       <             ·      *      C      ç      ċ      g      ½      ŝ            z      Ë      İ      h             ä      A      ċ      ³      ı      ¤      M            T      m            b      ç      Ğ            ÷      y            O            ½      Ü       ?      R      ġ       (      Ĝ             $       ı            v      r                  ğ            ?       A      W             {      X      7      Ë      Z      $             U      ~            Ó      k            s      H            ]      2      Ú      Â       ]      ż      Ò       6      	      Ħ      d      ù                   ê       n      ?       è            Ü      @      ç      S            ò      m      G            7       ]      ħ      ?      ²                  ä      á      Ŝ      Ñ      r      é            e      h      >      â             Ğ      Ĝ      n            h      ?      Ó       T      ħ      %      Ğ      Ż            Î            #      d      L              K      Ġ      J            $      Ċ            Ì      /      ?      Ŭ      Ş      j      7      &      v      o      ?                               5       Ĝ      ì      Ï      ?             ?             ´            ?             $      ï      d             ğ            >       V      ?             à      "      ½      /      É      ¸      Ç      W             ?      n      Ŭ                               ċ      D      Ş      i      w            Ç       ˘      ?      `      u       °      |             \             8      k      	      &      ß                          K      Ê      ĝ            Ë      0      R      Ñ      ]       ]      ­                  ?            o                     $      8      %      ħ      O      t       ˘      <       Ë       \      ï                        6      <      x            ?            Z      [      °      D      Ù                   y      Í            µ            Ĥ      %                  ô       ş      j      C            L            `      ó      P      ?      ĥ             È      e      ñ             Ĵ      ş                  ?            Ż      É      s            Q      w            |      í             k      $      ì      §      û      i             ´      L            ġ      B            Ä            ~      (      W      _      ?            I      Ż      ı       $      À      Ŝ      D      5                  y      ·            ï       ,             Ż      Í      Ħ      ¸      Ĥ       í       e      @      Ċ             g      ?             [      Î            ò                              }       2            Ŝ                              u             ,      _      G      %      @            0            ½      Ŭ                  E      Ò      ^            N      Ö      ċ                           ï      }                  ĥ       E      *      ì      û      £      ;            ş      Z      r      b       u            i      1      ?       +      ó       ~                         Ŭ            y            S              ĵ      µ      !                  !      a      
       ´      ?      ñ      w      ³             ü       ?      e      ÷      ï      U      Ĉ      \      \             C      á       â      G                  "      1       ç       w             è       ŝ      ½      t            ¸      Ñ      >      ²            l      '       Ö             µ      X      ~      ­      c      ĵ      [                  ì       ×            ¸      
      Z       à      p      ˘      8       î       á      ­      à      {      Á       '      Ż      í            ,      ì      1      Ş      2              5      ?      N      $      È       X       y      À      ĵ            È      K      £      ĝ      ,      ê      ö            ­      Ô                  H      F      Ĥ            4      ì      Ç      `      é            '      "      '      £      F      ³      e       *      &      
                                Ä      N      Ù      f      ,      Ô      ×      3                  s             Ì      ´                                    é            ö      9      Ğ      1      á                  ü      O      Ä            Z            J      (      Ĝ      Ì       |       Ó      _      ò      O      ê      >      ĵ             ż                  Ù      Â      h      Y      ŭ      3            t      ŝ      *      Ż      Ĵ            U             =      è             a      ?      ú            Â            o            ?      l      à      _            Ô      Q      E            ë      É      -      ´      Ê            s      5      ;            t      R      ç      Ä      ½       ³      !      Ú      ú            ¨      Ê      ä      )            ß      é      =            ~      ġ      ˘              B      U            ó      ñ                  3            Z      ?      t      `       ^       ŝ             Ħ            !      ħ      ?      w      Ħ       }            c      ´      {             ²            ÷      ?      ŭ       ´      ı                  ĝ      Ö      ġ      ò      Ù            b      0      s      ó      D       f      ŭ      P      E            B      3            ò      +              I                   u            ­            A      Ï      ¨      ô      §      ŝ                  Ç      m      Ú            ·      ?      4            ĥ      ŭ      n      î                         ¸      q      í      Ù      ß             6      Á      6      Ù      é      ò      ċ                          p      !       Ŝ      µ            Ċ      #      ċ            Ò      ?                  9      _      ¸      Ê      .      U                  ġ                              Ú      	            J      ö      ½      h      V       I      ?      L      j      ]      t            b      Ñ      '      .       c      8      ü                        Ü      2      ê      ×            N      	      µ       @              ?            t      :      Ğ      J      3      4      X      9      ù            H      3            ­      ˘      İ                   Û      ü      V            4      ŭ            ĥ      s      >      ç      ?      Ì            T            ó      '      â       ;      ˙       Ê       A            b      <                        ñ            ğ      m      #      Î      )      U      Ä            Ä              Ĝ            û            ê      â      ù      \      l      Ğ      P      S      Ï      ú              Ô      3      ·      L      Ċ      2             ³             ?                  ?      M             ?      *      Á      ĉ                   Ĥ      Ż       6      o      _       Ë      N      D      ô      Ñ       Ċ      G      \      .      Y      Ö      µ            Û      w      
      ,      &      c      m            ż      Ô      M      İ      É            R      K      Ĵ            Â      q      <            d                  9      j      z      |      ¨      &      ĥ      Ü      ²             Ŭ      7      N       Ö      t            Â      q      S      I      u      ?      B      "       î      M      Ï      Ñ      '      î      Ħ      Â      Ï       ²      ?            R            Ş             )      é                   *             Ò      ?      ¨      =             Û      3      ŝ              â      U       H             m      g      h      Ñ      Ĝ      )             İ                         ġ      ˙      ·                  ?      ĉ            ?      5      )            Ĥ      Ò      Ş                   A      ú       |      k                  ĵ             O       w      %      ¤      µ      
      4            ş      6      Û            a      ×      4      Û      ~       )      k      Ŭ      T             {       Ĵ      P             Ë      7      )      4       1      %      a            +      /      µ      ]      ^                                     m      z      [      %      ¤      @      ˘      Á      Ŝ      ż      g            ³                  i            +      Ĉ      Î      f            >      o      ß      |      ż      ğ            Ĉ             -             H      ;            Î      f      W                  f      -            ?            a             
            Ğ                           ı      *
dtype0	*
_output_shapes	
:Ë

 symbol_table_lookup_table_insertLookupTableInsertV2symbol_tableConst_3Const_4*	
Tin0*

Tout0	*
_class
loc:@symbol_table
Ü
Const_5Const"/device:CPU:0*
valueBB__label__you_are_welcomeB__label__chatB__label__requestB__label__suggestB__label__negateB__label__not_understandB__label__greetingB__label__hangupB__label__keep_listenB__label__thankyouB__label__affirmB__label__confirmB__label__offerB__label__unknownB__label__goodbyeB__label__informB__label__sorryB__label__busyB__label__request_compareB__label__request_alts*
dtype0*
_output_shapes
:

Const_6Const"/device:CPU:0*¸
value?BĞ	"                      
                                                                	                                                        *
dtype0	*
_output_shapes
:

label_table_lookup_table_insertLookupTableInsertV2label_tableConst_5Const_6*	
Tin0*

Tout0	*
_class
loc:@label_table

Const_7Const"/device:CPU:0*
_output_shapes
:*¸
value?BĞ	"                      
                                                                	                                                        *
dtype0	
Ü
Const_8Const"/device:CPU:0*
valueBB__label__you_are_welcomeB__label__chatB__label__requestB__label__suggestB__label__negateB__label__not_understandB__label__greetingB__label__hangupB__label__keep_listenB__label__thankyouB__label__affirmB__label__confirmB__label__offerB__label__unknownB__label__goodbyeB__label__informB__label__sorryB__label__busyB__label__request_compareB__label__request_alts*
dtype0*
_output_shapes
:

out_table_lookup_table_insertLookupTableInsertV2	out_tableConst_7Const_8*	
Tin0	*

Tout0*
_class
loc:@out_table
b
Merge_1/MergeSummaryMergeSummaryepoch_1loss_1
accuracy_1*
N*
_output_shapes
: 
Y
Merge_2/MergeSummaryMergeSummaryloss_1
accuracy_1*
N*
_output_shapes
: 
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_566270632dbb4145aadc543b1f1bb5ab/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
o
save_1/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_1/ShardedFilename_1ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_1/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_1/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_1/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
?
save_1/SaveV2_1SaveV2save_1/ShardedFilename_1save_1/SaveV2_1/tensor_names save_1/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_1/control_dependency_1Identitysave_1/ShardedFilename_1^save_1/SaveV2_1"/device:CPU:0*+
_class!
loc:@save_1/ShardedFilename_1*
_output_shapes
: *
T0
ê
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilenamesave_1/ShardedFilename_1^save_1/control_dependency^save_1/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency^save_1/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
÷
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_1/Assign_1Assignbeta1_powersave_1/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
İ
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
À
save_1/Assign_3Assigncnn_max_pool_2/Wsave_1/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ċ
save_1/Assign_4Assigncnn_max_pool_2/W/Adamsave_1/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_1/Assign_5Assigncnn_max_pool_2/W/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
³
save_1/Assign_6Assigncnn_max_pool_2/bsave_1/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
¸
save_1/Assign_7Assigncnn_max_pool_2/b/Adamsave_1/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_1/Assign_8Assigncnn_max_pool_2/b/Adam_1save_1/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
À
save_1/Assign_9Assigncnn_max_pool_3/Wsave_1/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ç
save_1/Assign_10Assigncnn_max_pool_3/W/Adamsave_1/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_1/Assign_11Assigncnn_max_pool_3/W/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
µ
save_1/Assign_12Assigncnn_max_pool_3/bsave_1/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ş
save_1/Assign_13Assigncnn_max_pool_3/b/Adamsave_1/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_1/Assign_14Assigncnn_max_pool_3/b/Adam_1save_1/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Â
save_1/Assign_15Assigncnn_max_pool_4/Wsave_1/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
Ç
save_1/Assign_16Assigncnn_max_pool_4/W/Adamsave_1/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_1/Assign_17Assigncnn_max_pool_4/W/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
µ
save_1/Assign_18Assigncnn_max_pool_4/bsave_1/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ş
save_1/Assign_19Assigncnn_max_pool_4/b/Adamsave_1/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_1/Assign_20Assigncnn_max_pool_4/b/Adam_1save_1/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ĥ
save_1/Assign_21Assignglobal_stepsave_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_1/LookupTableImportV2LookupTableImportV2label_tablesave_1/RestoreV2:22save_1/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_1/LookupTableImportV2_1LookupTableImportV2	out_tablesave_1/RestoreV2:24save_1/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_1/Assign_22Assignoutput/Wsave_1/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
?
save_1/Assign_23Assignoutput/W/Adamsave_1/RestoreV2:27*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_1/Assign_24Assignoutput/W/Adam_1save_1/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
¤
save_1/Assign_25Assignoutput/bsave_1/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
İ
save_1/Assign_26Assignoutput/b/Adamsave_1/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_1/Assign_27Assignoutput/b/Adam_1save_1/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
£
save_1/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_1/RestoreV2:32save_1/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
˙
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/LookupTableImportV2^save_1/LookupTableImportV2_1^save_1/LookupTableImportV2_2
?
save_1/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_1/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
·
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
?
save_1/Assign_28Assignembedding/emb_matrixsave_1/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
×
save_1/Assign_29Assignembedding/emb_matrix/Adamsave_1/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_1/Assign_30Assignembedding/emb_matrix/Adam_1save_1/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
f
save_1/restore_shard_1NoOp^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30"/device:CPU:0
6
save_1/restore_all/NoOpNoOp^save_1/restore_shard
I
save_1/restore_all/NoOp_1NoOp^save_1/restore_shard_1"/device:CPU:0
P
save_1/restore_allNoOp^save_1/restore_all/NoOp^save_1/restore_all/NoOp_1
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_b28dd44743bd43638ef20580e2e6ee96/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_2/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ħ
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: *
T0
o
save_2/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_2/ShardedFilename_1ShardedFilenamesave_2/StringJoinsave_2/ShardedFilename_1/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_2/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_2/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
?
save_2/SaveV2_1SaveV2save_2/ShardedFilename_1save_2/SaveV2_1/tensor_names save_2/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_2/control_dependency_1Identitysave_2/ShardedFilename_1^save_2/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_2/ShardedFilename_1
ê
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilenamesave_2/ShardedFilename_1^save_2/control_dependency^save_2/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency^save_2/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ï
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_2/AssignAssignVariablesave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_2/Assign_1Assignbeta1_powersave_2/RestoreV2:1*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
İ
save_2/Assign_2Assignbeta2_powersave_2/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
À
save_2/Assign_3Assigncnn_max_pool_2/Wsave_2/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ċ
save_2/Assign_4Assigncnn_max_pool_2/W/Adamsave_2/RestoreV2:4*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Ç
save_2/Assign_5Assigncnn_max_pool_2/W/Adam_1save_2/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
³
save_2/Assign_6Assigncnn_max_pool_2/bsave_2/RestoreV2:6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
¸
save_2/Assign_7Assigncnn_max_pool_2/b/Adamsave_2/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ş
save_2/Assign_8Assigncnn_max_pool_2/b/Adam_1save_2/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
À
save_2/Assign_9Assigncnn_max_pool_3/Wsave_2/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ç
save_2/Assign_10Assigncnn_max_pool_3/W/Adamsave_2/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_2/Assign_11Assigncnn_max_pool_3/W/Adam_1save_2/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
µ
save_2/Assign_12Assigncnn_max_pool_3/bsave_2/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ş
save_2/Assign_13Assigncnn_max_pool_3/b/Adamsave_2/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_2/Assign_14Assigncnn_max_pool_3/b/Adam_1save_2/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Â
save_2/Assign_15Assigncnn_max_pool_4/Wsave_2/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ç
save_2/Assign_16Assigncnn_max_pool_4/W/Adamsave_2/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_2/Assign_17Assigncnn_max_pool_4/W/Adam_1save_2/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_2/Assign_18Assigncnn_max_pool_4/bsave_2/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_2/Assign_19Assigncnn_max_pool_4/b/Adamsave_2/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_2/Assign_20Assigncnn_max_pool_4/b/Adam_1save_2/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_2/Assign_21Assignglobal_stepsave_2/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_2/LookupTableImportV2LookupTableImportV2label_tablesave_2/RestoreV2:22save_2/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_2/LookupTableImportV2_1LookupTableImportV2	out_tablesave_2/RestoreV2:24save_2/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_2/Assign_22Assignoutput/Wsave_2/RestoreV2:26*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
?
save_2/Assign_23Assignoutput/W/Adamsave_2/RestoreV2:27*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
°
save_2/Assign_24Assignoutput/W/Adam_1save_2/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_2/Assign_25Assignoutput/bsave_2/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
İ
save_2/Assign_26Assignoutput/b/Adamsave_2/RestoreV2:30*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ğ
save_2/Assign_27Assignoutput/b/Adam_1save_2/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
£
save_2/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_2/RestoreV2:32save_2/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/LookupTableImportV2^save_2/LookupTableImportV2_1^save_2/LookupTableImportV2_2
?
save_2/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_2/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
·
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
?
save_2/Assign_28Assignembedding/emb_matrixsave_2/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
×
save_2/Assign_29Assignembedding/emb_matrix/Adamsave_2/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_2/Assign_30Assignembedding/emb_matrix/Adam_1save_2/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_2/restore_shard_1NoOp^save_2/Assign_28^save_2/Assign_29^save_2/Assign_30"/device:CPU:0
6
save_2/restore_all/NoOpNoOp^save_2/restore_shard
I
save_2/restore_all/NoOp_1NoOp^save_2/restore_shard_1"/device:CPU:0
P
save_2/restore_allNoOp^save_2/restore_all/NoOp^save_2/restore_all/NoOp_1
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_f8e15b8ccb1c4700bc44c11ecc7852cf/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_3/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ħ
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_3/ShardedFilename
o
save_3/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_3/ShardedFilename_1ShardedFilenamesave_3/StringJoinsave_3/ShardedFilename_1/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_3/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_3/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
?
save_3/SaveV2_1SaveV2save_3/ShardedFilename_1save_3/SaveV2_1/tensor_names save_3/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_3/control_dependency_1Identitysave_3/ShardedFilename_1^save_3/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_3/ShardedFilename_1
ê
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilenamesave_3/ShardedFilename_1^save_3/control_dependency^save_3/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency^save_3/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_3/AssignAssignVariablesave_3/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
İ
save_3/Assign_1Assignbeta1_powersave_3/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
İ
save_3/Assign_2Assignbeta2_powersave_3/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
À
save_3/Assign_3Assigncnn_max_pool_2/Wsave_3/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ċ
save_3/Assign_4Assigncnn_max_pool_2/W/Adamsave_3/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ç
save_3/Assign_5Assigncnn_max_pool_2/W/Adam_1save_3/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
³
save_3/Assign_6Assigncnn_max_pool_2/bsave_3/RestoreV2:6*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
¸
save_3/Assign_7Assigncnn_max_pool_2/b/Adamsave_3/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_3/Assign_8Assigncnn_max_pool_2/b/Adam_1save_3/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
À
save_3/Assign_9Assigncnn_max_pool_3/Wsave_3/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ç
save_3/Assign_10Assigncnn_max_pool_3/W/Adamsave_3/RestoreV2:10*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
É
save_3/Assign_11Assigncnn_max_pool_3/W/Adam_1save_3/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_3/Assign_12Assigncnn_max_pool_3/bsave_3/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ş
save_3/Assign_13Assigncnn_max_pool_3/b/Adamsave_3/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_3/Assign_14Assigncnn_max_pool_3/b/Adam_1save_3/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_3/Assign_15Assigncnn_max_pool_4/Wsave_3/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ç
save_3/Assign_16Assigncnn_max_pool_4/W/Adamsave_3/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_3/Assign_17Assigncnn_max_pool_4/W/Adam_1save_3/RestoreV2:17*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
µ
save_3/Assign_18Assigncnn_max_pool_4/bsave_3/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ş
save_3/Assign_19Assigncnn_max_pool_4/b/Adamsave_3/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_3/Assign_20Assigncnn_max_pool_4/b/Adam_1save_3/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_3/Assign_21Assignglobal_stepsave_3/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_3/LookupTableImportV2LookupTableImportV2label_tablesave_3/RestoreV2:22save_3/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_3/LookupTableImportV2_1LookupTableImportV2	out_tablesave_3/RestoreV2:24save_3/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_3/Assign_22Assignoutput/Wsave_3/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
?
save_3/Assign_23Assignoutput/W/Adamsave_3/RestoreV2:27*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_3/Assign_24Assignoutput/W/Adam_1save_3/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_3/Assign_25Assignoutput/bsave_3/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
İ
save_3/Assign_26Assignoutput/b/Adamsave_3/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ğ
save_3/Assign_27Assignoutput/b/Adam_1save_3/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
£
save_3/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_3/RestoreV2:32save_3/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/LookupTableImportV2^save_3/LookupTableImportV2_1^save_3/LookupTableImportV2_2
?
save_3/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_3/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
?
save_3/Assign_28Assignembedding/emb_matrixsave_3/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
×
save_3/Assign_29Assignembedding/emb_matrix/Adamsave_3/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_3/Assign_30Assignembedding/emb_matrix/Adam_1save_3/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
f
save_3/restore_shard_1NoOp^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30"/device:CPU:0
6
save_3/restore_all/NoOpNoOp^save_3/restore_shard
I
save_3/restore_all/NoOp_1NoOp^save_3/restore_shard_1"/device:CPU:0
P
save_3/restore_allNoOp^save_3/restore_all/NoOp^save_3/restore_all/NoOp_1
R
save_4/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_ac2b9425c88c458ea61c564db4e2514f/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_4/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_4/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_4/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
o
save_4/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_4/ShardedFilename_1ShardedFilenamesave_4/StringJoinsave_4/ShardedFilename_1/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_4/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_4/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
?
save_4/SaveV2_1SaveV2save_4/ShardedFilename_1save_4/SaveV2_1/tensor_names save_4/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_4/control_dependency_1Identitysave_4/ShardedFilename_1^save_4/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_4/ShardedFilename_1
ê
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilenamesave_4/ShardedFilename_1^save_4/control_dependency^save_4/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency^save_4/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_4/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_4/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ï
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_4/AssignAssignVariablesave_4/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_4/Assign_1Assignbeta1_powersave_4/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
İ
save_4/Assign_2Assignbeta2_powersave_4/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
À
save_4/Assign_3Assigncnn_max_pool_2/Wsave_4/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ċ
save_4/Assign_4Assigncnn_max_pool_2/W/Adamsave_4/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ç
save_4/Assign_5Assigncnn_max_pool_2/W/Adam_1save_4/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
³
save_4/Assign_6Assigncnn_max_pool_2/bsave_4/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
¸
save_4/Assign_7Assigncnn_max_pool_2/b/Adamsave_4/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ş
save_4/Assign_8Assigncnn_max_pool_2/b/Adam_1save_4/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
À
save_4/Assign_9Assigncnn_max_pool_3/Wsave_4/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ç
save_4/Assign_10Assigncnn_max_pool_3/W/Adamsave_4/RestoreV2:10*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_4/Assign_11Assigncnn_max_pool_3/W/Adam_1save_4/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
µ
save_4/Assign_12Assigncnn_max_pool_3/bsave_4/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_4/Assign_13Assigncnn_max_pool_3/b/Adamsave_4/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_4/Assign_14Assigncnn_max_pool_3/b/Adam_1save_4/RestoreV2:14*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
Â
save_4/Assign_15Assigncnn_max_pool_4/Wsave_4/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ç
save_4/Assign_16Assigncnn_max_pool_4/W/Adamsave_4/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_4/Assign_17Assigncnn_max_pool_4/W/Adam_1save_4/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_4/Assign_18Assigncnn_max_pool_4/bsave_4/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ş
save_4/Assign_19Assigncnn_max_pool_4/b/Adamsave_4/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_4/Assign_20Assigncnn_max_pool_4/b/Adam_1save_4/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_4/Assign_21Assignglobal_stepsave_4/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_4/LookupTableImportV2LookupTableImportV2label_tablesave_4/RestoreV2:22save_4/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_4/LookupTableImportV2_1LookupTableImportV2	out_tablesave_4/RestoreV2:24save_4/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_4/Assign_22Assignoutput/Wsave_4/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
?
save_4/Assign_23Assignoutput/W/Adamsave_4/RestoreV2:27*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_4/Assign_24Assignoutput/W/Adam_1save_4/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_4/Assign_25Assignoutput/bsave_4/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
İ
save_4/Assign_26Assignoutput/b/Adamsave_4/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_4/Assign_27Assignoutput/b/Adam_1save_4/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
£
save_4/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_4/RestoreV2:32save_4/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9^save_4/LookupTableImportV2^save_4/LookupTableImportV2_1^save_4/LookupTableImportV2_2
?
save_4/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_4/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_4/RestoreV2_1	RestoreV2save_4/Constsave_4/RestoreV2_1/tensor_names#save_4/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
?
save_4/Assign_28Assignembedding/emb_matrixsave_4/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
×
save_4/Assign_29Assignembedding/emb_matrix/Adamsave_4/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_4/Assign_30Assignembedding/emb_matrix/Adam_1save_4/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_4/restore_shard_1NoOp^save_4/Assign_28^save_4/Assign_29^save_4/Assign_30"/device:CPU:0
6
save_4/restore_all/NoOpNoOp^save_4/restore_shard
I
save_4/restore_all/NoOp_1NoOp^save_4/restore_shard_1"/device:CPU:0
P
save_4/restore_allNoOp^save_4/restore_all/NoOp^save_4/restore_all/NoOp_1
R
save_5/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_5/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_43a9c44ddebe44d3852534b1563b9c3d/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_5/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_5/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_5/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_5/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
o
save_5/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_5/ShardedFilename_1ShardedFilenamesave_5/StringJoinsave_5/ShardedFilename_1/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_5/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_5/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
?
save_5/SaveV2_1SaveV2save_5/ShardedFilename_1save_5/SaveV2_1/tensor_names save_5/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_5/control_dependency_1Identitysave_5/ShardedFilename_1^save_5/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_5/ShardedFilename_1*
_output_shapes
: 
ê
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilenamesave_5/ShardedFilename_1^save_5/control_dependency^save_5/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency^save_5/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_5/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_5/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_5/AssignAssignVariablesave_5/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_5/Assign_1Assignbeta1_powersave_5/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
İ
save_5/Assign_2Assignbeta2_powersave_5/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
À
save_5/Assign_3Assigncnn_max_pool_2/Wsave_5/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ċ
save_5/Assign_4Assigncnn_max_pool_2/W/Adamsave_5/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_5/Assign_5Assigncnn_max_pool_2/W/Adam_1save_5/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
³
save_5/Assign_6Assigncnn_max_pool_2/bsave_5/RestoreV2:6*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
¸
save_5/Assign_7Assigncnn_max_pool_2/b/Adamsave_5/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_5/Assign_8Assigncnn_max_pool_2/b/Adam_1save_5/RestoreV2:8*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
À
save_5/Assign_9Assigncnn_max_pool_3/Wsave_5/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ç
save_5/Assign_10Assigncnn_max_pool_3/W/Adamsave_5/RestoreV2:10*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
É
save_5/Assign_11Assigncnn_max_pool_3/W/Adam_1save_5/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
µ
save_5/Assign_12Assigncnn_max_pool_3/bsave_5/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_5/Assign_13Assigncnn_max_pool_3/b/Adamsave_5/RestoreV2:13*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
ĵ
save_5/Assign_14Assigncnn_max_pool_3/b/Adam_1save_5/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_5/Assign_15Assigncnn_max_pool_4/Wsave_5/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ç
save_5/Assign_16Assigncnn_max_pool_4/W/Adamsave_5/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_5/Assign_17Assigncnn_max_pool_4/W/Adam_1save_5/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
µ
save_5/Assign_18Assigncnn_max_pool_4/bsave_5/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_5/Assign_19Assigncnn_max_pool_4/b/Adamsave_5/RestoreV2:19*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
ĵ
save_5/Assign_20Assigncnn_max_pool_4/b/Adam_1save_5/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_5/Assign_21Assignglobal_stepsave_5/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(

save_5/LookupTableImportV2LookupTableImportV2label_tablesave_5/RestoreV2:22save_5/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_5/LookupTableImportV2_1LookupTableImportV2	out_tablesave_5/RestoreV2:24save_5/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
İ
save_5/Assign_22Assignoutput/Wsave_5/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
?
save_5/Assign_23Assignoutput/W/Adamsave_5/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_5/Assign_24Assignoutput/W/Adam_1save_5/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_5/Assign_25Assignoutput/bsave_5/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
İ
save_5/Assign_26Assignoutput/b/Adamsave_5/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ğ
save_5/Assign_27Assignoutput/b/Adam_1save_5/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
£
save_5/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_5/RestoreV2:32save_5/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_27^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9^save_5/LookupTableImportV2^save_5/LookupTableImportV2_1^save_5/LookupTableImportV2_2
?
save_5/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1

#save_5/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_5/RestoreV2_1	RestoreV2save_5/Constsave_5/RestoreV2_1/tensor_names#save_5/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
?
save_5/Assign_28Assignembedding/emb_matrixsave_5/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
×
save_5/Assign_29Assignembedding/emb_matrix/Adamsave_5/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_5/Assign_30Assignembedding/emb_matrix/Adam_1save_5/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
f
save_5/restore_shard_1NoOp^save_5/Assign_28^save_5/Assign_29^save_5/Assign_30"/device:CPU:0
6
save_5/restore_all/NoOpNoOp^save_5/restore_shard
I
save_5/restore_all/NoOp_1NoOp^save_5/restore_shard_1"/device:CPU:0
P
save_5/restore_allNoOp^save_5/restore_all/NoOp^save_5/restore_all/NoOp_1
R
save_6/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_6/StringJoin/inputs_1Const*<
value3B1 B+_temp_7629d93805954ff2bfe48439fded2bd0/part*
dtype0*
_output_shapes
: 
{
save_6/StringJoin
StringJoinsave_6/Constsave_6/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_6/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_6/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_6/ShardedFilenameShardedFilenamesave_6/StringJoinsave_6/ShardedFilename/shardsave_6/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_6/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_6/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_6/SaveV2SaveV2save_6/ShardedFilenamesave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_6/control_dependencyIdentitysave_6/ShardedFilename^save_6/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_6/ShardedFilename
o
save_6/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_6/ShardedFilename_1ShardedFilenamesave_6/StringJoinsave_6/ShardedFilename_1/shardsave_6/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_6/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
|
 save_6/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
?
save_6/SaveV2_1SaveV2save_6/ShardedFilename_1save_6/SaveV2_1/tensor_names save_6/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_6/control_dependency_1Identitysave_6/ShardedFilename_1^save_6/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_6/ShardedFilename_1*
_output_shapes
: 
ê
-save_6/MergeV2Checkpoints/checkpoint_prefixesPacksave_6/ShardedFilenamesave_6/ShardedFilename_1^save_6/control_dependency^save_6/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_6/MergeV2CheckpointsMergeV2Checkpoints-save_6/MergeV2Checkpoints/checkpoint_prefixessave_6/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_6/IdentityIdentitysave_6/Const^save_6/MergeV2Checkpoints^save_6/control_dependency^save_6/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_6/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_6/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_6/AssignAssignVariablesave_6/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_6/Assign_1Assignbeta1_powersave_6/RestoreV2:1*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
İ
save_6/Assign_2Assignbeta2_powersave_6/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
À
save_6/Assign_3Assigncnn_max_pool_2/Wsave_6/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ċ
save_6/Assign_4Assigncnn_max_pool_2/W/Adamsave_6/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_6/Assign_5Assigncnn_max_pool_2/W/Adam_1save_6/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
³
save_6/Assign_6Assigncnn_max_pool_2/bsave_6/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
¸
save_6/Assign_7Assigncnn_max_pool_2/b/Adamsave_6/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_6/Assign_8Assigncnn_max_pool_2/b/Adam_1save_6/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
À
save_6/Assign_9Assigncnn_max_pool_3/Wsave_6/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ç
save_6/Assign_10Assigncnn_max_pool_3/W/Adamsave_6/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_6/Assign_11Assigncnn_max_pool_3/W/Adam_1save_6/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_6/Assign_12Assigncnn_max_pool_3/bsave_6/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ş
save_6/Assign_13Assigncnn_max_pool_3/b/Adamsave_6/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_6/Assign_14Assigncnn_max_pool_3/b/Adam_1save_6/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Â
save_6/Assign_15Assigncnn_max_pool_4/Wsave_6/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ç
save_6/Assign_16Assigncnn_max_pool_4/W/Adamsave_6/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_6/Assign_17Assigncnn_max_pool_4/W/Adam_1save_6/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_6/Assign_18Assigncnn_max_pool_4/bsave_6/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ş
save_6/Assign_19Assigncnn_max_pool_4/b/Adamsave_6/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_6/Assign_20Assigncnn_max_pool_4/b/Adam_1save_6/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ĥ
save_6/Assign_21Assignglobal_stepsave_6/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_6/LookupTableImportV2LookupTableImportV2label_tablesave_6/RestoreV2:22save_6/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_6/LookupTableImportV2_1LookupTableImportV2	out_tablesave_6/RestoreV2:24save_6/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_6/Assign_22Assignoutput/Wsave_6/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
?
save_6/Assign_23Assignoutput/W/Adamsave_6/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
°
save_6/Assign_24Assignoutput/W/Adam_1save_6/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
¤
save_6/Assign_25Assignoutput/bsave_6/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
İ
save_6/Assign_26Assignoutput/b/Adamsave_6/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ğ
save_6/Assign_27Assignoutput/b/Adam_1save_6/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
£
save_6/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_6/RestoreV2:32save_6/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_6/restore_shardNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_10^save_6/Assign_11^save_6/Assign_12^save_6/Assign_13^save_6/Assign_14^save_6/Assign_15^save_6/Assign_16^save_6/Assign_17^save_6/Assign_18^save_6/Assign_19^save_6/Assign_2^save_6/Assign_20^save_6/Assign_21^save_6/Assign_22^save_6/Assign_23^save_6/Assign_24^save_6/Assign_25^save_6/Assign_26^save_6/Assign_27^save_6/Assign_3^save_6/Assign_4^save_6/Assign_5^save_6/Assign_6^save_6/Assign_7^save_6/Assign_8^save_6/Assign_9^save_6/LookupTableImportV2^save_6/LookupTableImportV2_1^save_6/LookupTableImportV2_2
?
save_6/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_6/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_6/RestoreV2_1	RestoreV2save_6/Constsave_6/RestoreV2_1/tensor_names#save_6/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
?
save_6/Assign_28Assignembedding/emb_matrixsave_6/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
×
save_6/Assign_29Assignembedding/emb_matrix/Adamsave_6/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_6/Assign_30Assignembedding/emb_matrix/Adam_1save_6/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_6/restore_shard_1NoOp^save_6/Assign_28^save_6/Assign_29^save_6/Assign_30"/device:CPU:0
6
save_6/restore_all/NoOpNoOp^save_6/restore_shard
I
save_6/restore_all/NoOp_1NoOp^save_6/restore_shard_1"/device:CPU:0
P
save_6/restore_allNoOp^save_6/restore_all/NoOp^save_6/restore_all/NoOp_1
R
save_7/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_7/StringJoin/inputs_1Const*<
value3B1 B+_temp_1211447e52a14912b78d6e58639387b4/part*
dtype0*
_output_shapes
: 
{
save_7/StringJoin
StringJoinsave_7/Constsave_7/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_7/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_7/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save_7/ShardedFilenameShardedFilenamesave_7/StringJoinsave_7/ShardedFilename/shardsave_7/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_7/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
¸
save_7/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ħ
save_7/SaveV2SaveV2save_7/ShardedFilenamesave_7/SaveV2/tensor_namessave_7/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_7/control_dependencyIdentitysave_7/ShardedFilename^save_7/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_7/ShardedFilename
o
save_7/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0

save_7/ShardedFilename_1ShardedFilenamesave_7/StringJoinsave_7/ShardedFilename_1/shardsave_7/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_7/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_7/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
?
save_7/SaveV2_1SaveV2save_7/ShardedFilename_1save_7/SaveV2_1/tensor_names save_7/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_7/control_dependency_1Identitysave_7/ShardedFilename_1^save_7/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_7/ShardedFilename_1*
_output_shapes
: 
ê
-save_7/MergeV2Checkpoints/checkpoint_prefixesPacksave_7/ShardedFilenamesave_7/ShardedFilename_1^save_7/control_dependency^save_7/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_7/MergeV2CheckpointsMergeV2Checkpoints-save_7/MergeV2Checkpoints/checkpoint_prefixessave_7/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_7/IdentityIdentitysave_7/Const^save_7/MergeV2Checkpoints^save_7/control_dependency^save_7/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
÷
save_7/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_7/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_7/RestoreV2	RestoreV2save_7/Constsave_7/RestoreV2/tensor_names!save_7/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_7/AssignAssignVariablesave_7/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
İ
save_7/Assign_1Assignbeta1_powersave_7/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
İ
save_7/Assign_2Assignbeta2_powersave_7/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
À
save_7/Assign_3Assigncnn_max_pool_2/Wsave_7/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ċ
save_7/Assign_4Assigncnn_max_pool_2/W/Adamsave_7/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_7/Assign_5Assigncnn_max_pool_2/W/Adam_1save_7/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
³
save_7/Assign_6Assigncnn_max_pool_2/bsave_7/RestoreV2:6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
¸
save_7/Assign_7Assigncnn_max_pool_2/b/Adamsave_7/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ş
save_7/Assign_8Assigncnn_max_pool_2/b/Adam_1save_7/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
À
save_7/Assign_9Assigncnn_max_pool_3/Wsave_7/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ç
save_7/Assign_10Assigncnn_max_pool_3/W/Adamsave_7/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_7/Assign_11Assigncnn_max_pool_3/W/Adam_1save_7/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
µ
save_7/Assign_12Assigncnn_max_pool_3/bsave_7/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ş
save_7/Assign_13Assigncnn_max_pool_3/b/Adamsave_7/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_7/Assign_14Assigncnn_max_pool_3/b/Adam_1save_7/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Â
save_7/Assign_15Assigncnn_max_pool_4/Wsave_7/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ç
save_7/Assign_16Assigncnn_max_pool_4/W/Adamsave_7/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_7/Assign_17Assigncnn_max_pool_4/W/Adam_1save_7/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
µ
save_7/Assign_18Assigncnn_max_pool_4/bsave_7/RestoreV2:18*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
ş
save_7/Assign_19Assigncnn_max_pool_4/b/Adamsave_7/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_7/Assign_20Assigncnn_max_pool_4/b/Adam_1save_7/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_7/Assign_21Assignglobal_stepsave_7/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_7/LookupTableImportV2LookupTableImportV2label_tablesave_7/RestoreV2:22save_7/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_7/LookupTableImportV2_1LookupTableImportV2	out_tablesave_7/RestoreV2:24save_7/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_7/Assign_22Assignoutput/Wsave_7/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
?
save_7/Assign_23Assignoutput/W/Adamsave_7/RestoreV2:27*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_7/Assign_24Assignoutput/W/Adam_1save_7/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
¤
save_7/Assign_25Assignoutput/bsave_7/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
İ
save_7/Assign_26Assignoutput/b/Adamsave_7/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_7/Assign_27Assignoutput/b/Adam_1save_7/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
£
save_7/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_7/RestoreV2:32save_7/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_7/restore_shardNoOp^save_7/Assign^save_7/Assign_1^save_7/Assign_10^save_7/Assign_11^save_7/Assign_12^save_7/Assign_13^save_7/Assign_14^save_7/Assign_15^save_7/Assign_16^save_7/Assign_17^save_7/Assign_18^save_7/Assign_19^save_7/Assign_2^save_7/Assign_20^save_7/Assign_21^save_7/Assign_22^save_7/Assign_23^save_7/Assign_24^save_7/Assign_25^save_7/Assign_26^save_7/Assign_27^save_7/Assign_3^save_7/Assign_4^save_7/Assign_5^save_7/Assign_6^save_7/Assign_7^save_7/Assign_8^save_7/Assign_9^save_7/LookupTableImportV2^save_7/LookupTableImportV2_1^save_7/LookupTableImportV2_2
?
save_7/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_7/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_7/RestoreV2_1	RestoreV2save_7/Constsave_7/RestoreV2_1/tensor_names#save_7/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
?
save_7/Assign_28Assignembedding/emb_matrixsave_7/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
×
save_7/Assign_29Assignembedding/emb_matrix/Adamsave_7/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_7/Assign_30Assignembedding/emb_matrix/Adam_1save_7/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
f
save_7/restore_shard_1NoOp^save_7/Assign_28^save_7/Assign_29^save_7/Assign_30"/device:CPU:0
6
save_7/restore_all/NoOpNoOp^save_7/restore_shard
I
save_7/restore_all/NoOp_1NoOp^save_7/restore_shard_1"/device:CPU:0
P
save_7/restore_allNoOp^save_7/restore_all/NoOp^save_7/restore_all/NoOp_1
R
save_8/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_8/StringJoin/inputs_1Const*<
value3B1 B+_temp_9426c9fdf0cd4cdab59ba1baf43d08cc/part*
dtype0*
_output_shapes
: 
{
save_8/StringJoin
StringJoinsave_8/Constsave_8/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_8/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_8/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_8/ShardedFilenameShardedFilenamesave_8/StringJoinsave_8/ShardedFilename/shardsave_8/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_8/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
¸
save_8/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_8/SaveV2SaveV2save_8/ShardedFilenamesave_8/SaveV2/tensor_namessave_8/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_8/control_dependencyIdentitysave_8/ShardedFilename^save_8/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_8/ShardedFilename*
_output_shapes
: 
o
save_8/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_8/ShardedFilename_1ShardedFilenamesave_8/StringJoinsave_8/ShardedFilename_1/shardsave_8/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_8/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
|
 save_8/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
?
save_8/SaveV2_1SaveV2save_8/ShardedFilename_1save_8/SaveV2_1/tensor_names save_8/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_8/control_dependency_1Identitysave_8/ShardedFilename_1^save_8/SaveV2_1"/device:CPU:0*+
_class!
loc:@save_8/ShardedFilename_1*
_output_shapes
: *
T0
ê
-save_8/MergeV2Checkpoints/checkpoint_prefixesPacksave_8/ShardedFilenamesave_8/ShardedFilename_1^save_8/control_dependency^save_8/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_8/MergeV2CheckpointsMergeV2Checkpoints-save_8/MergeV2Checkpoints/checkpoint_prefixessave_8/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_8/IdentityIdentitysave_8/Const^save_8/MergeV2Checkpoints^save_8/control_dependency^save_8/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
÷
save_8/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_8/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ï
save_8/RestoreV2	RestoreV2save_8/Constsave_8/RestoreV2/tensor_names!save_8/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_8/AssignAssignVariablesave_8/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
İ
save_8/Assign_1Assignbeta1_powersave_8/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
İ
save_8/Assign_2Assignbeta2_powersave_8/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
À
save_8/Assign_3Assigncnn_max_pool_2/Wsave_8/RestoreV2:3*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ċ
save_8/Assign_4Assigncnn_max_pool_2/W/Adamsave_8/RestoreV2:4*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Ç
save_8/Assign_5Assigncnn_max_pool_2/W/Adam_1save_8/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
³
save_8/Assign_6Assigncnn_max_pool_2/bsave_8/RestoreV2:6*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¸
save_8/Assign_7Assigncnn_max_pool_2/b/Adamsave_8/RestoreV2:7*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
ş
save_8/Assign_8Assigncnn_max_pool_2/b/Adam_1save_8/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
À
save_8/Assign_9Assigncnn_max_pool_3/Wsave_8/RestoreV2:9*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
Ç
save_8/Assign_10Assigncnn_max_pool_3/W/Adamsave_8/RestoreV2:10*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
É
save_8/Assign_11Assigncnn_max_pool_3/W/Adam_1save_8/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
µ
save_8/Assign_12Assigncnn_max_pool_3/bsave_8/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ş
save_8/Assign_13Assigncnn_max_pool_3/b/Adamsave_8/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_8/Assign_14Assigncnn_max_pool_3/b/Adam_1save_8/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Â
save_8/Assign_15Assigncnn_max_pool_4/Wsave_8/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ç
save_8/Assign_16Assigncnn_max_pool_4/W/Adamsave_8/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_8/Assign_17Assigncnn_max_pool_4/W/Adam_1save_8/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
µ
save_8/Assign_18Assigncnn_max_pool_4/bsave_8/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ş
save_8/Assign_19Assigncnn_max_pool_4/b/Adamsave_8/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_8/Assign_20Assigncnn_max_pool_4/b/Adam_1save_8/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
Ĥ
save_8/Assign_21Assignglobal_stepsave_8/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step

save_8/LookupTableImportV2LookupTableImportV2label_tablesave_8/RestoreV2:22save_8/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_8/LookupTableImportV2_1LookupTableImportV2	out_tablesave_8/RestoreV2:24save_8/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_8/Assign_22Assignoutput/Wsave_8/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
?
save_8/Assign_23Assignoutput/W/Adamsave_8/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
°
save_8/Assign_24Assignoutput/W/Adam_1save_8/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_8/Assign_25Assignoutput/bsave_8/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
İ
save_8/Assign_26Assignoutput/b/Adamsave_8/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_8/Assign_27Assignoutput/b/Adam_1save_8/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
£
save_8/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_8/RestoreV2:32save_8/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_8/restore_shardNoOp^save_8/Assign^save_8/Assign_1^save_8/Assign_10^save_8/Assign_11^save_8/Assign_12^save_8/Assign_13^save_8/Assign_14^save_8/Assign_15^save_8/Assign_16^save_8/Assign_17^save_8/Assign_18^save_8/Assign_19^save_8/Assign_2^save_8/Assign_20^save_8/Assign_21^save_8/Assign_22^save_8/Assign_23^save_8/Assign_24^save_8/Assign_25^save_8/Assign_26^save_8/Assign_27^save_8/Assign_3^save_8/Assign_4^save_8/Assign_5^save_8/Assign_6^save_8/Assign_7^save_8/Assign_8^save_8/Assign_9^save_8/LookupTableImportV2^save_8/LookupTableImportV2_1^save_8/LookupTableImportV2_2
?
save_8/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_8/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_8/RestoreV2_1	RestoreV2save_8/Constsave_8/RestoreV2_1/tensor_names#save_8/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
?
save_8/Assign_28Assignembedding/emb_matrixsave_8/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
×
save_8/Assign_29Assignembedding/emb_matrix/Adamsave_8/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_8/Assign_30Assignembedding/emb_matrix/Adam_1save_8/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
f
save_8/restore_shard_1NoOp^save_8/Assign_28^save_8/Assign_29^save_8/Assign_30"/device:CPU:0
6
save_8/restore_all/NoOpNoOp^save_8/restore_shard
I
save_8/restore_all/NoOp_1NoOp^save_8/restore_shard_1"/device:CPU:0
P
save_8/restore_allNoOp^save_8/restore_all/NoOp^save_8/restore_all/NoOp_1
R
save_9/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_9/StringJoin/inputs_1Const*<
value3B1 B+_temp_a8e57147ad6943f9903575c0e1b27cab/part*
dtype0*
_output_shapes
: 
{
save_9/StringJoin
StringJoinsave_9/Constsave_9/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_9/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_9/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_9/ShardedFilenameShardedFilenamesave_9/StringJoinsave_9/ShardedFilename/shardsave_9/num_shards"/device:CPU:0*
_output_shapes
: 
ô
save_9/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0
¸
save_9/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
ħ
save_9/SaveV2SaveV2save_9/ShardedFilenamesave_9/SaveV2/tensor_namessave_9/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
¨
save_9/control_dependencyIdentitysave_9/ShardedFilename^save_9/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_9/ShardedFilename*
_output_shapes
: 
o
save_9/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save_9/ShardedFilename_1ShardedFilenamesave_9/StringJoinsave_9/ShardedFilename_1/shardsave_9/num_shards"/device:CPU:0*
_output_shapes
: 
À
save_9/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_9/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
?
save_9/SaveV2_1SaveV2save_9/ShardedFilename_1save_9/SaveV2_1/tensor_names save_9/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
°
save_9/control_dependency_1Identitysave_9/ShardedFilename_1^save_9/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_9/ShardedFilename_1*
_output_shapes
: 
ê
-save_9/MergeV2Checkpoints/checkpoint_prefixesPacksave_9/ShardedFilenamesave_9/ShardedFilename_1^save_9/control_dependency^save_9/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_9/MergeV2CheckpointsMergeV2Checkpoints-save_9/MergeV2Checkpoints/checkpoint_prefixessave_9/Const"/device:CPU:0*
delete_old_dirs(
Ż
save_9/IdentityIdentitysave_9/Const^save_9/MergeV2Checkpoints^save_9/control_dependency^save_9/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
÷
save_9/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ğ
!save_9/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ï
save_9/RestoreV2	RestoreV2save_9/Constsave_9/RestoreV2/tensor_names!save_9/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_9/AssignAssignVariablesave_9/RestoreV2*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
İ
save_9/Assign_1Assignbeta1_powersave_9/RestoreV2:1*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
İ
save_9/Assign_2Assignbeta2_powersave_9/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
À
save_9/Assign_3Assigncnn_max_pool_2/Wsave_9/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ċ
save_9/Assign_4Assigncnn_max_pool_2/W/Adamsave_9/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ç
save_9/Assign_5Assigncnn_max_pool_2/W/Adam_1save_9/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
³
save_9/Assign_6Assigncnn_max_pool_2/bsave_9/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
¸
save_9/Assign_7Assigncnn_max_pool_2/b/Adamsave_9/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_9/Assign_8Assigncnn_max_pool_2/b/Adam_1save_9/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
À
save_9/Assign_9Assigncnn_max_pool_3/Wsave_9/RestoreV2:9*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
Ç
save_9/Assign_10Assigncnn_max_pool_3/W/Adamsave_9/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_9/Assign_11Assigncnn_max_pool_3/W/Adam_1save_9/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
µ
save_9/Assign_12Assigncnn_max_pool_3/bsave_9/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ş
save_9/Assign_13Assigncnn_max_pool_3/b/Adamsave_9/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ĵ
save_9/Assign_14Assigncnn_max_pool_3/b/Adam_1save_9/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_9/Assign_15Assigncnn_max_pool_4/Wsave_9/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ç
save_9/Assign_16Assigncnn_max_pool_4/W/Adamsave_9/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_9/Assign_17Assigncnn_max_pool_4/W/Adam_1save_9/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
µ
save_9/Assign_18Assigncnn_max_pool_4/bsave_9/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ş
save_9/Assign_19Assigncnn_max_pool_4/b/Adamsave_9/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_9/Assign_20Assigncnn_max_pool_4/b/Adam_1save_9/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ĥ
save_9/Assign_21Assignglobal_stepsave_9/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step

save_9/LookupTableImportV2LookupTableImportV2label_tablesave_9/RestoreV2:22save_9/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	

save_9/LookupTableImportV2_1LookupTableImportV2	out_tablesave_9/RestoreV2:24save_9/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
İ
save_9/Assign_22Assignoutput/Wsave_9/RestoreV2:26*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
?
save_9/Assign_23Assignoutput/W/Adamsave_9/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_9/Assign_24Assignoutput/W/Adam_1save_9/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
¤
save_9/Assign_25Assignoutput/bsave_9/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
İ
save_9/Assign_26Assignoutput/b/Adamsave_9/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ğ
save_9/Assign_27Assignoutput/b/Adam_1save_9/RestoreV2:31*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
£
save_9/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_9/RestoreV2:32save_9/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
˙
save_9/restore_shardNoOp^save_9/Assign^save_9/Assign_1^save_9/Assign_10^save_9/Assign_11^save_9/Assign_12^save_9/Assign_13^save_9/Assign_14^save_9/Assign_15^save_9/Assign_16^save_9/Assign_17^save_9/Assign_18^save_9/Assign_19^save_9/Assign_2^save_9/Assign_20^save_9/Assign_21^save_9/Assign_22^save_9/Assign_23^save_9/Assign_24^save_9/Assign_25^save_9/Assign_26^save_9/Assign_27^save_9/Assign_3^save_9/Assign_4^save_9/Assign_5^save_9/Assign_6^save_9/Assign_7^save_9/Assign_8^save_9/Assign_9^save_9/LookupTableImportV2^save_9/LookupTableImportV2_1^save_9/LookupTableImportV2_2
?
save_9/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_9/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
·
save_9/RestoreV2_1	RestoreV2save_9/Constsave_9/RestoreV2_1/tensor_names#save_9/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
?
save_9/Assign_28Assignembedding/emb_matrixsave_9/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
×
save_9/Assign_29Assignembedding/emb_matrix/Adamsave_9/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_9/Assign_30Assignembedding/emb_matrix/Adam_1save_9/RestoreV2_1:2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
f
save_9/restore_shard_1NoOp^save_9/Assign_28^save_9/Assign_29^save_9/Assign_30"/device:CPU:0
6
save_9/restore_all/NoOpNoOp^save_9/restore_shard
I
save_9/restore_all/NoOp_1NoOp^save_9/restore_shard_1"/device:CPU:0
P
save_9/restore_allNoOp^save_9/restore_all/NoOp^save_9/restore_all/NoOp_1
S
save_10/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_10/StringJoin/inputs_1Const*<
value3B1 B+_temp_fcdb134645fe47b198124701cb820c48/part*
dtype0*
_output_shapes
: 
~
save_10/StringJoin
StringJoinsave_10/Constsave_10/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_10/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_10/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_10/ShardedFilenameShardedFilenamesave_10/StringJoinsave_10/ShardedFilename/shardsave_10/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_10/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_10/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_10/SaveV2SaveV2save_10/ShardedFilenamesave_10/SaveV2/tensor_namessave_10/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_10/control_dependencyIdentitysave_10/ShardedFilename^save_10/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_10/ShardedFilename*
_output_shapes
: 
p
save_10/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_10/ShardedFilename_1ShardedFilenamesave_10/StringJoinsave_10/ShardedFilename_1/shardsave_10/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_10/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_10/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ç
save_10/SaveV2_1SaveV2save_10/ShardedFilename_1save_10/SaveV2_1/tensor_names!save_10/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_10/control_dependency_1Identitysave_10/ShardedFilename_1^save_10/SaveV2_1"/device:CPU:0*,
_class"
 loc:@save_10/ShardedFilename_1*
_output_shapes
: *
T0
ï
.save_10/MergeV2Checkpoints/checkpoint_prefixesPacksave_10/ShardedFilenamesave_10/ShardedFilename_1^save_10/control_dependency^save_10/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_10/MergeV2CheckpointsMergeV2Checkpoints.save_10/MergeV2Checkpoints/checkpoint_prefixessave_10/Const"/device:CPU:0*
delete_old_dirs(
´
save_10/IdentityIdentitysave_10/Const^save_10/MergeV2Checkpoints^save_10/control_dependency^save_10/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_10/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_10/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_10/RestoreV2	RestoreV2save_10/Constsave_10/RestoreV2/tensor_names"save_10/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_10/AssignAssignVariablesave_10/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_10/Assign_1Assignbeta1_powersave_10/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Ğ
save_10/Assign_2Assignbeta2_powersave_10/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Â
save_10/Assign_3Assigncnn_max_pool_2/Wsave_10/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ç
save_10/Assign_4Assigncnn_max_pool_2/W/Adamsave_10/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_10/Assign_5Assigncnn_max_pool_2/W/Adam_1save_10/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_10/Assign_6Assigncnn_max_pool_2/bsave_10/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_10/Assign_7Assigncnn_max_pool_2/b/Adamsave_10/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_10/Assign_8Assigncnn_max_pool_2/b/Adam_1save_10/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_10/Assign_9Assigncnn_max_pool_3/Wsave_10/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_10/Assign_10Assigncnn_max_pool_3/W/Adamsave_10/RestoreV2:10*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
Ë
save_10/Assign_11Assigncnn_max_pool_3/W/Adam_1save_10/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_10/Assign_12Assigncnn_max_pool_3/bsave_10/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_10/Assign_13Assigncnn_max_pool_3/b/Adamsave_10/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_10/Assign_14Assigncnn_max_pool_3/b/Adam_1save_10/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Ä
save_10/Assign_15Assigncnn_max_pool_4/Wsave_10/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_10/Assign_16Assigncnn_max_pool_4/W/Adamsave_10/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ë
save_10/Assign_17Assigncnn_max_pool_4/W/Adam_1save_10/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_10/Assign_18Assigncnn_max_pool_4/bsave_10/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_10/Assign_19Assigncnn_max_pool_4/b/Adamsave_10/RestoreV2:19*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
?
save_10/Assign_20Assigncnn_max_pool_4/b/Adam_1save_10/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_10/Assign_21Assignglobal_stepsave_10/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_10/LookupTableImportV2LookupTableImportV2label_tablesave_10/RestoreV2:22save_10/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_10/LookupTableImportV2_1LookupTableImportV2	out_tablesave_10/RestoreV2:24save_10/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_10/Assign_22Assignoutput/Wsave_10/RestoreV2:26*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
°
save_10/Assign_23Assignoutput/W/Adamsave_10/RestoreV2:27*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
²
save_10/Assign_24Assignoutput/W/Adam_1save_10/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_10/Assign_25Assignoutput/bsave_10/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_10/Assign_26Assignoutput/b/Adamsave_10/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_10/Assign_27Assignoutput/b/Adam_1save_10/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_10/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_10/RestoreV2:32save_10/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_10/restore_shardNoOp^save_10/Assign^save_10/Assign_1^save_10/Assign_10^save_10/Assign_11^save_10/Assign_12^save_10/Assign_13^save_10/Assign_14^save_10/Assign_15^save_10/Assign_16^save_10/Assign_17^save_10/Assign_18^save_10/Assign_19^save_10/Assign_2^save_10/Assign_20^save_10/Assign_21^save_10/Assign_22^save_10/Assign_23^save_10/Assign_24^save_10/Assign_25^save_10/Assign_26^save_10/Assign_27^save_10/Assign_3^save_10/Assign_4^save_10/Assign_5^save_10/Assign_6^save_10/Assign_7^save_10/Assign_8^save_10/Assign_9^save_10/LookupTableImportV2^save_10/LookupTableImportV2_1^save_10/LookupTableImportV2_2
Ä
 save_10/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_10/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_10/RestoreV2_1	RestoreV2save_10/Const save_10/RestoreV2_1/tensor_names$save_10/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_10/Assign_28Assignembedding/emb_matrixsave_10/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_10/Assign_29Assignembedding/emb_matrix/Adamsave_10/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Û
save_10/Assign_30Assignembedding/emb_matrix/Adam_1save_10/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_10/restore_shard_1NoOp^save_10/Assign_28^save_10/Assign_29^save_10/Assign_30"/device:CPU:0
8
save_10/restore_all/NoOpNoOp^save_10/restore_shard
K
save_10/restore_all/NoOp_1NoOp^save_10/restore_shard_1"/device:CPU:0
S
save_10/restore_allNoOp^save_10/restore_all/NoOp^save_10/restore_all/NoOp_1
S
save_11/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_11/StringJoin/inputs_1Const*<
value3B1 B+_temp_e591f621a5f34da999fc4d03d1b66958/part*
dtype0*
_output_shapes
: 
~
save_11/StringJoin
StringJoinsave_11/Constsave_11/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_11/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_11/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_11/ShardedFilenameShardedFilenamesave_11/StringJoinsave_11/ShardedFilename/shardsave_11/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_11/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_11/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
µ
save_11/SaveV2SaveV2save_11/ShardedFilenamesave_11/SaveV2/tensor_namessave_11/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_11/control_dependencyIdentitysave_11/ShardedFilename^save_11/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_11/ShardedFilename*
_output_shapes
: 
p
save_11/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_11/ShardedFilename_1ShardedFilenamesave_11/StringJoinsave_11/ShardedFilename_1/shardsave_11/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_11/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_11/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ç
save_11/SaveV2_1SaveV2save_11/ShardedFilename_1save_11/SaveV2_1/tensor_names!save_11/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_11/control_dependency_1Identitysave_11/ShardedFilename_1^save_11/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_11/ShardedFilename_1*
_output_shapes
: 
ï
.save_11/MergeV2Checkpoints/checkpoint_prefixesPacksave_11/ShardedFilenamesave_11/ShardedFilename_1^save_11/control_dependency^save_11/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_11/MergeV2CheckpointsMergeV2Checkpoints.save_11/MergeV2Checkpoints/checkpoint_prefixessave_11/Const"/device:CPU:0*
delete_old_dirs(
´
save_11/IdentityIdentitysave_11/Const^save_11/MergeV2Checkpoints^save_11/control_dependency^save_11/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_11/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_11/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_11/RestoreV2	RestoreV2save_11/Constsave_11/RestoreV2/tensor_names"save_11/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_11/AssignAssignVariablesave_11/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ğ
save_11/Assign_1Assignbeta1_powersave_11/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_11/Assign_2Assignbeta2_powersave_11/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
Â
save_11/Assign_3Assigncnn_max_pool_2/Wsave_11/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ç
save_11/Assign_4Assigncnn_max_pool_2/W/Adamsave_11/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_11/Assign_5Assigncnn_max_pool_2/W/Adam_1save_11/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_11/Assign_6Assigncnn_max_pool_2/bsave_11/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_11/Assign_7Assigncnn_max_pool_2/b/Adamsave_11/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ĵ
save_11/Assign_8Assigncnn_max_pool_2/b/Adam_1save_11/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Â
save_11/Assign_9Assigncnn_max_pool_3/Wsave_11/RestoreV2:9*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
É
save_11/Assign_10Assigncnn_max_pool_3/W/Adamsave_11/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_11/Assign_11Assigncnn_max_pool_3/W/Adam_1save_11/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_11/Assign_12Assigncnn_max_pool_3/bsave_11/RestoreV2:12*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
ĵ
save_11/Assign_13Assigncnn_max_pool_3/b/Adamsave_11/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_11/Assign_14Assigncnn_max_pool_3/b/Adam_1save_11/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ä
save_11/Assign_15Assigncnn_max_pool_4/Wsave_11/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
É
save_11/Assign_16Assigncnn_max_pool_4/W/Adamsave_11/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_11/Assign_17Assigncnn_max_pool_4/W/Adam_1save_11/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_11/Assign_18Assigncnn_max_pool_4/bsave_11/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ĵ
save_11/Assign_19Assigncnn_max_pool_4/b/Adamsave_11/RestoreV2:19*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
?
save_11/Assign_20Assigncnn_max_pool_4/b/Adam_1save_11/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_11/Assign_21Assignglobal_stepsave_11/RestoreV2:21*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
˘
save_11/LookupTableImportV2LookupTableImportV2label_tablesave_11/RestoreV2:22save_11/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_11/LookupTableImportV2_1LookupTableImportV2	out_tablesave_11/RestoreV2:24save_11/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_11/Assign_22Assignoutput/Wsave_11/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
°
save_11/Assign_23Assignoutput/W/Adamsave_11/RestoreV2:27*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
²
save_11/Assign_24Assignoutput/W/Adam_1save_11/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
Ĥ
save_11/Assign_25Assignoutput/bsave_11/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_11/Assign_26Assignoutput/b/Adamsave_11/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_11/Assign_27Assignoutput/b/Adam_1save_11/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_11/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_11/RestoreV2:32save_11/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_11/restore_shardNoOp^save_11/Assign^save_11/Assign_1^save_11/Assign_10^save_11/Assign_11^save_11/Assign_12^save_11/Assign_13^save_11/Assign_14^save_11/Assign_15^save_11/Assign_16^save_11/Assign_17^save_11/Assign_18^save_11/Assign_19^save_11/Assign_2^save_11/Assign_20^save_11/Assign_21^save_11/Assign_22^save_11/Assign_23^save_11/Assign_24^save_11/Assign_25^save_11/Assign_26^save_11/Assign_27^save_11/Assign_3^save_11/Assign_4^save_11/Assign_5^save_11/Assign_6^save_11/Assign_7^save_11/Assign_8^save_11/Assign_9^save_11/LookupTableImportV2^save_11/LookupTableImportV2_1^save_11/LookupTableImportV2_2
Ä
 save_11/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_11/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_11/RestoreV2_1	RestoreV2save_11/Const save_11/RestoreV2_1/tensor_names$save_11/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_11/Assign_28Assignembedding/emb_matrixsave_11/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_11/Assign_29Assignembedding/emb_matrix/Adamsave_11/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_11/Assign_30Assignembedding/emb_matrix/Adam_1save_11/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_11/restore_shard_1NoOp^save_11/Assign_28^save_11/Assign_29^save_11/Assign_30"/device:CPU:0
8
save_11/restore_all/NoOpNoOp^save_11/restore_shard
K
save_11/restore_all/NoOp_1NoOp^save_11/restore_shard_1"/device:CPU:0
S
save_11/restore_allNoOp^save_11/restore_all/NoOp^save_11/restore_all/NoOp_1
S
save_12/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_12/StringJoin/inputs_1Const*<
value3B1 B+_temp_3dd1e67fffd24c91999926345b2b6376/part*
dtype0*
_output_shapes
: 
~
save_12/StringJoin
StringJoinsave_12/Constsave_12/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_12/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_12/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save_12/ShardedFilenameShardedFilenamesave_12/StringJoinsave_12/ShardedFilename/shardsave_12/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_12/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_12/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_12/SaveV2SaveV2save_12/ShardedFilenamesave_12/SaveV2/tensor_namessave_12/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_12/control_dependencyIdentitysave_12/ShardedFilename^save_12/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_12/ShardedFilename*
_output_shapes
: 
p
save_12/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_12/ShardedFilename_1ShardedFilenamesave_12/StringJoinsave_12/ShardedFilename_1/shardsave_12/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_12/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_12/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_12/SaveV2_1SaveV2save_12/ShardedFilename_1save_12/SaveV2_1/tensor_names!save_12/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_12/control_dependency_1Identitysave_12/ShardedFilename_1^save_12/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_12/ShardedFilename_1
ï
.save_12/MergeV2Checkpoints/checkpoint_prefixesPacksave_12/ShardedFilenamesave_12/ShardedFilename_1^save_12/control_dependency^save_12/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_12/MergeV2CheckpointsMergeV2Checkpoints.save_12/MergeV2Checkpoints/checkpoint_prefixessave_12/Const"/device:CPU:0*
delete_old_dirs(
´
save_12/IdentityIdentitysave_12/Const^save_12/MergeV2Checkpoints^save_12/control_dependency^save_12/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_12/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_12/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_12/RestoreV2	RestoreV2save_12/Constsave_12/RestoreV2/tensor_names"save_12/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_12/AssignAssignVariablesave_12/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_12/Assign_1Assignbeta1_powersave_12/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Ğ
save_12/Assign_2Assignbeta2_powersave_12/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
Â
save_12/Assign_3Assigncnn_max_pool_2/Wsave_12/RestoreV2:3*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ç
save_12/Assign_4Assigncnn_max_pool_2/W/Adamsave_12/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
É
save_12/Assign_5Assigncnn_max_pool_2/W/Adam_1save_12/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_12/Assign_6Assigncnn_max_pool_2/bsave_12/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_12/Assign_7Assigncnn_max_pool_2/b/Adamsave_12/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ĵ
save_12/Assign_8Assigncnn_max_pool_2/b/Adam_1save_12/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_12/Assign_9Assigncnn_max_pool_3/Wsave_12/RestoreV2:9*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
É
save_12/Assign_10Assigncnn_max_pool_3/W/Adamsave_12/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_12/Assign_11Assigncnn_max_pool_3/W/Adam_1save_12/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_12/Assign_12Assigncnn_max_pool_3/bsave_12/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_12/Assign_13Assigncnn_max_pool_3/b/Adamsave_12/RestoreV2:13*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
?
save_12/Assign_14Assigncnn_max_pool_3/b/Adam_1save_12/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_12/Assign_15Assigncnn_max_pool_4/Wsave_12/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_12/Assign_16Assigncnn_max_pool_4/W/Adamsave_12/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_12/Assign_17Assigncnn_max_pool_4/W/Adam_1save_12/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_12/Assign_18Assigncnn_max_pool_4/bsave_12/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_12/Assign_19Assigncnn_max_pool_4/b/Adamsave_12/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_12/Assign_20Assigncnn_max_pool_4/b/Adam_1save_12/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_12/Assign_21Assignglobal_stepsave_12/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
˘
save_12/LookupTableImportV2LookupTableImportV2label_tablesave_12/RestoreV2:22save_12/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_12/LookupTableImportV2_1LookupTableImportV2	out_tablesave_12/RestoreV2:24save_12/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_12/Assign_22Assignoutput/Wsave_12/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_12/Assign_23Assignoutput/W/Adamsave_12/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_12/Assign_24Assignoutput/W/Adam_1save_12/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
Ĥ
save_12/Assign_25Assignoutput/bsave_12/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_12/Assign_26Assignoutput/b/Adamsave_12/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_12/Assign_27Assignoutput/b/Adam_1save_12/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ĥ
save_12/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_12/RestoreV2:32save_12/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_12/restore_shardNoOp^save_12/Assign^save_12/Assign_1^save_12/Assign_10^save_12/Assign_11^save_12/Assign_12^save_12/Assign_13^save_12/Assign_14^save_12/Assign_15^save_12/Assign_16^save_12/Assign_17^save_12/Assign_18^save_12/Assign_19^save_12/Assign_2^save_12/Assign_20^save_12/Assign_21^save_12/Assign_22^save_12/Assign_23^save_12/Assign_24^save_12/Assign_25^save_12/Assign_26^save_12/Assign_27^save_12/Assign_3^save_12/Assign_4^save_12/Assign_5^save_12/Assign_6^save_12/Assign_7^save_12/Assign_8^save_12/Assign_9^save_12/LookupTableImportV2^save_12/LookupTableImportV2_1^save_12/LookupTableImportV2_2
Ä
 save_12/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_12/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_12/RestoreV2_1	RestoreV2save_12/Const save_12/RestoreV2_1/tensor_names$save_12/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_12/Assign_28Assignembedding/emb_matrixsave_12/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_12/Assign_29Assignembedding/emb_matrix/Adamsave_12/RestoreV2_1:1"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
Û
save_12/Assign_30Assignembedding/emb_matrix/Adam_1save_12/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_12/restore_shard_1NoOp^save_12/Assign_28^save_12/Assign_29^save_12/Assign_30"/device:CPU:0
8
save_12/restore_all/NoOpNoOp^save_12/restore_shard
K
save_12/restore_all/NoOp_1NoOp^save_12/restore_shard_1"/device:CPU:0
S
save_12/restore_allNoOp^save_12/restore_all/NoOp^save_12/restore_all/NoOp_1
S
save_13/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_13/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_eccb3abf284d46a19e1771049e6ea3ef/part
~
save_13/StringJoin
StringJoinsave_13/Constsave_13/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_13/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_13/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_13/ShardedFilenameShardedFilenamesave_13/StringJoinsave_13/ShardedFilename/shardsave_13/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_13/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_13/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_13/SaveV2SaveV2save_13/ShardedFilenamesave_13/SaveV2/tensor_namessave_13/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_13/control_dependencyIdentitysave_13/ShardedFilename^save_13/SaveV2"/device:CPU:0**
_class 
loc:@save_13/ShardedFilename*
_output_shapes
: *
T0
p
save_13/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_13/ShardedFilename_1ShardedFilenamesave_13/StringJoinsave_13/ShardedFilename_1/shardsave_13/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_13/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_13/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_13/SaveV2_1SaveV2save_13/ShardedFilename_1save_13/SaveV2_1/tensor_names!save_13/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_13/control_dependency_1Identitysave_13/ShardedFilename_1^save_13/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_13/ShardedFilename_1*
_output_shapes
: 
ï
.save_13/MergeV2Checkpoints/checkpoint_prefixesPacksave_13/ShardedFilenamesave_13/ShardedFilename_1^save_13/control_dependency^save_13/control_dependency_1"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0

save_13/MergeV2CheckpointsMergeV2Checkpoints.save_13/MergeV2Checkpoints/checkpoint_prefixessave_13/Const"/device:CPU:0*
delete_old_dirs(
´
save_13/IdentityIdentitysave_13/Const^save_13/MergeV2Checkpoints^save_13/control_dependency^save_13/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_13/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_13/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_13/RestoreV2	RestoreV2save_13/Constsave_13/RestoreV2/tensor_names"save_13/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_13/AssignAssignVariablesave_13/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
Ğ
save_13/Assign_1Assignbeta1_powersave_13/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_13/Assign_2Assignbeta2_powersave_13/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Â
save_13/Assign_3Assigncnn_max_pool_2/Wsave_13/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_13/Assign_4Assigncnn_max_pool_2/W/Adamsave_13/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_13/Assign_5Assigncnn_max_pool_2/W/Adam_1save_13/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_13/Assign_6Assigncnn_max_pool_2/bsave_13/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_13/Assign_7Assigncnn_max_pool_2/b/Adamsave_13/RestoreV2:7*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
ĵ
save_13/Assign_8Assigncnn_max_pool_2/b/Adam_1save_13/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_13/Assign_9Assigncnn_max_pool_3/Wsave_13/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_13/Assign_10Assigncnn_max_pool_3/W/Adamsave_13/RestoreV2:10*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
Ë
save_13/Assign_11Assigncnn_max_pool_3/W/Adam_1save_13/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_13/Assign_12Assigncnn_max_pool_3/bsave_13/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_13/Assign_13Assigncnn_max_pool_3/b/Adamsave_13/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_13/Assign_14Assigncnn_max_pool_3/b/Adam_1save_13/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Ä
save_13/Assign_15Assigncnn_max_pool_4/Wsave_13/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_13/Assign_16Assigncnn_max_pool_4/W/Adamsave_13/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_13/Assign_17Assigncnn_max_pool_4/W/Adam_1save_13/RestoreV2:17*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
·
save_13/Assign_18Assigncnn_max_pool_4/bsave_13/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_13/Assign_19Assigncnn_max_pool_4/b/Adamsave_13/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_13/Assign_20Assigncnn_max_pool_4/b/Adam_1save_13/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_13/Assign_21Assignglobal_stepsave_13/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
˘
save_13/LookupTableImportV2LookupTableImportV2label_tablesave_13/RestoreV2:22save_13/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_13/LookupTableImportV2_1LookupTableImportV2	out_tablesave_13/RestoreV2:24save_13/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_13/Assign_22Assignoutput/Wsave_13/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_13/Assign_23Assignoutput/W/Adamsave_13/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_13/Assign_24Assignoutput/W/Adam_1save_13/RestoreV2:28*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
Ĥ
save_13/Assign_25Assignoutput/bsave_13/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_13/Assign_26Assignoutput/b/Adamsave_13/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_13/Assign_27Assignoutput/b/Adam_1save_13/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ĥ
save_13/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_13/RestoreV2:32save_13/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_13/restore_shardNoOp^save_13/Assign^save_13/Assign_1^save_13/Assign_10^save_13/Assign_11^save_13/Assign_12^save_13/Assign_13^save_13/Assign_14^save_13/Assign_15^save_13/Assign_16^save_13/Assign_17^save_13/Assign_18^save_13/Assign_19^save_13/Assign_2^save_13/Assign_20^save_13/Assign_21^save_13/Assign_22^save_13/Assign_23^save_13/Assign_24^save_13/Assign_25^save_13/Assign_26^save_13/Assign_27^save_13/Assign_3^save_13/Assign_4^save_13/Assign_5^save_13/Assign_6^save_13/Assign_7^save_13/Assign_8^save_13/Assign_9^save_13/LookupTableImportV2^save_13/LookupTableImportV2_1^save_13/LookupTableImportV2_2
Ä
 save_13/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_13/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_13/RestoreV2_1	RestoreV2save_13/Const save_13/RestoreV2_1/tensor_names$save_13/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_13/Assign_28Assignembedding/emb_matrixsave_13/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_13/Assign_29Assignembedding/emb_matrix/Adamsave_13/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Û
save_13/Assign_30Assignembedding/emb_matrix/Adam_1save_13/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_13/restore_shard_1NoOp^save_13/Assign_28^save_13/Assign_29^save_13/Assign_30"/device:CPU:0
8
save_13/restore_all/NoOpNoOp^save_13/restore_shard
K
save_13/restore_all/NoOp_1NoOp^save_13/restore_shard_1"/device:CPU:0
S
save_13/restore_allNoOp^save_13/restore_all/NoOp^save_13/restore_all/NoOp_1
S
save_14/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_14/StringJoin/inputs_1Const*<
value3B1 B+_temp_738e2363317f45ec8aac0d008605bd0b/part*
dtype0*
_output_shapes
: 
~
save_14/StringJoin
StringJoinsave_14/Constsave_14/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_14/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_14/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_14/ShardedFilenameShardedFilenamesave_14/StringJoinsave_14/ShardedFilename/shardsave_14/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_14/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_14/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_14/SaveV2SaveV2save_14/ShardedFilenamesave_14/SaveV2/tensor_namessave_14/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_14/control_dependencyIdentitysave_14/ShardedFilename^save_14/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_14/ShardedFilename*
_output_shapes
: 
p
save_14/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_14/ShardedFilename_1ShardedFilenamesave_14/StringJoinsave_14/ShardedFilename_1/shardsave_14/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_14/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_14/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_14/SaveV2_1SaveV2save_14/ShardedFilename_1save_14/SaveV2_1/tensor_names!save_14/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_14/control_dependency_1Identitysave_14/ShardedFilename_1^save_14/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_14/ShardedFilename_1*
_output_shapes
: 
ï
.save_14/MergeV2Checkpoints/checkpoint_prefixesPacksave_14/ShardedFilenamesave_14/ShardedFilename_1^save_14/control_dependency^save_14/control_dependency_1"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N

save_14/MergeV2CheckpointsMergeV2Checkpoints.save_14/MergeV2Checkpoints/checkpoint_prefixessave_14/Const"/device:CPU:0*
delete_old_dirs(
´
save_14/IdentityIdentitysave_14/Const^save_14/MergeV2Checkpoints^save_14/control_dependency^save_14/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_14/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_14/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_14/RestoreV2	RestoreV2save_14/Constsave_14/RestoreV2/tensor_names"save_14/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_14/AssignAssignVariablesave_14/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_14/Assign_1Assignbeta1_powersave_14/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_14/Assign_2Assignbeta2_powersave_14/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_14/Assign_3Assigncnn_max_pool_2/Wsave_14/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_14/Assign_4Assigncnn_max_pool_2/W/Adamsave_14/RestoreV2:4*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_14/Assign_5Assigncnn_max_pool_2/W/Adam_1save_14/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_14/Assign_6Assigncnn_max_pool_2/bsave_14/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_14/Assign_7Assigncnn_max_pool_2/b/Adamsave_14/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_14/Assign_8Assigncnn_max_pool_2/b/Adam_1save_14/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_14/Assign_9Assigncnn_max_pool_3/Wsave_14/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_14/Assign_10Assigncnn_max_pool_3/W/Adamsave_14/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_14/Assign_11Assigncnn_max_pool_3/W/Adam_1save_14/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
·
save_14/Assign_12Assigncnn_max_pool_3/bsave_14/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_14/Assign_13Assigncnn_max_pool_3/b/Adamsave_14/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_14/Assign_14Assigncnn_max_pool_3/b/Adam_1save_14/RestoreV2:14*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ä
save_14/Assign_15Assigncnn_max_pool_4/Wsave_14/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
É
save_14/Assign_16Assigncnn_max_pool_4/W/Adamsave_14/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_14/Assign_17Assigncnn_max_pool_4/W/Adam_1save_14/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_14/Assign_18Assigncnn_max_pool_4/bsave_14/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_14/Assign_19Assigncnn_max_pool_4/b/Adamsave_14/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
?
save_14/Assign_20Assigncnn_max_pool_4/b/Adam_1save_14/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_14/Assign_21Assignglobal_stepsave_14/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
˘
save_14/LookupTableImportV2LookupTableImportV2label_tablesave_14/RestoreV2:22save_14/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_14/LookupTableImportV2_1LookupTableImportV2	out_tablesave_14/RestoreV2:24save_14/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_14/Assign_22Assignoutput/Wsave_14/RestoreV2:26*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
°
save_14/Assign_23Assignoutput/W/Adamsave_14/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_14/Assign_24Assignoutput/W/Adam_1save_14/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_14/Assign_25Assignoutput/bsave_14/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ğ
save_14/Assign_26Assignoutput/b/Adamsave_14/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
­
save_14/Assign_27Assignoutput/b/Adam_1save_14/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ĥ
save_14/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_14/RestoreV2:32save_14/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_14/restore_shardNoOp^save_14/Assign^save_14/Assign_1^save_14/Assign_10^save_14/Assign_11^save_14/Assign_12^save_14/Assign_13^save_14/Assign_14^save_14/Assign_15^save_14/Assign_16^save_14/Assign_17^save_14/Assign_18^save_14/Assign_19^save_14/Assign_2^save_14/Assign_20^save_14/Assign_21^save_14/Assign_22^save_14/Assign_23^save_14/Assign_24^save_14/Assign_25^save_14/Assign_26^save_14/Assign_27^save_14/Assign_3^save_14/Assign_4^save_14/Assign_5^save_14/Assign_6^save_14/Assign_7^save_14/Assign_8^save_14/Assign_9^save_14/LookupTableImportV2^save_14/LookupTableImportV2_1^save_14/LookupTableImportV2_2
Ä
 save_14/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_14/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ğ
save_14/RestoreV2_1	RestoreV2save_14/Const save_14/RestoreV2_1/tensor_names$save_14/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_14/Assign_28Assignembedding/emb_matrixsave_14/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
Ù
save_14/Assign_29Assignembedding/emb_matrix/Adamsave_14/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Û
save_14/Assign_30Assignembedding/emb_matrix/Adam_1save_14/RestoreV2_1:2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
j
save_14/restore_shard_1NoOp^save_14/Assign_28^save_14/Assign_29^save_14/Assign_30"/device:CPU:0
8
save_14/restore_all/NoOpNoOp^save_14/restore_shard
K
save_14/restore_all/NoOp_1NoOp^save_14/restore_shard_1"/device:CPU:0
S
save_14/restore_allNoOp^save_14/restore_all/NoOp^save_14/restore_all/NoOp_1
S
save_15/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_15/StringJoin/inputs_1Const*<
value3B1 B+_temp_6180558cd3d24ee4b594c5f9b1964c46/part*
dtype0*
_output_shapes
: 
~
save_15/StringJoin
StringJoinsave_15/Constsave_15/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_15/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_15/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save_15/ShardedFilenameShardedFilenamesave_15/StringJoinsave_15/ShardedFilename/shardsave_15/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_15/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_15/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
µ
save_15/SaveV2SaveV2save_15/ShardedFilenamesave_15/SaveV2/tensor_namessave_15/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_15/control_dependencyIdentitysave_15/ShardedFilename^save_15/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_15/ShardedFilename*
_output_shapes
: 
p
save_15/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_15/ShardedFilename_1ShardedFilenamesave_15/StringJoinsave_15/ShardedFilename_1/shardsave_15/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_15/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_15/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_15/SaveV2_1SaveV2save_15/ShardedFilename_1save_15/SaveV2_1/tensor_names!save_15/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_15/control_dependency_1Identitysave_15/ShardedFilename_1^save_15/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_15/ShardedFilename_1
ï
.save_15/MergeV2Checkpoints/checkpoint_prefixesPacksave_15/ShardedFilenamesave_15/ShardedFilename_1^save_15/control_dependency^save_15/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_15/MergeV2CheckpointsMergeV2Checkpoints.save_15/MergeV2Checkpoints/checkpoint_prefixessave_15/Const"/device:CPU:0*
delete_old_dirs(
´
save_15/IdentityIdentitysave_15/Const^save_15/MergeV2Checkpoints^save_15/control_dependency^save_15/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_15/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_15/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_15/RestoreV2	RestoreV2save_15/Constsave_15/RestoreV2/tensor_names"save_15/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_15/AssignAssignVariablesave_15/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_15/Assign_1Assignbeta1_powersave_15/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_15/Assign_2Assignbeta2_powersave_15/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Â
save_15/Assign_3Assigncnn_max_pool_2/Wsave_15/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ç
save_15/Assign_4Assigncnn_max_pool_2/W/Adamsave_15/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_15/Assign_5Assigncnn_max_pool_2/W/Adam_1save_15/RestoreV2:5*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
µ
save_15/Assign_6Assigncnn_max_pool_2/bsave_15/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_15/Assign_7Assigncnn_max_pool_2/b/Adamsave_15/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ĵ
save_15/Assign_8Assigncnn_max_pool_2/b/Adam_1save_15/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_15/Assign_9Assigncnn_max_pool_3/Wsave_15/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_15/Assign_10Assigncnn_max_pool_3/W/Adamsave_15/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_15/Assign_11Assigncnn_max_pool_3/W/Adam_1save_15/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_15/Assign_12Assigncnn_max_pool_3/bsave_15/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_15/Assign_13Assigncnn_max_pool_3/b/Adamsave_15/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_15/Assign_14Assigncnn_max_pool_3/b/Adam_1save_15/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_15/Assign_15Assigncnn_max_pool_4/Wsave_15/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_15/Assign_16Assigncnn_max_pool_4/W/Adamsave_15/RestoreV2:16*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
Ë
save_15/Assign_17Assigncnn_max_pool_4/W/Adam_1save_15/RestoreV2:17*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
·
save_15/Assign_18Assigncnn_max_pool_4/bsave_15/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ĵ
save_15/Assign_19Assigncnn_max_pool_4/b/Adamsave_15/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_15/Assign_20Assigncnn_max_pool_4/b/Adam_1save_15/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_15/Assign_21Assignglobal_stepsave_15/RestoreV2:21*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
˘
save_15/LookupTableImportV2LookupTableImportV2label_tablesave_15/RestoreV2:22save_15/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_15/LookupTableImportV2_1LookupTableImportV2	out_tablesave_15/RestoreV2:24save_15/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_15/Assign_22Assignoutput/Wsave_15/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
°
save_15/Assign_23Assignoutput/W/Adamsave_15/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_15/Assign_24Assignoutput/W/Adam_1save_15/RestoreV2:28*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
Ĥ
save_15/Assign_25Assignoutput/bsave_15/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ğ
save_15/Assign_26Assignoutput/b/Adamsave_15/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
­
save_15/Assign_27Assignoutput/b/Adam_1save_15/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_15/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_15/RestoreV2:32save_15/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_15/restore_shardNoOp^save_15/Assign^save_15/Assign_1^save_15/Assign_10^save_15/Assign_11^save_15/Assign_12^save_15/Assign_13^save_15/Assign_14^save_15/Assign_15^save_15/Assign_16^save_15/Assign_17^save_15/Assign_18^save_15/Assign_19^save_15/Assign_2^save_15/Assign_20^save_15/Assign_21^save_15/Assign_22^save_15/Assign_23^save_15/Assign_24^save_15/Assign_25^save_15/Assign_26^save_15/Assign_27^save_15/Assign_3^save_15/Assign_4^save_15/Assign_5^save_15/Assign_6^save_15/Assign_7^save_15/Assign_8^save_15/Assign_9^save_15/LookupTableImportV2^save_15/LookupTableImportV2_1^save_15/LookupTableImportV2_2
Ä
 save_15/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_15/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ğ
save_15/RestoreV2_1	RestoreV2save_15/Const save_15/RestoreV2_1/tensor_names$save_15/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_15/Assign_28Assignembedding/emb_matrixsave_15/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_15/Assign_29Assignembedding/emb_matrix/Adamsave_15/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_15/Assign_30Assignembedding/emb_matrix/Adam_1save_15/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_15/restore_shard_1NoOp^save_15/Assign_28^save_15/Assign_29^save_15/Assign_30"/device:CPU:0
8
save_15/restore_all/NoOpNoOp^save_15/restore_shard
K
save_15/restore_all/NoOp_1NoOp^save_15/restore_shard_1"/device:CPU:0
S
save_15/restore_allNoOp^save_15/restore_all/NoOp^save_15/restore_all/NoOp_1
S
save_16/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_16/StringJoin/inputs_1Const*<
value3B1 B+_temp_c8b2f13c280d4ff99997af3a9d128cf7/part*
dtype0*
_output_shapes
: 
~
save_16/StringJoin
StringJoinsave_16/Constsave_16/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_16/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_16/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_16/ShardedFilenameShardedFilenamesave_16/StringJoinsave_16/ShardedFilename/shardsave_16/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_16/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_16/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_16/SaveV2SaveV2save_16/ShardedFilenamesave_16/SaveV2/tensor_namessave_16/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_16/control_dependencyIdentitysave_16/ShardedFilename^save_16/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_16/ShardedFilename*
_output_shapes
: 
p
save_16/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save_16/ShardedFilename_1ShardedFilenamesave_16/StringJoinsave_16/ShardedFilename_1/shardsave_16/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_16/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_16/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ç
save_16/SaveV2_1SaveV2save_16/ShardedFilename_1save_16/SaveV2_1/tensor_names!save_16/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_16/control_dependency_1Identitysave_16/ShardedFilename_1^save_16/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_16/ShardedFilename_1*
_output_shapes
: 
ï
.save_16/MergeV2Checkpoints/checkpoint_prefixesPacksave_16/ShardedFilenamesave_16/ShardedFilename_1^save_16/control_dependency^save_16/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_16/MergeV2CheckpointsMergeV2Checkpoints.save_16/MergeV2Checkpoints/checkpoint_prefixessave_16/Const"/device:CPU:0*
delete_old_dirs(
´
save_16/IdentityIdentitysave_16/Const^save_16/MergeV2Checkpoints^save_16/control_dependency^save_16/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_16/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_16/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_16/RestoreV2	RestoreV2save_16/Constsave_16/RestoreV2/tensor_names"save_16/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_16/AssignAssignVariablesave_16/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_16/Assign_1Assignbeta1_powersave_16/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ğ
save_16/Assign_2Assignbeta2_powersave_16/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
Â
save_16/Assign_3Assigncnn_max_pool_2/Wsave_16/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_16/Assign_4Assigncnn_max_pool_2/W/Adamsave_16/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_16/Assign_5Assigncnn_max_pool_2/W/Adam_1save_16/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_16/Assign_6Assigncnn_max_pool_2/bsave_16/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_16/Assign_7Assigncnn_max_pool_2/b/Adamsave_16/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_16/Assign_8Assigncnn_max_pool_2/b/Adam_1save_16/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_16/Assign_9Assigncnn_max_pool_3/Wsave_16/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_16/Assign_10Assigncnn_max_pool_3/W/Adamsave_16/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_16/Assign_11Assigncnn_max_pool_3/W/Adam_1save_16/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
·
save_16/Assign_12Assigncnn_max_pool_3/bsave_16/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ĵ
save_16/Assign_13Assigncnn_max_pool_3/b/Adamsave_16/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_16/Assign_14Assigncnn_max_pool_3/b/Adam_1save_16/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_16/Assign_15Assigncnn_max_pool_4/Wsave_16/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_16/Assign_16Assigncnn_max_pool_4/W/Adamsave_16/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_16/Assign_17Assigncnn_max_pool_4/W/Adam_1save_16/RestoreV2:17*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
·
save_16/Assign_18Assigncnn_max_pool_4/bsave_16/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_16/Assign_19Assigncnn_max_pool_4/b/Adamsave_16/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_16/Assign_20Assigncnn_max_pool_4/b/Adam_1save_16/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_16/Assign_21Assignglobal_stepsave_16/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_16/LookupTableImportV2LookupTableImportV2label_tablesave_16/RestoreV2:22save_16/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_16/LookupTableImportV2_1LookupTableImportV2	out_tablesave_16/RestoreV2:24save_16/RestoreV2:25*

Tout0*
_class
loc:@out_table*	
Tin0	
Ğ
save_16/Assign_22Assignoutput/Wsave_16/RestoreV2:26*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
°
save_16/Assign_23Assignoutput/W/Adamsave_16/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_16/Assign_24Assignoutput/W/Adam_1save_16/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_16/Assign_25Assignoutput/bsave_16/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_16/Assign_26Assignoutput/b/Adamsave_16/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_16/Assign_27Assignoutput/b/Adam_1save_16/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ĥ
save_16/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_16/RestoreV2:32save_16/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0

save_16/restore_shardNoOp^save_16/Assign^save_16/Assign_1^save_16/Assign_10^save_16/Assign_11^save_16/Assign_12^save_16/Assign_13^save_16/Assign_14^save_16/Assign_15^save_16/Assign_16^save_16/Assign_17^save_16/Assign_18^save_16/Assign_19^save_16/Assign_2^save_16/Assign_20^save_16/Assign_21^save_16/Assign_22^save_16/Assign_23^save_16/Assign_24^save_16/Assign_25^save_16/Assign_26^save_16/Assign_27^save_16/Assign_3^save_16/Assign_4^save_16/Assign_5^save_16/Assign_6^save_16/Assign_7^save_16/Assign_8^save_16/Assign_9^save_16/LookupTableImportV2^save_16/LookupTableImportV2_1^save_16/LookupTableImportV2_2
Ä
 save_16/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_16/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_16/RestoreV2_1	RestoreV2save_16/Const save_16/RestoreV2_1/tensor_names$save_16/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_16/Assign_28Assignembedding/emb_matrixsave_16/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_16/Assign_29Assignembedding/emb_matrix/Adamsave_16/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_16/Assign_30Assignembedding/emb_matrix/Adam_1save_16/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_16/restore_shard_1NoOp^save_16/Assign_28^save_16/Assign_29^save_16/Assign_30"/device:CPU:0
8
save_16/restore_all/NoOpNoOp^save_16/restore_shard
K
save_16/restore_all/NoOp_1NoOp^save_16/restore_shard_1"/device:CPU:0
S
save_16/restore_allNoOp^save_16/restore_all/NoOp^save_16/restore_all/NoOp_1
S
save_17/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_17/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_8f7f431adccd4def9df5b26ac73c02fc/part*
dtype0
~
save_17/StringJoin
StringJoinsave_17/Constsave_17/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_17/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_17/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_17/ShardedFilenameShardedFilenamesave_17/StringJoinsave_17/ShardedFilename/shardsave_17/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_17/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_17/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
µ
save_17/SaveV2SaveV2save_17/ShardedFilenamesave_17/SaveV2/tensor_namessave_17/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_17/control_dependencyIdentitysave_17/ShardedFilename^save_17/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_17/ShardedFilename
p
save_17/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_17/ShardedFilename_1ShardedFilenamesave_17/StringJoinsave_17/ShardedFilename_1/shardsave_17/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_17/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_17/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_17/SaveV2_1SaveV2save_17/ShardedFilename_1save_17/SaveV2_1/tensor_names!save_17/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_17/control_dependency_1Identitysave_17/ShardedFilename_1^save_17/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_17/ShardedFilename_1*
_output_shapes
: 
ï
.save_17/MergeV2Checkpoints/checkpoint_prefixesPacksave_17/ShardedFilenamesave_17/ShardedFilename_1^save_17/control_dependency^save_17/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_17/MergeV2CheckpointsMergeV2Checkpoints.save_17/MergeV2Checkpoints/checkpoint_prefixessave_17/Const"/device:CPU:0*
delete_old_dirs(
´
save_17/IdentityIdentitysave_17/Const^save_17/MergeV2Checkpoints^save_17/control_dependency^save_17/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_17/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_17/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_17/RestoreV2	RestoreV2save_17/Constsave_17/RestoreV2/tensor_names"save_17/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_17/AssignAssignVariablesave_17/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ğ
save_17/Assign_1Assignbeta1_powersave_17/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_17/Assign_2Assignbeta2_powersave_17/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_17/Assign_3Assigncnn_max_pool_2/Wsave_17/RestoreV2:3*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ç
save_17/Assign_4Assigncnn_max_pool_2/W/Adamsave_17/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_17/Assign_5Assigncnn_max_pool_2/W/Adam_1save_17/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_17/Assign_6Assigncnn_max_pool_2/bsave_17/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_17/Assign_7Assigncnn_max_pool_2/b/Adamsave_17/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_17/Assign_8Assigncnn_max_pool_2/b/Adam_1save_17/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_17/Assign_9Assigncnn_max_pool_3/Wsave_17/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_17/Assign_10Assigncnn_max_pool_3/W/Adamsave_17/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_17/Assign_11Assigncnn_max_pool_3/W/Adam_1save_17/RestoreV2:11*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
·
save_17/Assign_12Assigncnn_max_pool_3/bsave_17/RestoreV2:12*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
ĵ
save_17/Assign_13Assigncnn_max_pool_3/b/Adamsave_17/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_17/Assign_14Assigncnn_max_pool_3/b/Adam_1save_17/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_17/Assign_15Assigncnn_max_pool_4/Wsave_17/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_17/Assign_16Assigncnn_max_pool_4/W/Adamsave_17/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_17/Assign_17Assigncnn_max_pool_4/W/Adam_1save_17/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_17/Assign_18Assigncnn_max_pool_4/bsave_17/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_17/Assign_19Assigncnn_max_pool_4/b/Adamsave_17/RestoreV2:19*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
?
save_17/Assign_20Assigncnn_max_pool_4/b/Adam_1save_17/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_17/Assign_21Assignglobal_stepsave_17/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_17/LookupTableImportV2LookupTableImportV2label_tablesave_17/RestoreV2:22save_17/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
 
save_17/LookupTableImportV2_1LookupTableImportV2	out_tablesave_17/RestoreV2:24save_17/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_17/Assign_22Assignoutput/Wsave_17/RestoreV2:26*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
°
save_17/Assign_23Assignoutput/W/Adamsave_17/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_17/Assign_24Assignoutput/W/Adam_1save_17/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_17/Assign_25Assignoutput/bsave_17/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ğ
save_17/Assign_26Assignoutput/b/Adamsave_17/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_17/Assign_27Assignoutput/b/Adam_1save_17/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ĥ
save_17/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_17/RestoreV2:32save_17/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_17/restore_shardNoOp^save_17/Assign^save_17/Assign_1^save_17/Assign_10^save_17/Assign_11^save_17/Assign_12^save_17/Assign_13^save_17/Assign_14^save_17/Assign_15^save_17/Assign_16^save_17/Assign_17^save_17/Assign_18^save_17/Assign_19^save_17/Assign_2^save_17/Assign_20^save_17/Assign_21^save_17/Assign_22^save_17/Assign_23^save_17/Assign_24^save_17/Assign_25^save_17/Assign_26^save_17/Assign_27^save_17/Assign_3^save_17/Assign_4^save_17/Assign_5^save_17/Assign_6^save_17/Assign_7^save_17/Assign_8^save_17/Assign_9^save_17/LookupTableImportV2^save_17/LookupTableImportV2_1^save_17/LookupTableImportV2_2
Ä
 save_17/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1

$save_17/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ğ
save_17/RestoreV2_1	RestoreV2save_17/Const save_17/RestoreV2_1/tensor_names$save_17/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_17/Assign_28Assignembedding/emb_matrixsave_17/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_17/Assign_29Assignembedding/emb_matrix/Adamsave_17/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_17/Assign_30Assignembedding/emb_matrix/Adam_1save_17/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_17/restore_shard_1NoOp^save_17/Assign_28^save_17/Assign_29^save_17/Assign_30"/device:CPU:0
8
save_17/restore_all/NoOpNoOp^save_17/restore_shard
K
save_17/restore_all/NoOp_1NoOp^save_17/restore_shard_1"/device:CPU:0
S
save_17/restore_allNoOp^save_17/restore_all/NoOp^save_17/restore_all/NoOp_1
S
save_18/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_18/StringJoin/inputs_1Const*<
value3B1 B+_temp_193a4873c4904b1cbb92667d42573f06/part*
dtype0*
_output_shapes
: 
~
save_18/StringJoin
StringJoinsave_18/Constsave_18/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_18/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_18/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save_18/ShardedFilenameShardedFilenamesave_18/StringJoinsave_18/ShardedFilename/shardsave_18/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_18/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ı
save_18/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
µ
save_18/SaveV2SaveV2save_18/ShardedFilenamesave_18/SaveV2/tensor_namessave_18/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_18/control_dependencyIdentitysave_18/ShardedFilename^save_18/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_18/ShardedFilename
p
save_18/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save_18/ShardedFilename_1ShardedFilenamesave_18/StringJoinsave_18/ShardedFilename_1/shardsave_18/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_18/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_18/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_18/SaveV2_1SaveV2save_18/ShardedFilename_1save_18/SaveV2_1/tensor_names!save_18/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_18/control_dependency_1Identitysave_18/ShardedFilename_1^save_18/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_18/ShardedFilename_1*
_output_shapes
: 
ï
.save_18/MergeV2Checkpoints/checkpoint_prefixesPacksave_18/ShardedFilenamesave_18/ShardedFilename_1^save_18/control_dependency^save_18/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_18/MergeV2CheckpointsMergeV2Checkpoints.save_18/MergeV2Checkpoints/checkpoint_prefixessave_18/Const"/device:CPU:0*
delete_old_dirs(
´
save_18/IdentityIdentitysave_18/Const^save_18/MergeV2Checkpoints^save_18/control_dependency^save_18/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_18/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_18/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_18/RestoreV2	RestoreV2save_18/Constsave_18/RestoreV2/tensor_names"save_18/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_18/AssignAssignVariablesave_18/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_18/Assign_1Assignbeta1_powersave_18/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ğ
save_18/Assign_2Assignbeta2_powersave_18/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_18/Assign_3Assigncnn_max_pool_2/Wsave_18/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_18/Assign_4Assigncnn_max_pool_2/W/Adamsave_18/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_18/Assign_5Assigncnn_max_pool_2/W/Adam_1save_18/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_18/Assign_6Assigncnn_max_pool_2/bsave_18/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_18/Assign_7Assigncnn_max_pool_2/b/Adamsave_18/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_18/Assign_8Assigncnn_max_pool_2/b/Adam_1save_18/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
Â
save_18/Assign_9Assigncnn_max_pool_3/Wsave_18/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_18/Assign_10Assigncnn_max_pool_3/W/Adamsave_18/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ë
save_18/Assign_11Assigncnn_max_pool_3/W/Adam_1save_18/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_18/Assign_12Assigncnn_max_pool_3/bsave_18/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĵ
save_18/Assign_13Assigncnn_max_pool_3/b/Adamsave_18/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_18/Assign_14Assigncnn_max_pool_3/b/Adam_1save_18/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ä
save_18/Assign_15Assigncnn_max_pool_4/Wsave_18/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_18/Assign_16Assigncnn_max_pool_4/W/Adamsave_18/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_18/Assign_17Assigncnn_max_pool_4/W/Adam_1save_18/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_18/Assign_18Assigncnn_max_pool_4/bsave_18/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_18/Assign_19Assigncnn_max_pool_4/b/Adamsave_18/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_18/Assign_20Assigncnn_max_pool_4/b/Adam_1save_18/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
¨
save_18/Assign_21Assignglobal_stepsave_18/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
˘
save_18/LookupTableImportV2LookupTableImportV2label_tablesave_18/RestoreV2:22save_18/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
 
save_18/LookupTableImportV2_1LookupTableImportV2	out_tablesave_18/RestoreV2:24save_18/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_18/Assign_22Assignoutput/Wsave_18/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_18/Assign_23Assignoutput/W/Adamsave_18/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_18/Assign_24Assignoutput/W/Adam_1save_18/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_18/Assign_25Assignoutput/bsave_18/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_18/Assign_26Assignoutput/b/Adamsave_18/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_18/Assign_27Assignoutput/b/Adam_1save_18/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ĥ
save_18/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_18/RestoreV2:32save_18/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_18/restore_shardNoOp^save_18/Assign^save_18/Assign_1^save_18/Assign_10^save_18/Assign_11^save_18/Assign_12^save_18/Assign_13^save_18/Assign_14^save_18/Assign_15^save_18/Assign_16^save_18/Assign_17^save_18/Assign_18^save_18/Assign_19^save_18/Assign_2^save_18/Assign_20^save_18/Assign_21^save_18/Assign_22^save_18/Assign_23^save_18/Assign_24^save_18/Assign_25^save_18/Assign_26^save_18/Assign_27^save_18/Assign_3^save_18/Assign_4^save_18/Assign_5^save_18/Assign_6^save_18/Assign_7^save_18/Assign_8^save_18/Assign_9^save_18/LookupTableImportV2^save_18/LookupTableImportV2_1^save_18/LookupTableImportV2_2
Ä
 save_18/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_18/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_18/RestoreV2_1	RestoreV2save_18/Const save_18/RestoreV2_1/tensor_names$save_18/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_18/Assign_28Assignembedding/emb_matrixsave_18/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_18/Assign_29Assignembedding/emb_matrix/Adamsave_18/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_18/Assign_30Assignembedding/emb_matrix/Adam_1save_18/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_18/restore_shard_1NoOp^save_18/Assign_28^save_18/Assign_29^save_18/Assign_30"/device:CPU:0
8
save_18/restore_all/NoOpNoOp^save_18/restore_shard
K
save_18/restore_all/NoOp_1NoOp^save_18/restore_shard_1"/device:CPU:0
S
save_18/restore_allNoOp^save_18/restore_all/NoOp^save_18/restore_all/NoOp_1
S
save_19/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_19/StringJoin/inputs_1Const*<
value3B1 B+_temp_5eb58b6fadaf47d095efeadffc0a0178/part*
dtype0*
_output_shapes
: 
~
save_19/StringJoin
StringJoinsave_19/Constsave_19/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_19/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_19/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save_19/ShardedFilenameShardedFilenamesave_19/StringJoinsave_19/ShardedFilename/shardsave_19/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_19/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ı
save_19/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_19/SaveV2SaveV2save_19/ShardedFilenamesave_19/SaveV2/tensor_namessave_19/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_19/control_dependencyIdentitysave_19/ShardedFilename^save_19/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_19/ShardedFilename*
_output_shapes
: 
p
save_19/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_19/ShardedFilename_1ShardedFilenamesave_19/StringJoinsave_19/ShardedFilename_1/shardsave_19/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_19/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_19/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ç
save_19/SaveV2_1SaveV2save_19/ShardedFilename_1save_19/SaveV2_1/tensor_names!save_19/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_19/control_dependency_1Identitysave_19/ShardedFilename_1^save_19/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_19/ShardedFilename_1*
_output_shapes
: 
ï
.save_19/MergeV2Checkpoints/checkpoint_prefixesPacksave_19/ShardedFilenamesave_19/ShardedFilename_1^save_19/control_dependency^save_19/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_19/MergeV2CheckpointsMergeV2Checkpoints.save_19/MergeV2Checkpoints/checkpoint_prefixessave_19/Const"/device:CPU:0*
delete_old_dirs(
´
save_19/IdentityIdentitysave_19/Const^save_19/MergeV2Checkpoints^save_19/control_dependency^save_19/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_19/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_19/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_19/RestoreV2	RestoreV2save_19/Constsave_19/RestoreV2/tensor_names"save_19/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_19/AssignAssignVariablesave_19/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_19/Assign_1Assignbeta1_powersave_19/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_19/Assign_2Assignbeta2_powersave_19/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Â
save_19/Assign_3Assigncnn_max_pool_2/Wsave_19/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_19/Assign_4Assigncnn_max_pool_2/W/Adamsave_19/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_19/Assign_5Assigncnn_max_pool_2/W/Adam_1save_19/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_19/Assign_6Assigncnn_max_pool_2/bsave_19/RestoreV2:6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ş
save_19/Assign_7Assigncnn_max_pool_2/b/Adamsave_19/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĵ
save_19/Assign_8Assigncnn_max_pool_2/b/Adam_1save_19/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
Â
save_19/Assign_9Assigncnn_max_pool_3/Wsave_19/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_19/Assign_10Assigncnn_max_pool_3/W/Adamsave_19/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_19/Assign_11Assigncnn_max_pool_3/W/Adam_1save_19/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_19/Assign_12Assigncnn_max_pool_3/bsave_19/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_19/Assign_13Assigncnn_max_pool_3/b/Adamsave_19/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_19/Assign_14Assigncnn_max_pool_3/b/Adam_1save_19/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Ä
save_19/Assign_15Assigncnn_max_pool_4/Wsave_19/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_19/Assign_16Assigncnn_max_pool_4/W/Adamsave_19/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ë
save_19/Assign_17Assigncnn_max_pool_4/W/Adam_1save_19/RestoreV2:17*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
·
save_19/Assign_18Assigncnn_max_pool_4/bsave_19/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_19/Assign_19Assigncnn_max_pool_4/b/Adamsave_19/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
?
save_19/Assign_20Assigncnn_max_pool_4/b/Adam_1save_19/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_19/Assign_21Assignglobal_stepsave_19/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
˘
save_19/LookupTableImportV2LookupTableImportV2label_tablesave_19/RestoreV2:22save_19/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
 
save_19/LookupTableImportV2_1LookupTableImportV2	out_tablesave_19/RestoreV2:24save_19/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_19/Assign_22Assignoutput/Wsave_19/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_19/Assign_23Assignoutput/W/Adamsave_19/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_19/Assign_24Assignoutput/W/Adam_1save_19/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_19/Assign_25Assignoutput/bsave_19/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_19/Assign_26Assignoutput/b/Adamsave_19/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_19/Assign_27Assignoutput/b/Adam_1save_19/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_19/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_19/RestoreV2:32save_19/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_19/restore_shardNoOp^save_19/Assign^save_19/Assign_1^save_19/Assign_10^save_19/Assign_11^save_19/Assign_12^save_19/Assign_13^save_19/Assign_14^save_19/Assign_15^save_19/Assign_16^save_19/Assign_17^save_19/Assign_18^save_19/Assign_19^save_19/Assign_2^save_19/Assign_20^save_19/Assign_21^save_19/Assign_22^save_19/Assign_23^save_19/Assign_24^save_19/Assign_25^save_19/Assign_26^save_19/Assign_27^save_19/Assign_3^save_19/Assign_4^save_19/Assign_5^save_19/Assign_6^save_19/Assign_7^save_19/Assign_8^save_19/Assign_9^save_19/LookupTableImportV2^save_19/LookupTableImportV2_1^save_19/LookupTableImportV2_2
Ä
 save_19/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_19/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_19/RestoreV2_1	RestoreV2save_19/Const save_19/RestoreV2_1/tensor_names$save_19/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_19/Assign_28Assignembedding/emb_matrixsave_19/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_19/Assign_29Assignembedding/emb_matrix/Adamsave_19/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Û
save_19/Assign_30Assignembedding/emb_matrix/Adam_1save_19/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_19/restore_shard_1NoOp^save_19/Assign_28^save_19/Assign_29^save_19/Assign_30"/device:CPU:0
8
save_19/restore_all/NoOpNoOp^save_19/restore_shard
K
save_19/restore_all/NoOp_1NoOp^save_19/restore_shard_1"/device:CPU:0
S
save_19/restore_allNoOp^save_19/restore_all/NoOp^save_19/restore_all/NoOp_1
S
save_20/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_20/StringJoin/inputs_1Const*<
value3B1 B+_temp_317081b2f55648ad9415d11142abfc63/part*
dtype0*
_output_shapes
: 
~
save_20/StringJoin
StringJoinsave_20/Constsave_20/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_20/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_20/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_20/ShardedFilenameShardedFilenamesave_20/StringJoinsave_20/ShardedFilename/shardsave_20/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_20/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_20/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_20/SaveV2SaveV2save_20/ShardedFilenamesave_20/SaveV2/tensor_namessave_20/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_20/control_dependencyIdentitysave_20/ShardedFilename^save_20/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_20/ShardedFilename*
_output_shapes
: 
p
save_20/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_20/ShardedFilename_1ShardedFilenamesave_20/StringJoinsave_20/ShardedFilename_1/shardsave_20/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_20/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_20/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ç
save_20/SaveV2_1SaveV2save_20/ShardedFilename_1save_20/SaveV2_1/tensor_names!save_20/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_20/control_dependency_1Identitysave_20/ShardedFilename_1^save_20/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_20/ShardedFilename_1*
_output_shapes
: 
ï
.save_20/MergeV2Checkpoints/checkpoint_prefixesPacksave_20/ShardedFilenamesave_20/ShardedFilename_1^save_20/control_dependency^save_20/control_dependency_1"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0

save_20/MergeV2CheckpointsMergeV2Checkpoints.save_20/MergeV2Checkpoints/checkpoint_prefixessave_20/Const"/device:CPU:0*
delete_old_dirs(
´
save_20/IdentityIdentitysave_20/Const^save_20/MergeV2Checkpoints^save_20/control_dependency^save_20/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_20/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_20/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_20/RestoreV2	RestoreV2save_20/Constsave_20/RestoreV2/tensor_names"save_20/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_20/AssignAssignVariablesave_20/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_20/Assign_1Assignbeta1_powersave_20/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_20/Assign_2Assignbeta2_powersave_20/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_20/Assign_3Assigncnn_max_pool_2/Wsave_20/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_20/Assign_4Assigncnn_max_pool_2/W/Adamsave_20/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_20/Assign_5Assigncnn_max_pool_2/W/Adam_1save_20/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_20/Assign_6Assigncnn_max_pool_2/bsave_20/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_20/Assign_7Assigncnn_max_pool_2/b/Adamsave_20/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_20/Assign_8Assigncnn_max_pool_2/b/Adam_1save_20/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_20/Assign_9Assigncnn_max_pool_3/Wsave_20/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_20/Assign_10Assigncnn_max_pool_3/W/Adamsave_20/RestoreV2:10*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
Ë
save_20/Assign_11Assigncnn_max_pool_3/W/Adam_1save_20/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_20/Assign_12Assigncnn_max_pool_3/bsave_20/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_20/Assign_13Assigncnn_max_pool_3/b/Adamsave_20/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_20/Assign_14Assigncnn_max_pool_3/b/Adam_1save_20/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_20/Assign_15Assigncnn_max_pool_4/Wsave_20/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_20/Assign_16Assigncnn_max_pool_4/W/Adamsave_20/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ë
save_20/Assign_17Assigncnn_max_pool_4/W/Adam_1save_20/RestoreV2:17*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
·
save_20/Assign_18Assigncnn_max_pool_4/bsave_20/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_20/Assign_19Assigncnn_max_pool_4/b/Adamsave_20/RestoreV2:19*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
?
save_20/Assign_20Assigncnn_max_pool_4/b/Adam_1save_20/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_20/Assign_21Assignglobal_stepsave_20/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_20/LookupTableImportV2LookupTableImportV2label_tablesave_20/RestoreV2:22save_20/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_20/LookupTableImportV2_1LookupTableImportV2	out_tablesave_20/RestoreV2:24save_20/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_20/Assign_22Assignoutput/Wsave_20/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_20/Assign_23Assignoutput/W/Adamsave_20/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_20/Assign_24Assignoutput/W/Adam_1save_20/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_20/Assign_25Assignoutput/bsave_20/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ğ
save_20/Assign_26Assignoutput/b/Adamsave_20/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
­
save_20/Assign_27Assignoutput/b/Adam_1save_20/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_20/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_20/RestoreV2:32save_20/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_20/restore_shardNoOp^save_20/Assign^save_20/Assign_1^save_20/Assign_10^save_20/Assign_11^save_20/Assign_12^save_20/Assign_13^save_20/Assign_14^save_20/Assign_15^save_20/Assign_16^save_20/Assign_17^save_20/Assign_18^save_20/Assign_19^save_20/Assign_2^save_20/Assign_20^save_20/Assign_21^save_20/Assign_22^save_20/Assign_23^save_20/Assign_24^save_20/Assign_25^save_20/Assign_26^save_20/Assign_27^save_20/Assign_3^save_20/Assign_4^save_20/Assign_5^save_20/Assign_6^save_20/Assign_7^save_20/Assign_8^save_20/Assign_9^save_20/LookupTableImportV2^save_20/LookupTableImportV2_1^save_20/LookupTableImportV2_2
Ä
 save_20/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1

$save_20/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_20/RestoreV2_1	RestoreV2save_20/Const save_20/RestoreV2_1/tensor_names$save_20/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_20/Assign_28Assignembedding/emb_matrixsave_20/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
Ù
save_20/Assign_29Assignembedding/emb_matrix/Adamsave_20/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_20/Assign_30Assignembedding/emb_matrix/Adam_1save_20/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_20/restore_shard_1NoOp^save_20/Assign_28^save_20/Assign_29^save_20/Assign_30"/device:CPU:0
8
save_20/restore_all/NoOpNoOp^save_20/restore_shard
K
save_20/restore_all/NoOp_1NoOp^save_20/restore_shard_1"/device:CPU:0
S
save_20/restore_allNoOp^save_20/restore_all/NoOp^save_20/restore_all/NoOp_1
S
save_21/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_21/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_1a94dae224624c6facb1eaf45914e426/part*
dtype0
~
save_21/StringJoin
StringJoinsave_21/Constsave_21/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_21/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_21/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_21/ShardedFilenameShardedFilenamesave_21/StringJoinsave_21/ShardedFilename/shardsave_21/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_21/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ı
save_21/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_21/SaveV2SaveV2save_21/ShardedFilenamesave_21/SaveV2/tensor_namessave_21/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_21/control_dependencyIdentitysave_21/ShardedFilename^save_21/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_21/ShardedFilename*
_output_shapes
: 
p
save_21/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save_21/ShardedFilename_1ShardedFilenamesave_21/StringJoinsave_21/ShardedFilename_1/shardsave_21/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_21/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_21/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_21/SaveV2_1SaveV2save_21/ShardedFilename_1save_21/SaveV2_1/tensor_names!save_21/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_21/control_dependency_1Identitysave_21/ShardedFilename_1^save_21/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_21/ShardedFilename_1*
_output_shapes
: 
ï
.save_21/MergeV2Checkpoints/checkpoint_prefixesPacksave_21/ShardedFilenamesave_21/ShardedFilename_1^save_21/control_dependency^save_21/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_21/MergeV2CheckpointsMergeV2Checkpoints.save_21/MergeV2Checkpoints/checkpoint_prefixessave_21/Const"/device:CPU:0*
delete_old_dirs(
´
save_21/IdentityIdentitysave_21/Const^save_21/MergeV2Checkpoints^save_21/control_dependency^save_21/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_21/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_21/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_21/RestoreV2	RestoreV2save_21/Constsave_21/RestoreV2/tensor_names"save_21/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_21/AssignAssignVariablesave_21/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
Ğ
save_21/Assign_1Assignbeta1_powersave_21/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ğ
save_21/Assign_2Assignbeta2_powersave_21/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_21/Assign_3Assigncnn_max_pool_2/Wsave_21/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_21/Assign_4Assigncnn_max_pool_2/W/Adamsave_21/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_21/Assign_5Assigncnn_max_pool_2/W/Adam_1save_21/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_21/Assign_6Assigncnn_max_pool_2/bsave_21/RestoreV2:6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ş
save_21/Assign_7Assigncnn_max_pool_2/b/Adamsave_21/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_21/Assign_8Assigncnn_max_pool_2/b/Adam_1save_21/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Â
save_21/Assign_9Assigncnn_max_pool_3/Wsave_21/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_21/Assign_10Assigncnn_max_pool_3/W/Adamsave_21/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_21/Assign_11Assigncnn_max_pool_3/W/Adam_1save_21/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_21/Assign_12Assigncnn_max_pool_3/bsave_21/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĵ
save_21/Assign_13Assigncnn_max_pool_3/b/Adamsave_21/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_21/Assign_14Assigncnn_max_pool_3/b/Adam_1save_21/RestoreV2:14*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
Ä
save_21/Assign_15Assigncnn_max_pool_4/Wsave_21/RestoreV2:15*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_21/Assign_16Assigncnn_max_pool_4/W/Adamsave_21/RestoreV2:16*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ë
save_21/Assign_17Assigncnn_max_pool_4/W/Adam_1save_21/RestoreV2:17*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
·
save_21/Assign_18Assigncnn_max_pool_4/bsave_21/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_21/Assign_19Assigncnn_max_pool_4/b/Adamsave_21/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_21/Assign_20Assigncnn_max_pool_4/b/Adam_1save_21/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_21/Assign_21Assignglobal_stepsave_21/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
˘
save_21/LookupTableImportV2LookupTableImportV2label_tablesave_21/RestoreV2:22save_21/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_21/LookupTableImportV2_1LookupTableImportV2	out_tablesave_21/RestoreV2:24save_21/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_21/Assign_22Assignoutput/Wsave_21/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_21/Assign_23Assignoutput/W/Adamsave_21/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_21/Assign_24Assignoutput/W/Adam_1save_21/RestoreV2:28*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
Ĥ
save_21/Assign_25Assignoutput/bsave_21/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_21/Assign_26Assignoutput/b/Adamsave_21/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
­
save_21/Assign_27Assignoutput/b/Adam_1save_21/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_21/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_21/RestoreV2:32save_21/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_21/restore_shardNoOp^save_21/Assign^save_21/Assign_1^save_21/Assign_10^save_21/Assign_11^save_21/Assign_12^save_21/Assign_13^save_21/Assign_14^save_21/Assign_15^save_21/Assign_16^save_21/Assign_17^save_21/Assign_18^save_21/Assign_19^save_21/Assign_2^save_21/Assign_20^save_21/Assign_21^save_21/Assign_22^save_21/Assign_23^save_21/Assign_24^save_21/Assign_25^save_21/Assign_26^save_21/Assign_27^save_21/Assign_3^save_21/Assign_4^save_21/Assign_5^save_21/Assign_6^save_21/Assign_7^save_21/Assign_8^save_21/Assign_9^save_21/LookupTableImportV2^save_21/LookupTableImportV2_1^save_21/LookupTableImportV2_2
Ä
 save_21/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_21/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_21/RestoreV2_1	RestoreV2save_21/Const save_21/RestoreV2_1/tensor_names$save_21/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_21/Assign_28Assignembedding/emb_matrixsave_21/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_21/Assign_29Assignembedding/emb_matrix/Adamsave_21/RestoreV2_1:1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
Û
save_21/Assign_30Assignembedding/emb_matrix/Adam_1save_21/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_21/restore_shard_1NoOp^save_21/Assign_28^save_21/Assign_29^save_21/Assign_30"/device:CPU:0
8
save_21/restore_all/NoOpNoOp^save_21/restore_shard
K
save_21/restore_all/NoOp_1NoOp^save_21/restore_shard_1"/device:CPU:0
S
save_21/restore_allNoOp^save_21/restore_all/NoOp^save_21/restore_all/NoOp_1
S
save_22/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_22/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_19c07eefbe024dffbe08986af81885a0/part
~
save_22/StringJoin
StringJoinsave_22/Constsave_22/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_22/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
n
save_22/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_22/ShardedFilenameShardedFilenamesave_22/StringJoinsave_22/ShardedFilename/shardsave_22/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_22/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0
ı
save_22/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_22/SaveV2SaveV2save_22/ShardedFilenamesave_22/SaveV2/tensor_namessave_22/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_22/control_dependencyIdentitysave_22/ShardedFilename^save_22/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_22/ShardedFilename
p
save_22/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_22/ShardedFilename_1ShardedFilenamesave_22/StringJoinsave_22/ShardedFilename_1/shardsave_22/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_22/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_22/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ç
save_22/SaveV2_1SaveV2save_22/ShardedFilename_1save_22/SaveV2_1/tensor_names!save_22/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_22/control_dependency_1Identitysave_22/ShardedFilename_1^save_22/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_22/ShardedFilename_1*
_output_shapes
: 
ï
.save_22/MergeV2Checkpoints/checkpoint_prefixesPacksave_22/ShardedFilenamesave_22/ShardedFilename_1^save_22/control_dependency^save_22/control_dependency_1"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N

save_22/MergeV2CheckpointsMergeV2Checkpoints.save_22/MergeV2Checkpoints/checkpoint_prefixessave_22/Const"/device:CPU:0*
delete_old_dirs(
´
save_22/IdentityIdentitysave_22/Const^save_22/MergeV2Checkpoints^save_22/control_dependency^save_22/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_22/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_22/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_22/RestoreV2	RestoreV2save_22/Constsave_22/RestoreV2/tensor_names"save_22/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_22/AssignAssignVariablesave_22/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_22/Assign_1Assignbeta1_powersave_22/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_22/Assign_2Assignbeta2_powersave_22/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_22/Assign_3Assigncnn_max_pool_2/Wsave_22/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_22/Assign_4Assigncnn_max_pool_2/W/Adamsave_22/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
É
save_22/Assign_5Assigncnn_max_pool_2/W/Adam_1save_22/RestoreV2:5*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
µ
save_22/Assign_6Assigncnn_max_pool_2/bsave_22/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_22/Assign_7Assigncnn_max_pool_2/b/Adamsave_22/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_22/Assign_8Assigncnn_max_pool_2/b/Adam_1save_22/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_22/Assign_9Assigncnn_max_pool_3/Wsave_22/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_22/Assign_10Assigncnn_max_pool_3/W/Adamsave_22/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_22/Assign_11Assigncnn_max_pool_3/W/Adam_1save_22/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_22/Assign_12Assigncnn_max_pool_3/bsave_22/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_22/Assign_13Assigncnn_max_pool_3/b/Adamsave_22/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_22/Assign_14Assigncnn_max_pool_3/b/Adam_1save_22/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_22/Assign_15Assigncnn_max_pool_4/Wsave_22/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_22/Assign_16Assigncnn_max_pool_4/W/Adamsave_22/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_22/Assign_17Assigncnn_max_pool_4/W/Adam_1save_22/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_22/Assign_18Assigncnn_max_pool_4/bsave_22/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_22/Assign_19Assigncnn_max_pool_4/b/Adamsave_22/RestoreV2:19*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
?
save_22/Assign_20Assigncnn_max_pool_4/b/Adam_1save_22/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¨
save_22/Assign_21Assignglobal_stepsave_22/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_22/LookupTableImportV2LookupTableImportV2label_tablesave_22/RestoreV2:22save_22/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
 
save_22/LookupTableImportV2_1LookupTableImportV2	out_tablesave_22/RestoreV2:24save_22/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_22/Assign_22Assignoutput/Wsave_22/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_22/Assign_23Assignoutput/W/Adamsave_22/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_22/Assign_24Assignoutput/W/Adam_1save_22/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_22/Assign_25Assignoutput/bsave_22/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_22/Assign_26Assignoutput/b/Adamsave_22/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
­
save_22/Assign_27Assignoutput/b/Adam_1save_22/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_22/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_22/RestoreV2:32save_22/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_22/restore_shardNoOp^save_22/Assign^save_22/Assign_1^save_22/Assign_10^save_22/Assign_11^save_22/Assign_12^save_22/Assign_13^save_22/Assign_14^save_22/Assign_15^save_22/Assign_16^save_22/Assign_17^save_22/Assign_18^save_22/Assign_19^save_22/Assign_2^save_22/Assign_20^save_22/Assign_21^save_22/Assign_22^save_22/Assign_23^save_22/Assign_24^save_22/Assign_25^save_22/Assign_26^save_22/Assign_27^save_22/Assign_3^save_22/Assign_4^save_22/Assign_5^save_22/Assign_6^save_22/Assign_7^save_22/Assign_8^save_22/Assign_9^save_22/LookupTableImportV2^save_22/LookupTableImportV2_1^save_22/LookupTableImportV2_2
Ä
 save_22/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_22/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_22/RestoreV2_1	RestoreV2save_22/Const save_22/RestoreV2_1/tensor_names$save_22/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_22/Assign_28Assignembedding/emb_matrixsave_22/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_22/Assign_29Assignembedding/emb_matrix/Adamsave_22/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_22/Assign_30Assignembedding/emb_matrix/Adam_1save_22/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_22/restore_shard_1NoOp^save_22/Assign_28^save_22/Assign_29^save_22/Assign_30"/device:CPU:0
8
save_22/restore_all/NoOpNoOp^save_22/restore_shard
K
save_22/restore_all/NoOp_1NoOp^save_22/restore_shard_1"/device:CPU:0
S
save_22/restore_allNoOp^save_22/restore_all/NoOp^save_22/restore_all/NoOp_1
S
save_23/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_23/StringJoin/inputs_1Const*<
value3B1 B+_temp_ca50880532a8416cbd6c96942742e71a/part*
dtype0*
_output_shapes
: 
~
save_23/StringJoin
StringJoinsave_23/Constsave_23/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_23/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
n
save_23/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_23/ShardedFilenameShardedFilenamesave_23/StringJoinsave_23/ShardedFilename/shardsave_23/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_23/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_23/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_23/SaveV2SaveV2save_23/ShardedFilenamesave_23/SaveV2/tensor_namessave_23/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_23/control_dependencyIdentitysave_23/ShardedFilename^save_23/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_23/ShardedFilename*
_output_shapes
: 
p
save_23/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_23/ShardedFilename_1ShardedFilenamesave_23/StringJoinsave_23/ShardedFilename_1/shardsave_23/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_23/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_23/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_23/SaveV2_1SaveV2save_23/ShardedFilename_1save_23/SaveV2_1/tensor_names!save_23/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_23/control_dependency_1Identitysave_23/ShardedFilename_1^save_23/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_23/ShardedFilename_1
ï
.save_23/MergeV2Checkpoints/checkpoint_prefixesPacksave_23/ShardedFilenamesave_23/ShardedFilename_1^save_23/control_dependency^save_23/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_23/MergeV2CheckpointsMergeV2Checkpoints.save_23/MergeV2Checkpoints/checkpoint_prefixessave_23/Const"/device:CPU:0*
delete_old_dirs(
´
save_23/IdentityIdentitysave_23/Const^save_23/MergeV2Checkpoints^save_23/control_dependency^save_23/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_23/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_23/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ó
save_23/RestoreV2	RestoreV2save_23/Constsave_23/RestoreV2/tensor_names"save_23/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_23/AssignAssignVariablesave_23/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_23/Assign_1Assignbeta1_powersave_23/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_23/Assign_2Assignbeta2_powersave_23/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Â
save_23/Assign_3Assigncnn_max_pool_2/Wsave_23/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_23/Assign_4Assigncnn_max_pool_2/W/Adamsave_23/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_23/Assign_5Assigncnn_max_pool_2/W/Adam_1save_23/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_23/Assign_6Assigncnn_max_pool_2/bsave_23/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ş
save_23/Assign_7Assigncnn_max_pool_2/b/Adamsave_23/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĵ
save_23/Assign_8Assigncnn_max_pool_2/b/Adam_1save_23/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_23/Assign_9Assigncnn_max_pool_3/Wsave_23/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_23/Assign_10Assigncnn_max_pool_3/W/Adamsave_23/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_23/Assign_11Assigncnn_max_pool_3/W/Adam_1save_23/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_23/Assign_12Assigncnn_max_pool_3/bsave_23/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_23/Assign_13Assigncnn_max_pool_3/b/Adamsave_23/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_23/Assign_14Assigncnn_max_pool_3/b/Adam_1save_23/RestoreV2:14*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ä
save_23/Assign_15Assigncnn_max_pool_4/Wsave_23/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_23/Assign_16Assigncnn_max_pool_4/W/Adamsave_23/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_23/Assign_17Assigncnn_max_pool_4/W/Adam_1save_23/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_23/Assign_18Assigncnn_max_pool_4/bsave_23/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_23/Assign_19Assigncnn_max_pool_4/b/Adamsave_23/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_23/Assign_20Assigncnn_max_pool_4/b/Adam_1save_23/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¨
save_23/Assign_21Assignglobal_stepsave_23/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
˘
save_23/LookupTableImportV2LookupTableImportV2label_tablesave_23/RestoreV2:22save_23/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_23/LookupTableImportV2_1LookupTableImportV2	out_tablesave_23/RestoreV2:24save_23/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_23/Assign_22Assignoutput/Wsave_23/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_23/Assign_23Assignoutput/W/Adamsave_23/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_23/Assign_24Assignoutput/W/Adam_1save_23/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_23/Assign_25Assignoutput/bsave_23/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ğ
save_23/Assign_26Assignoutput/b/Adamsave_23/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
­
save_23/Assign_27Assignoutput/b/Adam_1save_23/RestoreV2:31*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ĥ
save_23/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_23/RestoreV2:32save_23/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0

save_23/restore_shardNoOp^save_23/Assign^save_23/Assign_1^save_23/Assign_10^save_23/Assign_11^save_23/Assign_12^save_23/Assign_13^save_23/Assign_14^save_23/Assign_15^save_23/Assign_16^save_23/Assign_17^save_23/Assign_18^save_23/Assign_19^save_23/Assign_2^save_23/Assign_20^save_23/Assign_21^save_23/Assign_22^save_23/Assign_23^save_23/Assign_24^save_23/Assign_25^save_23/Assign_26^save_23/Assign_27^save_23/Assign_3^save_23/Assign_4^save_23/Assign_5^save_23/Assign_6^save_23/Assign_7^save_23/Assign_8^save_23/Assign_9^save_23/LookupTableImportV2^save_23/LookupTableImportV2_1^save_23/LookupTableImportV2_2
Ä
 save_23/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_23/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_23/RestoreV2_1	RestoreV2save_23/Const save_23/RestoreV2_1/tensor_names$save_23/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_23/Assign_28Assignembedding/emb_matrixsave_23/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_23/Assign_29Assignembedding/emb_matrix/Adamsave_23/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Û
save_23/Assign_30Assignembedding/emb_matrix/Adam_1save_23/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_23/restore_shard_1NoOp^save_23/Assign_28^save_23/Assign_29^save_23/Assign_30"/device:CPU:0
8
save_23/restore_all/NoOpNoOp^save_23/restore_shard
K
save_23/restore_all/NoOp_1NoOp^save_23/restore_shard_1"/device:CPU:0
S
save_23/restore_allNoOp^save_23/restore_all/NoOp^save_23/restore_all/NoOp_1
S
save_24/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_24/StringJoin/inputs_1Const*<
value3B1 B+_temp_22ac760c20da4aed8a6ada71894b79a6/part*
dtype0*
_output_shapes
: 
~
save_24/StringJoin
StringJoinsave_24/Constsave_24/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_24/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_24/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_24/ShardedFilenameShardedFilenamesave_24/StringJoinsave_24/ShardedFilename/shardsave_24/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_24/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_24/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_24/SaveV2SaveV2save_24/ShardedFilenamesave_24/SaveV2/tensor_namessave_24/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_24/control_dependencyIdentitysave_24/ShardedFilename^save_24/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_24/ShardedFilename*
_output_shapes
: 
p
save_24/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save_24/ShardedFilename_1ShardedFilenamesave_24/StringJoinsave_24/ShardedFilename_1/shardsave_24/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_24/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_24/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_24/SaveV2_1SaveV2save_24/ShardedFilename_1save_24/SaveV2_1/tensor_names!save_24/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_24/control_dependency_1Identitysave_24/ShardedFilename_1^save_24/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_24/ShardedFilename_1
ï
.save_24/MergeV2Checkpoints/checkpoint_prefixesPacksave_24/ShardedFilenamesave_24/ShardedFilename_1^save_24/control_dependency^save_24/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_24/MergeV2CheckpointsMergeV2Checkpoints.save_24/MergeV2Checkpoints/checkpoint_prefixessave_24/Const"/device:CPU:0*
delete_old_dirs(
´
save_24/IdentityIdentitysave_24/Const^save_24/MergeV2Checkpoints^save_24/control_dependency^save_24/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_24/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_24/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ó
save_24/RestoreV2	RestoreV2save_24/Constsave_24/RestoreV2/tensor_names"save_24/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_24/AssignAssignVariablesave_24/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ğ
save_24/Assign_1Assignbeta1_powersave_24/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_24/Assign_2Assignbeta2_powersave_24/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_24/Assign_3Assigncnn_max_pool_2/Wsave_24/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ç
save_24/Assign_4Assigncnn_max_pool_2/W/Adamsave_24/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
É
save_24/Assign_5Assigncnn_max_pool_2/W/Adam_1save_24/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_24/Assign_6Assigncnn_max_pool_2/bsave_24/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_24/Assign_7Assigncnn_max_pool_2/b/Adamsave_24/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_24/Assign_8Assigncnn_max_pool_2/b/Adam_1save_24/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
Â
save_24/Assign_9Assigncnn_max_pool_3/Wsave_24/RestoreV2:9*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
É
save_24/Assign_10Assigncnn_max_pool_3/W/Adamsave_24/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_24/Assign_11Assigncnn_max_pool_3/W/Adam_1save_24/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_24/Assign_12Assigncnn_max_pool_3/bsave_24/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_24/Assign_13Assigncnn_max_pool_3/b/Adamsave_24/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_24/Assign_14Assigncnn_max_pool_3/b/Adam_1save_24/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ä
save_24/Assign_15Assigncnn_max_pool_4/Wsave_24/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_24/Assign_16Assigncnn_max_pool_4/W/Adamsave_24/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_24/Assign_17Assigncnn_max_pool_4/W/Adam_1save_24/RestoreV2:17*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
·
save_24/Assign_18Assigncnn_max_pool_4/bsave_24/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_24/Assign_19Assigncnn_max_pool_4/b/Adamsave_24/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_24/Assign_20Assigncnn_max_pool_4/b/Adam_1save_24/RestoreV2:20*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
¨
save_24/Assign_21Assignglobal_stepsave_24/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_24/LookupTableImportV2LookupTableImportV2label_tablesave_24/RestoreV2:22save_24/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_24/LookupTableImportV2_1LookupTableImportV2	out_tablesave_24/RestoreV2:24save_24/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_24/Assign_22Assignoutput/Wsave_24/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_24/Assign_23Assignoutput/W/Adamsave_24/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_24/Assign_24Assignoutput/W/Adam_1save_24/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_24/Assign_25Assignoutput/bsave_24/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_24/Assign_26Assignoutput/b/Adamsave_24/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_24/Assign_27Assignoutput/b/Adam_1save_24/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ĥ
save_24/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_24/RestoreV2:32save_24/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_24/restore_shardNoOp^save_24/Assign^save_24/Assign_1^save_24/Assign_10^save_24/Assign_11^save_24/Assign_12^save_24/Assign_13^save_24/Assign_14^save_24/Assign_15^save_24/Assign_16^save_24/Assign_17^save_24/Assign_18^save_24/Assign_19^save_24/Assign_2^save_24/Assign_20^save_24/Assign_21^save_24/Assign_22^save_24/Assign_23^save_24/Assign_24^save_24/Assign_25^save_24/Assign_26^save_24/Assign_27^save_24/Assign_3^save_24/Assign_4^save_24/Assign_5^save_24/Assign_6^save_24/Assign_7^save_24/Assign_8^save_24/Assign_9^save_24/LookupTableImportV2^save_24/LookupTableImportV2_1^save_24/LookupTableImportV2_2
Ä
 save_24/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_24/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ğ
save_24/RestoreV2_1	RestoreV2save_24/Const save_24/RestoreV2_1/tensor_names$save_24/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_24/Assign_28Assignembedding/emb_matrixsave_24/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_24/Assign_29Assignembedding/emb_matrix/Adamsave_24/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_24/Assign_30Assignembedding/emb_matrix/Adam_1save_24/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_24/restore_shard_1NoOp^save_24/Assign_28^save_24/Assign_29^save_24/Assign_30"/device:CPU:0
8
save_24/restore_all/NoOpNoOp^save_24/restore_shard
K
save_24/restore_all/NoOp_1NoOp^save_24/restore_shard_1"/device:CPU:0
S
save_24/restore_allNoOp^save_24/restore_all/NoOp^save_24/restore_all/NoOp_1
S
save_25/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_25/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_2d263a3404f9470785bf6a38cfda3d43/part
~
save_25/StringJoin
StringJoinsave_25/Constsave_25/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_25/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_25/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_25/ShardedFilenameShardedFilenamesave_25/StringJoinsave_25/ShardedFilename/shardsave_25/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_25/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_25/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_25/SaveV2SaveV2save_25/ShardedFilenamesave_25/SaveV2/tensor_namessave_25/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_25/control_dependencyIdentitysave_25/ShardedFilename^save_25/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_25/ShardedFilename*
_output_shapes
: 
p
save_25/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_25/ShardedFilename_1ShardedFilenamesave_25/StringJoinsave_25/ShardedFilename_1/shardsave_25/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_25/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_25/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_25/SaveV2_1SaveV2save_25/ShardedFilename_1save_25/SaveV2_1/tensor_names!save_25/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_25/control_dependency_1Identitysave_25/ShardedFilename_1^save_25/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_25/ShardedFilename_1*
_output_shapes
: 
ï
.save_25/MergeV2Checkpoints/checkpoint_prefixesPacksave_25/ShardedFilenamesave_25/ShardedFilename_1^save_25/control_dependency^save_25/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_25/MergeV2CheckpointsMergeV2Checkpoints.save_25/MergeV2Checkpoints/checkpoint_prefixessave_25/Const"/device:CPU:0*
delete_old_dirs(
´
save_25/IdentityIdentitysave_25/Const^save_25/MergeV2Checkpoints^save_25/control_dependency^save_25/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_25/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_25/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_25/RestoreV2	RestoreV2save_25/Constsave_25/RestoreV2/tensor_names"save_25/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_25/AssignAssignVariablesave_25/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
Ğ
save_25/Assign_1Assignbeta1_powersave_25/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Ğ
save_25/Assign_2Assignbeta2_powersave_25/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_25/Assign_3Assigncnn_max_pool_2/Wsave_25/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_25/Assign_4Assigncnn_max_pool_2/W/Adamsave_25/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_25/Assign_5Assigncnn_max_pool_2/W/Adam_1save_25/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_25/Assign_6Assigncnn_max_pool_2/bsave_25/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_25/Assign_7Assigncnn_max_pool_2/b/Adamsave_25/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_25/Assign_8Assigncnn_max_pool_2/b/Adam_1save_25/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_25/Assign_9Assigncnn_max_pool_3/Wsave_25/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_25/Assign_10Assigncnn_max_pool_3/W/Adamsave_25/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ë
save_25/Assign_11Assigncnn_max_pool_3/W/Adam_1save_25/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
·
save_25/Assign_12Assigncnn_max_pool_3/bsave_25/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_25/Assign_13Assigncnn_max_pool_3/b/Adamsave_25/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_25/Assign_14Assigncnn_max_pool_3/b/Adam_1save_25/RestoreV2:14*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
Ä
save_25/Assign_15Assigncnn_max_pool_4/Wsave_25/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_25/Assign_16Assigncnn_max_pool_4/W/Adamsave_25/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_25/Assign_17Assigncnn_max_pool_4/W/Adam_1save_25/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_25/Assign_18Assigncnn_max_pool_4/bsave_25/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ĵ
save_25/Assign_19Assigncnn_max_pool_4/b/Adamsave_25/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_25/Assign_20Assigncnn_max_pool_4/b/Adam_1save_25/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¨
save_25/Assign_21Assignglobal_stepsave_25/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_25/LookupTableImportV2LookupTableImportV2label_tablesave_25/RestoreV2:22save_25/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_25/LookupTableImportV2_1LookupTableImportV2	out_tablesave_25/RestoreV2:24save_25/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_25/Assign_22Assignoutput/Wsave_25/RestoreV2:26*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_25/Assign_23Assignoutput/W/Adamsave_25/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_25/Assign_24Assignoutput/W/Adam_1save_25/RestoreV2:28*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
Ĥ
save_25/Assign_25Assignoutput/bsave_25/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ğ
save_25/Assign_26Assignoutput/b/Adamsave_25/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
­
save_25/Assign_27Assignoutput/b/Adam_1save_25/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_25/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_25/RestoreV2:32save_25/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_25/restore_shardNoOp^save_25/Assign^save_25/Assign_1^save_25/Assign_10^save_25/Assign_11^save_25/Assign_12^save_25/Assign_13^save_25/Assign_14^save_25/Assign_15^save_25/Assign_16^save_25/Assign_17^save_25/Assign_18^save_25/Assign_19^save_25/Assign_2^save_25/Assign_20^save_25/Assign_21^save_25/Assign_22^save_25/Assign_23^save_25/Assign_24^save_25/Assign_25^save_25/Assign_26^save_25/Assign_27^save_25/Assign_3^save_25/Assign_4^save_25/Assign_5^save_25/Assign_6^save_25/Assign_7^save_25/Assign_8^save_25/Assign_9^save_25/LookupTableImportV2^save_25/LookupTableImportV2_1^save_25/LookupTableImportV2_2
Ä
 save_25/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_25/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ğ
save_25/RestoreV2_1	RestoreV2save_25/Const save_25/RestoreV2_1/tensor_names$save_25/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_25/Assign_28Assignembedding/emb_matrixsave_25/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_25/Assign_29Assignembedding/emb_matrix/Adamsave_25/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_25/Assign_30Assignembedding/emb_matrix/Adam_1save_25/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_25/restore_shard_1NoOp^save_25/Assign_28^save_25/Assign_29^save_25/Assign_30"/device:CPU:0
8
save_25/restore_all/NoOpNoOp^save_25/restore_shard
K
save_25/restore_all/NoOp_1NoOp^save_25/restore_shard_1"/device:CPU:0
S
save_25/restore_allNoOp^save_25/restore_all/NoOp^save_25/restore_all/NoOp_1
S
save_26/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_26/StringJoin/inputs_1Const*<
value3B1 B+_temp_c002c254796d4fb59b81ed8fb9b870ae/part*
dtype0*
_output_shapes
: 
~
save_26/StringJoin
StringJoinsave_26/Constsave_26/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_26/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_26/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_26/ShardedFilenameShardedFilenamesave_26/StringJoinsave_26/ShardedFilename/shardsave_26/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_26/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ı
save_26/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_26/SaveV2SaveV2save_26/ShardedFilenamesave_26/SaveV2/tensor_namessave_26/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_26/control_dependencyIdentitysave_26/ShardedFilename^save_26/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_26/ShardedFilename*
_output_shapes
: 
p
save_26/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_26/ShardedFilename_1ShardedFilenamesave_26/StringJoinsave_26/ShardedFilename_1/shardsave_26/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_26/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_26/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_26/SaveV2_1SaveV2save_26/ShardedFilename_1save_26/SaveV2_1/tensor_names!save_26/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_26/control_dependency_1Identitysave_26/ShardedFilename_1^save_26/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_26/ShardedFilename_1
ï
.save_26/MergeV2Checkpoints/checkpoint_prefixesPacksave_26/ShardedFilenamesave_26/ShardedFilename_1^save_26/control_dependency^save_26/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_26/MergeV2CheckpointsMergeV2Checkpoints.save_26/MergeV2Checkpoints/checkpoint_prefixessave_26/Const"/device:CPU:0*
delete_old_dirs(
´
save_26/IdentityIdentitysave_26/Const^save_26/MergeV2Checkpoints^save_26/control_dependency^save_26/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_26/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_26/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_26/RestoreV2	RestoreV2save_26/Constsave_26/RestoreV2/tensor_names"save_26/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_26/AssignAssignVariablesave_26/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ğ
save_26/Assign_1Assignbeta1_powersave_26/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_26/Assign_2Assignbeta2_powersave_26/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_26/Assign_3Assigncnn_max_pool_2/Wsave_26/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ç
save_26/Assign_4Assigncnn_max_pool_2/W/Adamsave_26/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_26/Assign_5Assigncnn_max_pool_2/W/Adam_1save_26/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_26/Assign_6Assigncnn_max_pool_2/bsave_26/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_26/Assign_7Assigncnn_max_pool_2/b/Adamsave_26/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_26/Assign_8Assigncnn_max_pool_2/b/Adam_1save_26/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
Â
save_26/Assign_9Assigncnn_max_pool_3/Wsave_26/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_26/Assign_10Assigncnn_max_pool_3/W/Adamsave_26/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_26/Assign_11Assigncnn_max_pool_3/W/Adam_1save_26/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_26/Assign_12Assigncnn_max_pool_3/bsave_26/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_26/Assign_13Assigncnn_max_pool_3/b/Adamsave_26/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_26/Assign_14Assigncnn_max_pool_3/b/Adam_1save_26/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Ä
save_26/Assign_15Assigncnn_max_pool_4/Wsave_26/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_26/Assign_16Assigncnn_max_pool_4/W/Adamsave_26/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_26/Assign_17Assigncnn_max_pool_4/W/Adam_1save_26/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_26/Assign_18Assigncnn_max_pool_4/bsave_26/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĵ
save_26/Assign_19Assigncnn_max_pool_4/b/Adamsave_26/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_26/Assign_20Assigncnn_max_pool_4/b/Adam_1save_26/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
¨
save_26/Assign_21Assignglobal_stepsave_26/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
˘
save_26/LookupTableImportV2LookupTableImportV2label_tablesave_26/RestoreV2:22save_26/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
 
save_26/LookupTableImportV2_1LookupTableImportV2	out_tablesave_26/RestoreV2:24save_26/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_26/Assign_22Assignoutput/Wsave_26/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
°
save_26/Assign_23Assignoutput/W/Adamsave_26/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_26/Assign_24Assignoutput/W/Adam_1save_26/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_26/Assign_25Assignoutput/bsave_26/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ğ
save_26/Assign_26Assignoutput/b/Adamsave_26/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_26/Assign_27Assignoutput/b/Adam_1save_26/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_26/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_26/RestoreV2:32save_26/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0

save_26/restore_shardNoOp^save_26/Assign^save_26/Assign_1^save_26/Assign_10^save_26/Assign_11^save_26/Assign_12^save_26/Assign_13^save_26/Assign_14^save_26/Assign_15^save_26/Assign_16^save_26/Assign_17^save_26/Assign_18^save_26/Assign_19^save_26/Assign_2^save_26/Assign_20^save_26/Assign_21^save_26/Assign_22^save_26/Assign_23^save_26/Assign_24^save_26/Assign_25^save_26/Assign_26^save_26/Assign_27^save_26/Assign_3^save_26/Assign_4^save_26/Assign_5^save_26/Assign_6^save_26/Assign_7^save_26/Assign_8^save_26/Assign_9^save_26/LookupTableImportV2^save_26/LookupTableImportV2_1^save_26/LookupTableImportV2_2
Ä
 save_26/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_26/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_26/RestoreV2_1	RestoreV2save_26/Const save_26/RestoreV2_1/tensor_names$save_26/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_26/Assign_28Assignembedding/emb_matrixsave_26/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_26/Assign_29Assignembedding/emb_matrix/Adamsave_26/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_26/Assign_30Assignembedding/emb_matrix/Adam_1save_26/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_26/restore_shard_1NoOp^save_26/Assign_28^save_26/Assign_29^save_26/Assign_30"/device:CPU:0
8
save_26/restore_all/NoOpNoOp^save_26/restore_shard
K
save_26/restore_all/NoOp_1NoOp^save_26/restore_shard_1"/device:CPU:0
S
save_26/restore_allNoOp^save_26/restore_all/NoOp^save_26/restore_all/NoOp_1
S
save_27/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_27/StringJoin/inputs_1Const*<
value3B1 B+_temp_567c6a5d33c641b4a2f82a6db03df98f/part*
dtype0*
_output_shapes
: 
~
save_27/StringJoin
StringJoinsave_27/Constsave_27/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_27/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_27/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save_27/ShardedFilenameShardedFilenamesave_27/StringJoinsave_27/ShardedFilename/shardsave_27/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_27/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_27/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_27/SaveV2SaveV2save_27/ShardedFilenamesave_27/SaveV2/tensor_namessave_27/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_27/control_dependencyIdentitysave_27/ShardedFilename^save_27/SaveV2"/device:CPU:0**
_class 
loc:@save_27/ShardedFilename*
_output_shapes
: *
T0
p
save_27/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_27/ShardedFilename_1ShardedFilenamesave_27/StringJoinsave_27/ShardedFilename_1/shardsave_27/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_27/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_27/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_27/SaveV2_1SaveV2save_27/ShardedFilename_1save_27/SaveV2_1/tensor_names!save_27/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_27/control_dependency_1Identitysave_27/ShardedFilename_1^save_27/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_27/ShardedFilename_1*
_output_shapes
: 
ï
.save_27/MergeV2Checkpoints/checkpoint_prefixesPacksave_27/ShardedFilenamesave_27/ShardedFilename_1^save_27/control_dependency^save_27/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_27/MergeV2CheckpointsMergeV2Checkpoints.save_27/MergeV2Checkpoints/checkpoint_prefixessave_27/Const"/device:CPU:0*
delete_old_dirs(
´
save_27/IdentityIdentitysave_27/Const^save_27/MergeV2Checkpoints^save_27/control_dependency^save_27/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_27/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_27/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_27/RestoreV2	RestoreV2save_27/Constsave_27/RestoreV2/tensor_names"save_27/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_27/AssignAssignVariablesave_27/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_27/Assign_1Assignbeta1_powersave_27/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_27/Assign_2Assignbeta2_powersave_27/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_27/Assign_3Assigncnn_max_pool_2/Wsave_27/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_27/Assign_4Assigncnn_max_pool_2/W/Adamsave_27/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_27/Assign_5Assigncnn_max_pool_2/W/Adam_1save_27/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:*
use_locking(
µ
save_27/Assign_6Assigncnn_max_pool_2/bsave_27/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_27/Assign_7Assigncnn_max_pool_2/b/Adamsave_27/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
ĵ
save_27/Assign_8Assigncnn_max_pool_2/b/Adam_1save_27/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_27/Assign_9Assigncnn_max_pool_3/Wsave_27/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_27/Assign_10Assigncnn_max_pool_3/W/Adamsave_27/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_27/Assign_11Assigncnn_max_pool_3/W/Adam_1save_27/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_27/Assign_12Assigncnn_max_pool_3/bsave_27/RestoreV2:12*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
ĵ
save_27/Assign_13Assigncnn_max_pool_3/b/Adamsave_27/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
?
save_27/Assign_14Assigncnn_max_pool_3/b/Adam_1save_27/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ä
save_27/Assign_15Assigncnn_max_pool_4/Wsave_27/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_27/Assign_16Assigncnn_max_pool_4/W/Adamsave_27/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_27/Assign_17Assigncnn_max_pool_4/W/Adam_1save_27/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_27/Assign_18Assigncnn_max_pool_4/bsave_27/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ĵ
save_27/Assign_19Assigncnn_max_pool_4/b/Adamsave_27/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_27/Assign_20Assigncnn_max_pool_4/b/Adam_1save_27/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_27/Assign_21Assignglobal_stepsave_27/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_27/LookupTableImportV2LookupTableImportV2label_tablesave_27/RestoreV2:22save_27/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_27/LookupTableImportV2_1LookupTableImportV2	out_tablesave_27/RestoreV2:24save_27/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_27/Assign_22Assignoutput/Wsave_27/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_27/Assign_23Assignoutput/W/Adamsave_27/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_27/Assign_24Assignoutput/W/Adam_1save_27/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĥ
save_27/Assign_25Assignoutput/bsave_27/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_27/Assign_26Assignoutput/b/Adamsave_27/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
­
save_27/Assign_27Assignoutput/b/Adam_1save_27/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_27/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_27/RestoreV2:32save_27/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_27/restore_shardNoOp^save_27/Assign^save_27/Assign_1^save_27/Assign_10^save_27/Assign_11^save_27/Assign_12^save_27/Assign_13^save_27/Assign_14^save_27/Assign_15^save_27/Assign_16^save_27/Assign_17^save_27/Assign_18^save_27/Assign_19^save_27/Assign_2^save_27/Assign_20^save_27/Assign_21^save_27/Assign_22^save_27/Assign_23^save_27/Assign_24^save_27/Assign_25^save_27/Assign_26^save_27/Assign_27^save_27/Assign_3^save_27/Assign_4^save_27/Assign_5^save_27/Assign_6^save_27/Assign_7^save_27/Assign_8^save_27/Assign_9^save_27/LookupTableImportV2^save_27/LookupTableImportV2_1^save_27/LookupTableImportV2_2
Ä
 save_27/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_27/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_27/RestoreV2_1	RestoreV2save_27/Const save_27/RestoreV2_1/tensor_names$save_27/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_27/Assign_28Assignembedding/emb_matrixsave_27/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_27/Assign_29Assignembedding/emb_matrix/Adamsave_27/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_27/Assign_30Assignembedding/emb_matrix/Adam_1save_27/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_27/restore_shard_1NoOp^save_27/Assign_28^save_27/Assign_29^save_27/Assign_30"/device:CPU:0
8
save_27/restore_all/NoOpNoOp^save_27/restore_shard
K
save_27/restore_all/NoOp_1NoOp^save_27/restore_shard_1"/device:CPU:0
S
save_27/restore_allNoOp^save_27/restore_all/NoOp^save_27/restore_all/NoOp_1
S
save_28/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_28/StringJoin/inputs_1Const*<
value3B1 B+_temp_5cf448dc2f634643910210838e72e603/part*
dtype0*
_output_shapes
: 
~
save_28/StringJoin
StringJoinsave_28/Constsave_28/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_28/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_28/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_28/ShardedFilenameShardedFilenamesave_28/StringJoinsave_28/ShardedFilename/shardsave_28/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_28/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_28/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_28/SaveV2SaveV2save_28/ShardedFilenamesave_28/SaveV2/tensor_namessave_28/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_28/control_dependencyIdentitysave_28/ShardedFilename^save_28/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_28/ShardedFilename*
_output_shapes
: 
p
save_28/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_28/ShardedFilename_1ShardedFilenamesave_28/StringJoinsave_28/ShardedFilename_1/shardsave_28/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_28/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_28/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_28/SaveV2_1SaveV2save_28/ShardedFilename_1save_28/SaveV2_1/tensor_names!save_28/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_28/control_dependency_1Identitysave_28/ShardedFilename_1^save_28/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_28/ShardedFilename_1*
_output_shapes
: 
ï
.save_28/MergeV2Checkpoints/checkpoint_prefixesPacksave_28/ShardedFilenamesave_28/ShardedFilename_1^save_28/control_dependency^save_28/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_28/MergeV2CheckpointsMergeV2Checkpoints.save_28/MergeV2Checkpoints/checkpoint_prefixessave_28/Const"/device:CPU:0*
delete_old_dirs(
´
save_28/IdentityIdentitysave_28/Const^save_28/MergeV2Checkpoints^save_28/control_dependency^save_28/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_28/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_28/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_28/RestoreV2	RestoreV2save_28/Constsave_28/RestoreV2/tensor_names"save_28/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_28/AssignAssignVariablesave_28/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
Ğ
save_28/Assign_1Assignbeta1_powersave_28/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_28/Assign_2Assignbeta2_powersave_28/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Â
save_28/Assign_3Assigncnn_max_pool_2/Wsave_28/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_28/Assign_4Assigncnn_max_pool_2/W/Adamsave_28/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_28/Assign_5Assigncnn_max_pool_2/W/Adam_1save_28/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_28/Assign_6Assigncnn_max_pool_2/bsave_28/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_28/Assign_7Assigncnn_max_pool_2/b/Adamsave_28/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_28/Assign_8Assigncnn_max_pool_2/b/Adam_1save_28/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_28/Assign_9Assigncnn_max_pool_3/Wsave_28/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_28/Assign_10Assigncnn_max_pool_3/W/Adamsave_28/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_28/Assign_11Assigncnn_max_pool_3/W/Adam_1save_28/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_28/Assign_12Assigncnn_max_pool_3/bsave_28/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_28/Assign_13Assigncnn_max_pool_3/b/Adamsave_28/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_28/Assign_14Assigncnn_max_pool_3/b/Adam_1save_28/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_28/Assign_15Assigncnn_max_pool_4/Wsave_28/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
É
save_28/Assign_16Assigncnn_max_pool_4/W/Adamsave_28/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_28/Assign_17Assigncnn_max_pool_4/W/Adam_1save_28/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_28/Assign_18Assigncnn_max_pool_4/bsave_28/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_28/Assign_19Assigncnn_max_pool_4/b/Adamsave_28/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_28/Assign_20Assigncnn_max_pool_4/b/Adam_1save_28/RestoreV2:20*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
¨
save_28/Assign_21Assignglobal_stepsave_28/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
˘
save_28/LookupTableImportV2LookupTableImportV2label_tablesave_28/RestoreV2:22save_28/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_28/LookupTableImportV2_1LookupTableImportV2	out_tablesave_28/RestoreV2:24save_28/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_28/Assign_22Assignoutput/Wsave_28/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_28/Assign_23Assignoutput/W/Adamsave_28/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
²
save_28/Assign_24Assignoutput/W/Adam_1save_28/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_28/Assign_25Assignoutput/bsave_28/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_28/Assign_26Assignoutput/b/Adamsave_28/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
­
save_28/Assign_27Assignoutput/b/Adam_1save_28/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ĥ
save_28/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_28/RestoreV2:32save_28/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_28/restore_shardNoOp^save_28/Assign^save_28/Assign_1^save_28/Assign_10^save_28/Assign_11^save_28/Assign_12^save_28/Assign_13^save_28/Assign_14^save_28/Assign_15^save_28/Assign_16^save_28/Assign_17^save_28/Assign_18^save_28/Assign_19^save_28/Assign_2^save_28/Assign_20^save_28/Assign_21^save_28/Assign_22^save_28/Assign_23^save_28/Assign_24^save_28/Assign_25^save_28/Assign_26^save_28/Assign_27^save_28/Assign_3^save_28/Assign_4^save_28/Assign_5^save_28/Assign_6^save_28/Assign_7^save_28/Assign_8^save_28/Assign_9^save_28/LookupTableImportV2^save_28/LookupTableImportV2_1^save_28/LookupTableImportV2_2
Ä
 save_28/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_28/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ğ
save_28/RestoreV2_1	RestoreV2save_28/Const save_28/RestoreV2_1/tensor_names$save_28/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_28/Assign_28Assignembedding/emb_matrixsave_28/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_28/Assign_29Assignembedding/emb_matrix/Adamsave_28/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_28/Assign_30Assignembedding/emb_matrix/Adam_1save_28/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_28/restore_shard_1NoOp^save_28/Assign_28^save_28/Assign_29^save_28/Assign_30"/device:CPU:0
8
save_28/restore_all/NoOpNoOp^save_28/restore_shard
K
save_28/restore_all/NoOp_1NoOp^save_28/restore_shard_1"/device:CPU:0
S
save_28/restore_allNoOp^save_28/restore_all/NoOp^save_28/restore_all/NoOp_1
S
save_29/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_29/StringJoin/inputs_1Const*<
value3B1 B+_temp_6b6d5620f53348d2af85f984c7da39e9/part*
dtype0*
_output_shapes
: 
~
save_29/StringJoin
StringJoinsave_29/Constsave_29/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_29/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_29/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save_29/ShardedFilenameShardedFilenamesave_29/StringJoinsave_29/ShardedFilename/shardsave_29/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_29/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_29/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
µ
save_29/SaveV2SaveV2save_29/ShardedFilenamesave_29/SaveV2/tensor_namessave_29/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_29/control_dependencyIdentitysave_29/ShardedFilename^save_29/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_29/ShardedFilename
p
save_29/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_29/ShardedFilename_1ShardedFilenamesave_29/StringJoinsave_29/ShardedFilename_1/shardsave_29/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_29/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_29/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_29/SaveV2_1SaveV2save_29/ShardedFilename_1save_29/SaveV2_1/tensor_names!save_29/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_29/control_dependency_1Identitysave_29/ShardedFilename_1^save_29/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_29/ShardedFilename_1*
_output_shapes
: 
ï
.save_29/MergeV2Checkpoints/checkpoint_prefixesPacksave_29/ShardedFilenamesave_29/ShardedFilename_1^save_29/control_dependency^save_29/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_29/MergeV2CheckpointsMergeV2Checkpoints.save_29/MergeV2Checkpoints/checkpoint_prefixessave_29/Const"/device:CPU:0*
delete_old_dirs(
´
save_29/IdentityIdentitysave_29/Const^save_29/MergeV2Checkpoints^save_29/control_dependency^save_29/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_29/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_29/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_29/RestoreV2	RestoreV2save_29/Constsave_29/RestoreV2/tensor_names"save_29/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_29/AssignAssignVariablesave_29/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ğ
save_29/Assign_1Assignbeta1_powersave_29/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_29/Assign_2Assignbeta2_powersave_29/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_29/Assign_3Assigncnn_max_pool_2/Wsave_29/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_29/Assign_4Assigncnn_max_pool_2/W/Adamsave_29/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
É
save_29/Assign_5Assigncnn_max_pool_2/W/Adam_1save_29/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_29/Assign_6Assigncnn_max_pool_2/bsave_29/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_29/Assign_7Assigncnn_max_pool_2/b/Adamsave_29/RestoreV2:7*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
ĵ
save_29/Assign_8Assigncnn_max_pool_2/b/Adam_1save_29/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Â
save_29/Assign_9Assigncnn_max_pool_3/Wsave_29/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_29/Assign_10Assigncnn_max_pool_3/W/Adamsave_29/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ë
save_29/Assign_11Assigncnn_max_pool_3/W/Adam_1save_29/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
·
save_29/Assign_12Assigncnn_max_pool_3/bsave_29/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_29/Assign_13Assigncnn_max_pool_3/b/Adamsave_29/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
?
save_29/Assign_14Assigncnn_max_pool_3/b/Adam_1save_29/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_29/Assign_15Assigncnn_max_pool_4/Wsave_29/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_29/Assign_16Assigncnn_max_pool_4/W/Adamsave_29/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_29/Assign_17Assigncnn_max_pool_4/W/Adam_1save_29/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
·
save_29/Assign_18Assigncnn_max_pool_4/bsave_29/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
ĵ
save_29/Assign_19Assigncnn_max_pool_4/b/Adamsave_29/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_29/Assign_20Assigncnn_max_pool_4/b/Adam_1save_29/RestoreV2:20*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
¨
save_29/Assign_21Assignglobal_stepsave_29/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
˘
save_29/LookupTableImportV2LookupTableImportV2label_tablesave_29/RestoreV2:22save_29/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_29/LookupTableImportV2_1LookupTableImportV2	out_tablesave_29/RestoreV2:24save_29/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
Ğ
save_29/Assign_22Assignoutput/Wsave_29/RestoreV2:26*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
°
save_29/Assign_23Assignoutput/W/Adamsave_29/RestoreV2:27*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
²
save_29/Assign_24Assignoutput/W/Adam_1save_29/RestoreV2:28*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
Ĥ
save_29/Assign_25Assignoutput/bsave_29/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_29/Assign_26Assignoutput/b/Adamsave_29/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
­
save_29/Assign_27Assignoutput/b/Adam_1save_29/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
Ĥ
save_29/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_29/RestoreV2:32save_29/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table

save_29/restore_shardNoOp^save_29/Assign^save_29/Assign_1^save_29/Assign_10^save_29/Assign_11^save_29/Assign_12^save_29/Assign_13^save_29/Assign_14^save_29/Assign_15^save_29/Assign_16^save_29/Assign_17^save_29/Assign_18^save_29/Assign_19^save_29/Assign_2^save_29/Assign_20^save_29/Assign_21^save_29/Assign_22^save_29/Assign_23^save_29/Assign_24^save_29/Assign_25^save_29/Assign_26^save_29/Assign_27^save_29/Assign_3^save_29/Assign_4^save_29/Assign_5^save_29/Assign_6^save_29/Assign_7^save_29/Assign_8^save_29/Assign_9^save_29/LookupTableImportV2^save_29/LookupTableImportV2_1^save_29/LookupTableImportV2_2
Ä
 save_29/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_29/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
ğ
save_29/RestoreV2_1	RestoreV2save_29/Const save_29/RestoreV2_1/tensor_names$save_29/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_29/Assign_28Assignembedding/emb_matrixsave_29/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Ù
save_29/Assign_29Assignembedding/emb_matrix/Adamsave_29/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_29/Assign_30Assignembedding/emb_matrix/Adam_1save_29/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_29/restore_shard_1NoOp^save_29/Assign_28^save_29/Assign_29^save_29/Assign_30"/device:CPU:0
8
save_29/restore_all/NoOpNoOp^save_29/restore_shard
K
save_29/restore_all/NoOp_1NoOp^save_29/restore_shard_1"/device:CPU:0
S
save_29/restore_allNoOp^save_29/restore_all/NoOp^save_29/restore_all/NoOp_1
S
save_30/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_30/StringJoin/inputs_1Const*<
value3B1 B+_temp_f3622514525747df917a86bbc361842e/part*
dtype0*
_output_shapes
: 
~
save_30/StringJoin
StringJoinsave_30/Constsave_30/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_30/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_30/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_30/ShardedFilenameShardedFilenamesave_30/StringJoinsave_30/ShardedFilename/shardsave_30/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_30/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_30/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_30/SaveV2SaveV2save_30/ShardedFilenamesave_30/SaveV2/tensor_namessave_30/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_30/control_dependencyIdentitysave_30/ShardedFilename^save_30/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_30/ShardedFilename*
_output_shapes
: 
p
save_30/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_30/ShardedFilename_1ShardedFilenamesave_30/StringJoinsave_30/ShardedFilename_1/shardsave_30/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_30/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_30/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_30/SaveV2_1SaveV2save_30/ShardedFilename_1save_30/SaveV2_1/tensor_names!save_30/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_30/control_dependency_1Identitysave_30/ShardedFilename_1^save_30/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_30/ShardedFilename_1*
_output_shapes
: 
ï
.save_30/MergeV2Checkpoints/checkpoint_prefixesPacksave_30/ShardedFilenamesave_30/ShardedFilename_1^save_30/control_dependency^save_30/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_30/MergeV2CheckpointsMergeV2Checkpoints.save_30/MergeV2Checkpoints/checkpoint_prefixessave_30/Const"/device:CPU:0*
delete_old_dirs(
´
save_30/IdentityIdentitysave_30/Const^save_30/MergeV2Checkpoints^save_30/control_dependency^save_30/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_30/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
ĵ
"save_30/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_30/RestoreV2	RestoreV2save_30/Constsave_30/RestoreV2/tensor_names"save_30/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_30/AssignAssignVariablesave_30/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ğ
save_30/Assign_1Assignbeta1_powersave_30/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_30/Assign_2Assignbeta2_powersave_30/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Â
save_30/Assign_3Assigncnn_max_pool_2/Wsave_30/RestoreV2:3*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Ç
save_30/Assign_4Assigncnn_max_pool_2/W/Adamsave_30/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_30/Assign_5Assigncnn_max_pool_2/W/Adam_1save_30/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_30/Assign_6Assigncnn_max_pool_2/bsave_30/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_30/Assign_7Assigncnn_max_pool_2/b/Adamsave_30/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_30/Assign_8Assigncnn_max_pool_2/b/Adam_1save_30/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_30/Assign_9Assigncnn_max_pool_3/Wsave_30/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_30/Assign_10Assigncnn_max_pool_3/W/Adamsave_30/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_30/Assign_11Assigncnn_max_pool_3/W/Adam_1save_30/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
·
save_30/Assign_12Assigncnn_max_pool_3/bsave_30/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
ĵ
save_30/Assign_13Assigncnn_max_pool_3/b/Adamsave_30/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
?
save_30/Assign_14Assigncnn_max_pool_3/b/Adam_1save_30/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_30/Assign_15Assigncnn_max_pool_4/Wsave_30/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
É
save_30/Assign_16Assigncnn_max_pool_4/W/Adamsave_30/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ë
save_30/Assign_17Assigncnn_max_pool_4/W/Adam_1save_30/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_30/Assign_18Assigncnn_max_pool_4/bsave_30/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_30/Assign_19Assigncnn_max_pool_4/b/Adamsave_30/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_30/Assign_20Assigncnn_max_pool_4/b/Adam_1save_30/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_30/Assign_21Assignglobal_stepsave_30/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
˘
save_30/LookupTableImportV2LookupTableImportV2label_tablesave_30/RestoreV2:22save_30/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_30/LookupTableImportV2_1LookupTableImportV2	out_tablesave_30/RestoreV2:24save_30/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_30/Assign_22Assignoutput/Wsave_30/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_30/Assign_23Assignoutput/W/Adamsave_30/RestoreV2:27*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
²
save_30/Assign_24Assignoutput/W/Adam_1save_30/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_30/Assign_25Assignoutput/bsave_30/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ğ
save_30/Assign_26Assignoutput/b/Adamsave_30/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
­
save_30/Assign_27Assignoutput/b/Adam_1save_30/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ĥ
save_30/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_30/RestoreV2:32save_30/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_30/restore_shardNoOp^save_30/Assign^save_30/Assign_1^save_30/Assign_10^save_30/Assign_11^save_30/Assign_12^save_30/Assign_13^save_30/Assign_14^save_30/Assign_15^save_30/Assign_16^save_30/Assign_17^save_30/Assign_18^save_30/Assign_19^save_30/Assign_2^save_30/Assign_20^save_30/Assign_21^save_30/Assign_22^save_30/Assign_23^save_30/Assign_24^save_30/Assign_25^save_30/Assign_26^save_30/Assign_27^save_30/Assign_3^save_30/Assign_4^save_30/Assign_5^save_30/Assign_6^save_30/Assign_7^save_30/Assign_8^save_30/Assign_9^save_30/LookupTableImportV2^save_30/LookupTableImportV2_1^save_30/LookupTableImportV2_2
Ä
 save_30/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_30/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_30/RestoreV2_1	RestoreV2save_30/Const save_30/RestoreV2_1/tensor_names$save_30/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_30/Assign_28Assignembedding/emb_matrixsave_30/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
Ù
save_30/Assign_29Assignembedding/emb_matrix/Adamsave_30/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_30/Assign_30Assignembedding/emb_matrix/Adam_1save_30/RestoreV2_1:2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
j
save_30/restore_shard_1NoOp^save_30/Assign_28^save_30/Assign_29^save_30/Assign_30"/device:CPU:0
8
save_30/restore_all/NoOpNoOp^save_30/restore_shard
K
save_30/restore_all/NoOp_1NoOp^save_30/restore_shard_1"/device:CPU:0
S
save_30/restore_allNoOp^save_30/restore_all/NoOp^save_30/restore_all/NoOp_1
S
save_31/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_31/StringJoin/inputs_1Const*<
value3B1 B+_temp_ca8f45823dfe4e1a8c77f49dd5b07a40/part*
dtype0*
_output_shapes
: 
~
save_31/StringJoin
StringJoinsave_31/Constsave_31/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_31/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_31/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_31/ShardedFilenameShardedFilenamesave_31/StringJoinsave_31/ShardedFilename/shardsave_31/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_31/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_31/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_31/SaveV2SaveV2save_31/ShardedFilenamesave_31/SaveV2/tensor_namessave_31/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_31/control_dependencyIdentitysave_31/ShardedFilename^save_31/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_31/ShardedFilename
p
save_31/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0

save_31/ShardedFilename_1ShardedFilenamesave_31/StringJoinsave_31/ShardedFilename_1/shardsave_31/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_31/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_31/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_31/SaveV2_1SaveV2save_31/ShardedFilename_1save_31/SaveV2_1/tensor_names!save_31/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_31/control_dependency_1Identitysave_31/ShardedFilename_1^save_31/SaveV2_1"/device:CPU:0*,
_class"
 loc:@save_31/ShardedFilename_1*
_output_shapes
: *
T0
ï
.save_31/MergeV2Checkpoints/checkpoint_prefixesPacksave_31/ShardedFilenamesave_31/ShardedFilename_1^save_31/control_dependency^save_31/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_31/MergeV2CheckpointsMergeV2Checkpoints.save_31/MergeV2Checkpoints/checkpoint_prefixessave_31/Const"/device:CPU:0*
delete_old_dirs(
´
save_31/IdentityIdentitysave_31/Const^save_31/MergeV2Checkpoints^save_31/control_dependency^save_31/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_31/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_31/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_31/RestoreV2	RestoreV2save_31/Constsave_31/RestoreV2/tensor_names"save_31/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_31/AssignAssignVariablesave_31/RestoreV2*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ğ
save_31/Assign_1Assignbeta1_powersave_31/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_31/Assign_2Assignbeta2_powersave_31/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Â
save_31/Assign_3Assigncnn_max_pool_2/Wsave_31/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_31/Assign_4Assigncnn_max_pool_2/W/Adamsave_31/RestoreV2:4*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
É
save_31/Assign_5Assigncnn_max_pool_2/W/Adam_1save_31/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_31/Assign_6Assigncnn_max_pool_2/bsave_31/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_31/Assign_7Assigncnn_max_pool_2/b/Adamsave_31/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ĵ
save_31/Assign_8Assigncnn_max_pool_2/b/Adam_1save_31/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_31/Assign_9Assigncnn_max_pool_3/Wsave_31/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_31/Assign_10Assigncnn_max_pool_3/W/Adamsave_31/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_31/Assign_11Assigncnn_max_pool_3/W/Adam_1save_31/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
·
save_31/Assign_12Assigncnn_max_pool_3/bsave_31/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_31/Assign_13Assigncnn_max_pool_3/b/Adamsave_31/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_31/Assign_14Assigncnn_max_pool_3/b/Adam_1save_31/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
Ä
save_31/Assign_15Assigncnn_max_pool_4/Wsave_31/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
É
save_31/Assign_16Assigncnn_max_pool_4/W/Adamsave_31/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
Ë
save_31/Assign_17Assigncnn_max_pool_4/W/Adam_1save_31/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
·
save_31/Assign_18Assigncnn_max_pool_4/bsave_31/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_31/Assign_19Assigncnn_max_pool_4/b/Adamsave_31/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_31/Assign_20Assigncnn_max_pool_4/b/Adam_1save_31/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
¨
save_31/Assign_21Assignglobal_stepsave_31/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
˘
save_31/LookupTableImportV2LookupTableImportV2label_tablesave_31/RestoreV2:22save_31/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
 
save_31/LookupTableImportV2_1LookupTableImportV2	out_tablesave_31/RestoreV2:24save_31/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_31/Assign_22Assignoutput/Wsave_31/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_31/Assign_23Assignoutput/W/Adamsave_31/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_31/Assign_24Assignoutput/W/Adam_1save_31/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_31/Assign_25Assignoutput/bsave_31/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
Ğ
save_31/Assign_26Assignoutput/b/Adamsave_31/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_31/Assign_27Assignoutput/b/Adam_1save_31/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_31/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_31/RestoreV2:32save_31/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_31/restore_shardNoOp^save_31/Assign^save_31/Assign_1^save_31/Assign_10^save_31/Assign_11^save_31/Assign_12^save_31/Assign_13^save_31/Assign_14^save_31/Assign_15^save_31/Assign_16^save_31/Assign_17^save_31/Assign_18^save_31/Assign_19^save_31/Assign_2^save_31/Assign_20^save_31/Assign_21^save_31/Assign_22^save_31/Assign_23^save_31/Assign_24^save_31/Assign_25^save_31/Assign_26^save_31/Assign_27^save_31/Assign_3^save_31/Assign_4^save_31/Assign_5^save_31/Assign_6^save_31/Assign_7^save_31/Assign_8^save_31/Assign_9^save_31/LookupTableImportV2^save_31/LookupTableImportV2_1^save_31/LookupTableImportV2_2
Ä
 save_31/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_31/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ğ
save_31/RestoreV2_1	RestoreV2save_31/Const save_31/RestoreV2_1/tensor_names$save_31/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_31/Assign_28Assignembedding/emb_matrixsave_31/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_31/Assign_29Assignembedding/emb_matrix/Adamsave_31/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(
Û
save_31/Assign_30Assignembedding/emb_matrix/Adam_1save_31/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_31/restore_shard_1NoOp^save_31/Assign_28^save_31/Assign_29^save_31/Assign_30"/device:CPU:0
8
save_31/restore_all/NoOpNoOp^save_31/restore_shard
K
save_31/restore_all/NoOp_1NoOp^save_31/restore_shard_1"/device:CPU:0
S
save_31/restore_allNoOp^save_31/restore_all/NoOp^save_31/restore_all/NoOp_1
S
save_32/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_32/StringJoin/inputs_1Const*<
value3B1 B+_temp_19b59d8f2cd14e82b581b38eaf7593fd/part*
dtype0*
_output_shapes
: 
~
save_32/StringJoin
StringJoinsave_32/Constsave_32/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_32/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_32/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_32/ShardedFilenameShardedFilenamesave_32/StringJoinsave_32/ShardedFilename/shardsave_32/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_32/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_32/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
µ
save_32/SaveV2SaveV2save_32/ShardedFilenamesave_32/SaveV2/tensor_namessave_32/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_32/control_dependencyIdentitysave_32/ShardedFilename^save_32/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_32/ShardedFilename*
_output_shapes
: 
p
save_32/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_32/ShardedFilename_1ShardedFilenamesave_32/StringJoinsave_32/ShardedFilename_1/shardsave_32/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_32/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_32/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
ç
save_32/SaveV2_1SaveV2save_32/ShardedFilename_1save_32/SaveV2_1/tensor_names!save_32/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_32/control_dependency_1Identitysave_32/ShardedFilename_1^save_32/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_32/ShardedFilename_1*
_output_shapes
: 
ï
.save_32/MergeV2Checkpoints/checkpoint_prefixesPacksave_32/ShardedFilenamesave_32/ShardedFilename_1^save_32/control_dependency^save_32/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_32/MergeV2CheckpointsMergeV2Checkpoints.save_32/MergeV2Checkpoints/checkpoint_prefixessave_32/Const"/device:CPU:0*
delete_old_dirs(
´
save_32/IdentityIdentitysave_32/Const^save_32/MergeV2Checkpoints^save_32/control_dependency^save_32/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
ĝ
save_32/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_32/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_32/RestoreV2	RestoreV2save_32/Constsave_32/RestoreV2/tensor_names"save_32/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*
_output_shapes
::::::::::::::::::::::::::::::::::

save_32/AssignAssignVariablesave_32/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
Ğ
save_32/Assign_1Assignbeta1_powersave_32/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_32/Assign_2Assignbeta2_powersave_32/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
Â
save_32/Assign_3Assigncnn_max_pool_2/Wsave_32/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_32/Assign_4Assigncnn_max_pool_2/W/Adamsave_32/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_32/Assign_5Assigncnn_max_pool_2/W/Adam_1save_32/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
µ
save_32/Assign_6Assigncnn_max_pool_2/bsave_32/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_32/Assign_7Assigncnn_max_pool_2/b/Adamsave_32/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_32/Assign_8Assigncnn_max_pool_2/b/Adam_1save_32/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_32/Assign_9Assigncnn_max_pool_3/Wsave_32/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
É
save_32/Assign_10Assigncnn_max_pool_3/W/Adamsave_32/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:
Ë
save_32/Assign_11Assigncnn_max_pool_3/W/Adam_1save_32/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
·
save_32/Assign_12Assigncnn_max_pool_3/bsave_32/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
ĵ
save_32/Assign_13Assigncnn_max_pool_3/b/Adamsave_32/RestoreV2:13*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
?
save_32/Assign_14Assigncnn_max_pool_3/b/Adam_1save_32/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:
Ä
save_32/Assign_15Assigncnn_max_pool_4/Wsave_32/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
É
save_32/Assign_16Assigncnn_max_pool_4/W/Adamsave_32/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
Ë
save_32/Assign_17Assigncnn_max_pool_4/W/Adam_1save_32/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(
·
save_32/Assign_18Assigncnn_max_pool_4/bsave_32/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
ĵ
save_32/Assign_19Assigncnn_max_pool_4/b/Adamsave_32/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_32/Assign_20Assigncnn_max_pool_4/b/Adam_1save_32/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
¨
save_32/Assign_21Assignglobal_stepsave_32/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
˘
save_32/LookupTableImportV2LookupTableImportV2label_tablesave_32/RestoreV2:22save_32/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_32/LookupTableImportV2_1LookupTableImportV2	out_tablesave_32/RestoreV2:24save_32/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_32/Assign_22Assignoutput/Wsave_32/RestoreV2:26*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
°
save_32/Assign_23Assignoutput/W/Adamsave_32/RestoreV2:27*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*
_class
loc:@output/W
²
save_32/Assign_24Assignoutput/W/Adam_1save_32/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_32/Assign_25Assignoutput/bsave_32/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
Ğ
save_32/Assign_26Assignoutput/b/Adamsave_32/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
­
save_32/Assign_27Assignoutput/b/Adam_1save_32/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_32/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_32/RestoreV2:32save_32/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0

save_32/restore_shardNoOp^save_32/Assign^save_32/Assign_1^save_32/Assign_10^save_32/Assign_11^save_32/Assign_12^save_32/Assign_13^save_32/Assign_14^save_32/Assign_15^save_32/Assign_16^save_32/Assign_17^save_32/Assign_18^save_32/Assign_19^save_32/Assign_2^save_32/Assign_20^save_32/Assign_21^save_32/Assign_22^save_32/Assign_23^save_32/Assign_24^save_32/Assign_25^save_32/Assign_26^save_32/Assign_27^save_32/Assign_3^save_32/Assign_4^save_32/Assign_5^save_32/Assign_6^save_32/Assign_7^save_32/Assign_8^save_32/Assign_9^save_32/LookupTableImportV2^save_32/LookupTableImportV2_1^save_32/LookupTableImportV2_2
Ä
 save_32/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1

$save_32/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_32/RestoreV2_1	RestoreV2save_32/Const save_32/RestoreV2_1/tensor_names$save_32/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
Ò
save_32/Assign_28Assignembedding/emb_matrixsave_32/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
Ë*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
Ù
save_32/Assign_29Assignembedding/emb_matrix/Adamsave_32/RestoreV2_1:1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë*
use_locking(*
T0
Û
save_32/Assign_30Assignembedding/emb_matrix/Adam_1save_32/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_32/restore_shard_1NoOp^save_32/Assign_28^save_32/Assign_29^save_32/Assign_30"/device:CPU:0
8
save_32/restore_all/NoOpNoOp^save_32/restore_shard
K
save_32/restore_all/NoOp_1NoOp^save_32/restore_shard_1"/device:CPU:0
S
save_32/restore_allNoOp^save_32/restore_all/NoOp^save_32/restore_all/NoOp_1
S
save_33/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_33/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_d7047746e45b41b49a3ae9c2a2c389f1/part*
dtype0
~
save_33/StringJoin
StringJoinsave_33/Constsave_33/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_33/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_33/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_33/ShardedFilenameShardedFilenamesave_33/StringJoinsave_33/ShardedFilename/shardsave_33/num_shards"/device:CPU:0*
_output_shapes
: 
ġ
save_33/SaveV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ı
save_33/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
µ
save_33/SaveV2SaveV2save_33/ShardedFilenamesave_33/SaveV2/tensor_namessave_33/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
Ĵ
save_33/control_dependencyIdentitysave_33/ShardedFilename^save_33/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_33/ShardedFilename*
_output_shapes
: 
p
save_33/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save_33/ShardedFilename_1ShardedFilenamesave_33/StringJoinsave_33/ShardedFilename_1/shardsave_33/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_33/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_33/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ç
save_33/SaveV2_1SaveV2save_33/ShardedFilename_1save_33/SaveV2_1/tensor_names!save_33/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
´
save_33/control_dependency_1Identitysave_33/ShardedFilename_1^save_33/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_33/ShardedFilename_1*
_output_shapes
: 
ï
.save_33/MergeV2Checkpoints/checkpoint_prefixesPacksave_33/ShardedFilenamesave_33/ShardedFilename_1^save_33/control_dependency^save_33/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_33/MergeV2CheckpointsMergeV2Checkpoints.save_33/MergeV2Checkpoints/checkpoint_prefixessave_33/Const"/device:CPU:0*
delete_old_dirs(
´
save_33/IdentityIdentitysave_33/Const^save_33/MergeV2Checkpoints^save_33/control_dependency^save_33/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
ĝ
save_33/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
ĵ
"save_33/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
Ó
save_33/RestoreV2	RestoreV2save_33/Constsave_33/RestoreV2/tensor_names"save_33/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			

save_33/AssignAssignVariablesave_33/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
Ğ
save_33/Assign_1Assignbeta1_powersave_33/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
Ğ
save_33/Assign_2Assignbeta2_powersave_33/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
Â
save_33/Assign_3Assigncnn_max_pool_2/Wsave_33/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
Ç
save_33/Assign_4Assigncnn_max_pool_2/W/Adamsave_33/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:
É
save_33/Assign_5Assigncnn_max_pool_2/W/Adam_1save_33/RestoreV2:5*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
µ
save_33/Assign_6Assigncnn_max_pool_2/bsave_33/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
ş
save_33/Assign_7Assigncnn_max_pool_2/b/Adamsave_33/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_33/Assign_8Assigncnn_max_pool_2/b/Adam_1save_33/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:
Â
save_33/Assign_9Assigncnn_max_pool_3/Wsave_33/RestoreV2:9*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
É
save_33/Assign_10Assigncnn_max_pool_3/W/Adamsave_33/RestoreV2:10*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
Ë
save_33/Assign_11Assigncnn_max_pool_3/W/Adam_1save_33/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
·
save_33/Assign_12Assigncnn_max_pool_3/bsave_33/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_33/Assign_13Assigncnn_max_pool_3/b/Adamsave_33/RestoreV2:13*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
?
save_33/Assign_14Assigncnn_max_pool_3/b/Adam_1save_33/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
Ä
save_33/Assign_15Assigncnn_max_pool_4/Wsave_33/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
É
save_33/Assign_16Assigncnn_max_pool_4/W/Adamsave_33/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:
Ë
save_33/Assign_17Assigncnn_max_pool_4/W/Adam_1save_33/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
·
save_33/Assign_18Assigncnn_max_pool_4/bsave_33/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:*
use_locking(
ĵ
save_33/Assign_19Assigncnn_max_pool_4/b/Adamsave_33/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:
?
save_33/Assign_20Assigncnn_max_pool_4/b/Adam_1save_33/RestoreV2:20*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
¨
save_33/Assign_21Assignglobal_stepsave_33/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
˘
save_33/LookupTableImportV2LookupTableImportV2label_tablesave_33/RestoreV2:22save_33/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
 
save_33/LookupTableImportV2_1LookupTableImportV2	out_tablesave_33/RestoreV2:24save_33/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
Ğ
save_33/Assign_22Assignoutput/Wsave_33/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
°
save_33/Assign_23Assignoutput/W/Adamsave_33/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
²
save_33/Assign_24Assignoutput/W/Adam_1save_33/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	
Ĥ
save_33/Assign_25Assignoutput/bsave_33/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ğ
save_33/Assign_26Assignoutput/b/Adamsave_33/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
­
save_33/Assign_27Assignoutput/b/Adam_1save_33/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
Ĥ
save_33/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_33/RestoreV2:32save_33/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	

save_33/restore_shardNoOp^save_33/Assign^save_33/Assign_1^save_33/Assign_10^save_33/Assign_11^save_33/Assign_12^save_33/Assign_13^save_33/Assign_14^save_33/Assign_15^save_33/Assign_16^save_33/Assign_17^save_33/Assign_18^save_33/Assign_19^save_33/Assign_2^save_33/Assign_20^save_33/Assign_21^save_33/Assign_22^save_33/Assign_23^save_33/Assign_24^save_33/Assign_25^save_33/Assign_26^save_33/Assign_27^save_33/Assign_3^save_33/Assign_4^save_33/Assign_5^save_33/Assign_6^save_33/Assign_7^save_33/Assign_8^save_33/Assign_9^save_33/LookupTableImportV2^save_33/LookupTableImportV2_1^save_33/LookupTableImportV2_2
Ä
 save_33/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

$save_33/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
ğ
save_33/RestoreV2_1	RestoreV2save_33/Const save_33/RestoreV2_1/tensor_names$save_33/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
Ò
save_33/Assign_28Assignembedding/emb_matrixsave_33/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Ù
save_33/Assign_29Assignembedding/emb_matrix/Adamsave_33/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
Û
save_33/Assign_30Assignembedding/emb_matrix/Adam_1save_33/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
Ë
j
save_33/restore_shard_1NoOp^save_33/Assign_28^save_33/Assign_29^save_33/Assign_30"/device:CPU:0
8
save_33/restore_all/NoOpNoOp^save_33/restore_shard
K
save_33/restore_all/NoOp_1NoOp^save_33/restore_shard_1"/device:CPU:0
S
save_33/restore_allNoOp^save_33/restore_all/NoOp^save_33/restore_all/NoOp_1"E
save_33/Const:0save_33/Identity:0save_33/restore_all (5 @F8"
train_op

Adam")
	iterators


Iterator:0
Iterator_1:0"
	summariesò
ï
"embedding/emb_matrix_0/grad/hist:0
&embedding/emb_matrix_0/grad/sparsity:0
cnn_max_pool_2/W_0/grad/hist:0
"cnn_max_pool_2/W_0/grad/sparsity:0
cnn_max_pool_2/b_0/grad/hist:0
"cnn_max_pool_2/b_0/grad/sparsity:0
cnn_max_pool_3/W_0/grad/hist:0
"cnn_max_pool_3/W_0/grad/sparsity:0
cnn_max_pool_3/b_0/grad/hist:0
"cnn_max_pool_3/b_0/grad/sparsity:0
cnn_max_pool_4/W_0/grad/hist:0
"cnn_max_pool_4/W_0/grad/sparsity:0
cnn_max_pool_4/b_0/grad/hist:0
"cnn_max_pool_4/b_0/grad/sparsity:0
output/W_0/grad/hist:0
output/W_0/grad/sparsity:0
output/b_0/grad/hist:0
output/b_0/grad/sparsity:0
loss_1:0
accuracy_1:0
	epoch_1:0"­
trainable_variables

embedding/emb_matrix:0embedding/emb_matrix/Assignembedding/emb_matrix/read:021embedding/emb_matrix/Initializer/random_uniform:08
k
cnn_max_pool_2/W:0cnn_max_pool_2/W/Assigncnn_max_pool_2/W/read:02!cnn_max_pool_2/truncated_normal:08
`
cnn_max_pool_2/b:0cnn_max_pool_2/b/Assigncnn_max_pool_2/b/read:02cnn_max_pool_2/Const:08
k
cnn_max_pool_3/W:0cnn_max_pool_3/W/Assigncnn_max_pool_3/W/read:02!cnn_max_pool_3/truncated_normal:08
`
cnn_max_pool_3/b:0cnn_max_pool_3/b/Assigncnn_max_pool_3/b/read:02cnn_max_pool_3/Const:08
k
cnn_max_pool_4/W:0cnn_max_pool_4/W/Assigncnn_max_pool_4/W/read:02!cnn_max_pool_4/truncated_normal:08
`
cnn_max_pool_4/b:0cnn_max_pool_4/b/Assigncnn_max_pool_4/b/read:02cnn_max_pool_4/Const:08
W

output/W:0output/W/Assignoutput/W/read:02%output/W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08"<
saveable_objects(
&
symbol_table
label_table
	out_table"
	variablesûĝ
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0

embedding/emb_matrix:0embedding/emb_matrix/Assignembedding/emb_matrix/read:021embedding/emb_matrix/Initializer/random_uniform:08
k
cnn_max_pool_2/W:0cnn_max_pool_2/W/Assigncnn_max_pool_2/W/read:02!cnn_max_pool_2/truncated_normal:08
`
cnn_max_pool_2/b:0cnn_max_pool_2/b/Assigncnn_max_pool_2/b/read:02cnn_max_pool_2/Const:08
k
cnn_max_pool_3/W:0cnn_max_pool_3/W/Assigncnn_max_pool_3/W/read:02!cnn_max_pool_3/truncated_normal:08
`
cnn_max_pool_3/b:0cnn_max_pool_3/b/Assigncnn_max_pool_3/b/read:02cnn_max_pool_3/Const:08
k
cnn_max_pool_4/W:0cnn_max_pool_4/W/Assigncnn_max_pool_4/W/read:02!cnn_max_pool_4/truncated_normal:08
`
cnn_max_pool_4/b:0cnn_max_pool_4/b/Assigncnn_max_pool_4/b/read:02cnn_max_pool_4/Const:08
W

output/W:0output/W/Assignoutput/W/read:02%output/W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

embedding/emb_matrix/Adam:0 embedding/emb_matrix/Adam/Assign embedding/emb_matrix/Adam/read:02-embedding/emb_matrix/Adam/Initializer/zeros:0

embedding/emb_matrix/Adam_1:0"embedding/emb_matrix/Adam_1/Assign"embedding/emb_matrix/Adam_1/read:02/embedding/emb_matrix/Adam_1/Initializer/zeros:0

cnn_max_pool_2/W/Adam:0cnn_max_pool_2/W/Adam/Assigncnn_max_pool_2/W/Adam/read:02)cnn_max_pool_2/W/Adam/Initializer/zeros:0

cnn_max_pool_2/W/Adam_1:0cnn_max_pool_2/W/Adam_1/Assigncnn_max_pool_2/W/Adam_1/read:02+cnn_max_pool_2/W/Adam_1/Initializer/zeros:0

cnn_max_pool_2/b/Adam:0cnn_max_pool_2/b/Adam/Assigncnn_max_pool_2/b/Adam/read:02)cnn_max_pool_2/b/Adam/Initializer/zeros:0

cnn_max_pool_2/b/Adam_1:0cnn_max_pool_2/b/Adam_1/Assigncnn_max_pool_2/b/Adam_1/read:02+cnn_max_pool_2/b/Adam_1/Initializer/zeros:0

cnn_max_pool_3/W/Adam:0cnn_max_pool_3/W/Adam/Assigncnn_max_pool_3/W/Adam/read:02)cnn_max_pool_3/W/Adam/Initializer/zeros:0

cnn_max_pool_3/W/Adam_1:0cnn_max_pool_3/W/Adam_1/Assigncnn_max_pool_3/W/Adam_1/read:02+cnn_max_pool_3/W/Adam_1/Initializer/zeros:0

cnn_max_pool_3/b/Adam:0cnn_max_pool_3/b/Adam/Assigncnn_max_pool_3/b/Adam/read:02)cnn_max_pool_3/b/Adam/Initializer/zeros:0

cnn_max_pool_3/b/Adam_1:0cnn_max_pool_3/b/Adam_1/Assigncnn_max_pool_3/b/Adam_1/read:02+cnn_max_pool_3/b/Adam_1/Initializer/zeros:0

cnn_max_pool_4/W/Adam:0cnn_max_pool_4/W/Adam/Assigncnn_max_pool_4/W/Adam/read:02)cnn_max_pool_4/W/Adam/Initializer/zeros:0

cnn_max_pool_4/W/Adam_1:0cnn_max_pool_4/W/Adam_1/Assigncnn_max_pool_4/W/Adam_1/read:02+cnn_max_pool_4/W/Adam_1/Initializer/zeros:0

cnn_max_pool_4/b/Adam:0cnn_max_pool_4/b/Adam/Assigncnn_max_pool_4/b/Adam/read:02)cnn_max_pool_4/b/Adam/Initializer/zeros:0

cnn_max_pool_4/b/Adam_1:0cnn_max_pool_4/b/Adam_1/Assigncnn_max_pool_4/b/Adam_1/read:02+cnn_max_pool_4/b/Adam_1/Initializer/zeros:0
`
output/W/Adam:0output/W/Adam/Assignoutput/W/Adam/read:02!output/W/Adam/Initializer/zeros:0
h
output/W/Adam_1:0output/W/Adam_1/Assignoutput/W/Adam_1/read:02#output/W/Adam_1/Initializer/zeros:0
`
output/b/Adam:0output/b/Adam/Assignoutput/b/Adam/read:02!output/b/Adam/Initializer/zeros:0
h
output/b/Adam_1:0output/b/Adam_1/Assignoutput/b/Adam_1/read:02#output/b/Adam_1/Initializer/zeros:0*ô

predictionċ
#
label
label:0˙˙˙˙˙˙˙˙˙
6
sentence*

sentence:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
score)
inference/output:0˙˙˙˙˙˙˙˙˙6
output,
inference/label_out:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict