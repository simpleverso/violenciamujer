з
Д@@
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
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
E
AssignSubVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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

ControlTrigger
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
)
Exit	
data"T
output"T"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
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
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
р
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	

ResourceScatterAdd
resource
indices"Tindices
updates"dtype"$
dtypetype:
2	"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
і
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

StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
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
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
С
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"train*1.15.22v1.15.2-0-g5d80e1e8e68ќ
t
embedding_inputPlaceholder*
shape:џџџџџџџџџШ*
dtype0*(
_output_shapes
:џџџџџџџџџШ
Џ
5embedding/embeddings/Initializer/random_uniform/shapeConst*
valueB"      *'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:
Ё
3embedding/embeddings/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬLН*'
_class
loc:@embedding/embeddings
Ё
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *ЭЬL=*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
х
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
T0*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:	 
ю
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
_output_shapes
: *
T0*'
_class
loc:@embedding/embeddings

3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
_output_shapes
:	 *
T0*'
_class
loc:@embedding/embeddings
ѓ
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
Ў
embedding/embeddingsVarHandleOp*
_output_shapes
: *
shape:	 *%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
dtype0
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 

embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0*
_output_shapes
:	 
i
embedding/CastCastembedding_input*

SrcT0*(
_output_shapes
:џџџџџџџџџШ*

DstT0
Ц
embedding/embedding_lookupResourceGatherembedding/embeddingsembedding/Cast*
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0*,
_output_shapes
:џџџџџџџџџШ 
Ћ
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup*
T0*'
_class
loc:@embedding/embeddings*,
_output_shapes
:џџџџџџџџџШ 

%embedding/embedding_lookup/Identity_1Identity#embedding/embedding_lookup/Identity*
T0*,
_output_shapes
:џџџџџџџџџШ 
l
spatial_dropout1d/ShapeShape%embedding/embedding_lookup/Identity_1*
_output_shapes
:*
T0
o
%spatial_dropout1d/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'spatial_dropout1d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'spatial_dropout1d/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

spatial_dropout1d/strided_sliceStridedSlicespatial_dropout1d/Shape%spatial_dropout1d/strided_slice/stack'spatial_dropout1d/strided_slice/stack_1'spatial_dropout1d/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
q
'spatial_dropout1d/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
s
)spatial_dropout1d/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
s
)spatial_dropout1d/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

!spatial_dropout1d/strided_slice_1StridedSlicespatial_dropout1d/Shape'spatial_dropout1d/strided_slice_1/stack)spatial_dropout1d/strided_slice_1/stack_1)spatial_dropout1d/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
c
spatial_dropout1d/dropout/rateConst*
_output_shapes
: *
valueB
 *  >*
dtype0
r
0spatial_dropout1d/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
к
.spatial_dropout1d/dropout/random_uniform/shapePackspatial_dropout1d/strided_slice0spatial_dropout1d/dropout/random_uniform/shape/1!spatial_dropout1d/strided_slice_1*
T0*
N*
_output_shapes
:
q
,spatial_dropout1d/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
,spatial_dropout1d/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
У
6spatial_dropout1d/dropout/random_uniform/RandomUniformRandomUniform.spatial_dropout1d/dropout/random_uniform/shape*
dtype0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
А
,spatial_dropout1d/dropout/random_uniform/subSub,spatial_dropout1d/dropout/random_uniform/max,spatial_dropout1d/dropout/random_uniform/min*
_output_shapes
: *
T0
и
,spatial_dropout1d/dropout/random_uniform/mulMul6spatial_dropout1d/dropout/random_uniform/RandomUniform,spatial_dropout1d/dropout/random_uniform/sub*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ъ
(spatial_dropout1d/dropout/random_uniformAdd,spatial_dropout1d/dropout/random_uniform/mul,spatial_dropout1d/dropout/random_uniform/min*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
d
spatial_dropout1d/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

spatial_dropout1d/dropout/subSubspatial_dropout1d/dropout/sub/xspatial_dropout1d/dropout/rate*
T0*
_output_shapes
: 
h
#spatial_dropout1d/dropout/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!spatial_dropout1d/dropout/truedivRealDiv#spatial_dropout1d/dropout/truediv/xspatial_dropout1d/dropout/sub*
T0*
_output_shapes
: 
П
&spatial_dropout1d/dropout/GreaterEqualGreaterEqual(spatial_dropout1d/dropout/random_uniformspatial_dropout1d/dropout/rate*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ѕ
spatial_dropout1d/dropout/mulMul%embedding/embedding_lookup/Identity_1!spatial_dropout1d/dropout/truediv*
T0*,
_output_shapes
:џџџџџџџџџШ 

spatial_dropout1d/dropout/CastCast&spatial_dropout1d/dropout/GreaterEqual*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*

DstT0*

SrcT0


spatial_dropout1d/dropout/mul_1Mulspatial_dropout1d/dropout/mulspatial_dropout1d/dropout/Cast*,
_output_shapes
:џџџџџџџџџШ *
T0

,lstm/kernel/Initializer/random_uniform/shapeConst*
valueB"    Ш   *
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:

*lstm/kernel/Initializer/random_uniform/minConst*
valueB
 *.­$О*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 

*lstm/kernel/Initializer/random_uniform/maxConst*
valueB
 *.­$>*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 
Ъ
4lstm/kernel/Initializer/random_uniform/RandomUniformRandomUniform,lstm/kernel/Initializer/random_uniform/shape*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:	 Ш*
T0
Ъ
*lstm/kernel/Initializer/random_uniform/subSub*lstm/kernel/Initializer/random_uniform/max*lstm/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@lstm/kernel*
_output_shapes
: 
н
*lstm/kernel/Initializer/random_uniform/mulMul4lstm/kernel/Initializer/random_uniform/RandomUniform*lstm/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш
Я
&lstm/kernel/Initializer/random_uniformAdd*lstm/kernel/Initializer/random_uniform/mul*lstm/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш

lstm/kernelVarHandleOp*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: *
shape:	 Ш*
shared_namelstm/kernel
g
,lstm/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/kernel*
_output_shapes
: 
h
lstm/kernel/AssignAssignVariableOplstm/kernel&lstm/kernel/Initializer/random_uniform*
dtype0
l
lstm/kernel/Read/ReadVariableOpReadVariableOplstm/kernel*
dtype0*
_output_shapes
:	 Ш
А
5lstm/recurrent_kernel/Initializer/random_normal/shapeConst*
valueB"Ш   2   *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
Ѓ
4lstm/recurrent_kernel/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *(
_class
loc:@lstm/recurrent_kernel
Ѕ
6lstm/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
є
Dlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5lstm/recurrent_kernel/Initializer/random_normal/shape*
T0*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:	Ш2

3lstm/recurrent_kernel/Initializer/random_normal/mulMulDlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormal6lstm/recurrent_kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
ѕ
/lstm/recurrent_kernel/Initializer/random_normalAdd3lstm/recurrent_kernel/Initializer/random_normal/mul4lstm/recurrent_kernel/Initializer/random_normal/mean*
_output_shapes
:	Ш2*
T0*(
_class
loc:@lstm/recurrent_kernel
Й
$lstm/recurrent_kernel/Initializer/QrQr/lstm/recurrent_kernel/Initializer/random_normal*
T0*(
_class
loc:@lstm/recurrent_kernel*)
_output_shapes
:	Ш2:22
­
*lstm/recurrent_kernel/Initializer/DiagPartDiagPart&lstm/recurrent_kernel/Initializer/Qr:1*
_output_shapes
:2*
T0*(
_class
loc:@lstm/recurrent_kernel
Љ
&lstm/recurrent_kernel/Initializer/SignSign*lstm/recurrent_kernel/Initializer/DiagPart*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:2
Ю
%lstm/recurrent_kernel/Initializer/mulMul$lstm/recurrent_kernel/Initializer/Qr&lstm/recurrent_kernel/Initializer/Sign*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
М
Alstm/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:

<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose%lstm/recurrent_kernel/Initializer/mulAlstm/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
Њ
/lstm/recurrent_kernel/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"2   Ш   *(
_class
loc:@lstm/recurrent_kernel
ї
)lstm/recurrent_kernel/Initializer/ReshapeReshape<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose/lstm/recurrent_kernel/Initializer/Reshape/shape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш

)lstm/recurrent_kernel/Initializer/mul_1/xConst*
_output_shapes
: *
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0
и
'lstm/recurrent_kernel/Initializer/mul_1Mul)lstm/recurrent_kernel/Initializer/mul_1/x)lstm/recurrent_kernel/Initializer/Reshape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
Б
lstm/recurrent_kernelVarHandleOp*&
shared_namelstm/recurrent_kernel*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: *
shape:	2Ш
{
6lstm/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
}
lstm/recurrent_kernel/AssignAssignVariableOplstm/recurrent_kernel'lstm/recurrent_kernel/Initializer/mul_1*
dtype0

)lstm/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm/bias/Initializer/zerosConst*
valueB2*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:2

lstm/bias/Initializer/onesConst*
dtype0*
_output_shapes
:2*
valueB2*  ?*
_class
loc:@lstm/bias

lstm/bias/Initializer/zeros_1Const*
valueBd*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:d

!lstm/bias/Initializer/concat/axisConst*
_output_shapes
: *
value	B : *
_class
loc:@lstm/bias*
dtype0
№
lstm/bias/Initializer/concatConcatV2lstm/bias/Initializer/zeroslstm/bias/Initializer/oneslstm/bias/Initializer/zeros_1!lstm/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm/bias*
N*
_output_shapes	
:Ш

	lstm/biasVarHandleOp*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: *
shape:Ш*
shared_name	lstm/bias
c
*lstm/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	lstm/bias*
_output_shapes
: 
Z
lstm/bias/AssignAssignVariableOp	lstm/biaslstm/bias/Initializer/concat*
dtype0
d
lstm/bias/Read/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш
Y

lstm/ShapeShapespatial_dropout1d/dropout/mul_1*
T0*
_output_shapes
:
b
lstm/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ц
lstm/strided_sliceStridedSlice
lstm/Shapelstm/strided_slice/stacklstm/strided_slice/stack_1lstm/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
R
lstm/zeros/mul/yConst*
value	B :2*
dtype0*
_output_shapes
: 
\
lstm/zeros/mulMullstm/strided_slicelstm/zeros/mul/y*
_output_shapes
: *
T0
T
lstm/zeros/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
[
lstm/zeros/LessLesslstm/zeros/mullstm/zeros/Less/y*
T0*
_output_shapes
: 
U
lstm/zeros/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
p
lstm/zeros/packedPacklstm/strided_slicelstm/zeros/packed/1*
_output_shapes
:*
T0*
N
U
lstm/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i

lstm/zerosFilllstm/zeros/packedlstm/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
T
lstm/zeros_1/mul/yConst*
_output_shapes
: *
value	B :2*
dtype0
`
lstm/zeros_1/mulMullstm/strided_slicelstm/zeros_1/mul/y*
T0*
_output_shapes
: 
V
lstm/zeros_1/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
a
lstm/zeros_1/LessLesslstm/zeros_1/mullstm/zeros_1/Less/y*
_output_shapes
: *
T0
W
lstm/zeros_1/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
t
lstm/zeros_1/packedPacklstm/strided_slicelstm/zeros_1/packed/1*
T0*
N*
_output_shapes
:
W
lstm/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
lstm/zeros_1Filllstm/zeros_1/packedlstm/zeros_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm/transpose	Transposespatial_dropout1d/dropout/mul_1lstm/transpose/perm*
T0*,
_output_shapes
:Шџџџџџџџџџ 
J
lstm/Shape_1Shapelstm/transpose*
_output_shapes
:*
T0
d
lstm/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
lstm/strided_slice_1StridedSlicelstm/Shape_1lstm/strided_slice_1/stacklstm/strided_slice_1/stack_1lstm/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ѕ
lstm/TensorArrayTensorArrayV3lstm/strided_slice_1*!
tensor_array_name
input_ta_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
[
lstm/TensorArrayUnstack/ShapeShapelstm/transpose*
_output_shapes
:*
T0
u
+lstm/TensorArrayUnstack/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
w
-lstm/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ѕ
%lstm/TensorArrayUnstack/strided_sliceStridedSlicelstm/TensorArrayUnstack/Shape+lstm/TensorArrayUnstack/strided_slice/stack-lstm/TensorArrayUnstack/strided_slice/stack_1-lstm/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
e
#lstm/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
e
#lstm/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
М
lstm/TensorArrayUnstack/rangeRange#lstm/TensorArrayUnstack/range/start%lstm/TensorArrayUnstack/strided_slice#lstm/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ
№
?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm/TensorArraylstm/TensorArrayUnstack/rangelstm/transposelstm/TensorArray:1*
T0*!
_class
loc:@lstm/transpose*
_output_shapes
: 
d
lstm/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
f
lstm/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
у
lstm/strided_slice_2StridedSlicelstm/transposelstm/strided_slice_2/stacklstm/strided_slice_2/stack_1lstm/strided_slice_2/stack_2*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask*
T0*
Index0
X
lstm/ones_like/ShapeShapelstm/strided_slice_2*
T0*
_output_shapes
:
Y
lstm/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
t
lstm/ones_likeFilllstm/ones_like/Shapelstm/ones_like/Const*'
_output_shapes
:џџџџџџџџџ *
T0
V
lstm/dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
P
lstm/dropout/ShapeShapelstm/ones_like*
T0*
_output_shapes
:
d
lstm/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
lstm/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ќ
)lstm/dropout/random_uniform/RandomUniformRandomUniformlstm/dropout/Shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ *
seed2ТНи

lstm/dropout/random_uniform/subSublstm/dropout/random_uniform/maxlstm/dropout/random_uniform/min*
_output_shapes
: *
T0
Є
lstm/dropout/random_uniform/mulMul)lstm/dropout/random_uniform/RandomUniformlstm/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ 

lstm/dropout/random_uniformAddlstm/dropout/random_uniform/mullstm/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
W
lstm/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
lstm/dropout/subSublstm/dropout/sub/xlstm/dropout/rate*
T0*
_output_shapes
: 
[
lstm/dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
j
lstm/dropout/truedivRealDivlstm/dropout/truediv/xlstm/dropout/sub*
T0*
_output_shapes
: 

lstm/dropout/GreaterEqualGreaterEquallstm/dropout/random_uniformlstm/dropout/rate*'
_output_shapes
:џџџџџџџџџ *
T0
o
lstm/dropout/mulMullstm/ones_likelstm/dropout/truediv*'
_output_shapes
:џџџџџџџџџ *
T0
u
lstm/dropout/CastCastlstm/dropout/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ *

DstT0
p
lstm/dropout/mul_1Mullstm/dropout/mullstm/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ 
X
lstm/dropout_1/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
R
lstm/dropout_1/ShapeShapelstm/ones_like*
_output_shapes
:*
T0
f
!lstm/dropout_1/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!lstm/dropout_1/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
А
+lstm/dropout_1/random_uniform/RandomUniformRandomUniformlstm/dropout_1/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ *
seed2ёХ*
seedБџх)

!lstm/dropout_1/random_uniform/subSub!lstm/dropout_1/random_uniform/max!lstm/dropout_1/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_1/random_uniform/mulMul+lstm/dropout_1/random_uniform/RandomUniform!lstm/dropout_1/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ *
T0

lstm/dropout_1/random_uniformAdd!lstm/dropout_1/random_uniform/mul!lstm/dropout_1/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
Y
lstm/dropout_1/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
lstm/dropout_1/subSublstm/dropout_1/sub/xlstm/dropout_1/rate*
_output_shapes
: *
T0
]
lstm/dropout_1/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_1/truedivRealDivlstm/dropout_1/truediv/xlstm/dropout_1/sub*
_output_shapes
: *
T0

lstm/dropout_1/GreaterEqualGreaterEquallstm/dropout_1/random_uniformlstm/dropout_1/rate*
T0*'
_output_shapes
:џџџџџџџџџ 
s
lstm/dropout_1/mulMullstm/ones_likelstm/dropout_1/truediv*
T0*'
_output_shapes
:џџџџџџџџџ 
y
lstm/dropout_1/CastCastlstm/dropout_1/GreaterEqual*'
_output_shapes
:џџџџџџџџџ *

DstT0*

SrcT0

v
lstm/dropout_1/mul_1Mullstm/dropout_1/mullstm/dropout_1/Cast*
T0*'
_output_shapes
:џџџџџџџџџ 
X
lstm/dropout_2/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
R
lstm/dropout_2/ShapeShapelstm/ones_like*
T0*
_output_shapes
:
f
!lstm/dropout_2/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!lstm/dropout_2/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
А
+lstm/dropout_2/random_uniform/RandomUniformRandomUniformlstm/dropout_2/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ *
seed2шРЃ*
seedБџх)

!lstm/dropout_2/random_uniform/subSub!lstm/dropout_2/random_uniform/max!lstm/dropout_2/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_2/random_uniform/mulMul+lstm/dropout_2/random_uniform/RandomUniform!lstm/dropout_2/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ 

lstm/dropout_2/random_uniformAdd!lstm/dropout_2/random_uniform/mul!lstm/dropout_2/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
Y
lstm/dropout_2/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
lstm/dropout_2/subSublstm/dropout_2/sub/xlstm/dropout_2/rate*
_output_shapes
: *
T0
]
lstm/dropout_2/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_2/truedivRealDivlstm/dropout_2/truediv/xlstm/dropout_2/sub*
_output_shapes
: *
T0

lstm/dropout_2/GreaterEqualGreaterEquallstm/dropout_2/random_uniformlstm/dropout_2/rate*
T0*'
_output_shapes
:џџџџџџџџџ 
s
lstm/dropout_2/mulMullstm/ones_likelstm/dropout_2/truediv*'
_output_shapes
:џџџџџџџџџ *
T0
y
lstm/dropout_2/CastCastlstm/dropout_2/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ *

DstT0
v
lstm/dropout_2/mul_1Mullstm/dropout_2/mullstm/dropout_2/Cast*
T0*'
_output_shapes
:џџџџџџџџџ 
X
lstm/dropout_3/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
R
lstm/dropout_3/ShapeShapelstm/ones_like*
_output_shapes
:*
T0
f
!lstm/dropout_3/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!lstm/dropout_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
А
+lstm/dropout_3/random_uniform/RandomUniformRandomUniformlstm/dropout_3/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ *
seed2њыШ*
seedБџх)

!lstm/dropout_3/random_uniform/subSub!lstm/dropout_3/random_uniform/max!lstm/dropout_3/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_3/random_uniform/mulMul+lstm/dropout_3/random_uniform/RandomUniform!lstm/dropout_3/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ *
T0

lstm/dropout_3/random_uniformAdd!lstm/dropout_3/random_uniform/mul!lstm/dropout_3/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
Y
lstm/dropout_3/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
e
lstm/dropout_3/subSublstm/dropout_3/sub/xlstm/dropout_3/rate*
_output_shapes
: *
T0
]
lstm/dropout_3/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_3/truedivRealDivlstm/dropout_3/truediv/xlstm/dropout_3/sub*
T0*
_output_shapes
: 

lstm/dropout_3/GreaterEqualGreaterEquallstm/dropout_3/random_uniformlstm/dropout_3/rate*
T0*'
_output_shapes
:џџџџџџџџџ 
s
lstm/dropout_3/mulMullstm/ones_likelstm/dropout_3/truediv*
T0*'
_output_shapes
:џџџџџџџџџ 
y
lstm/dropout_3/CastCastlstm/dropout_3/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ *

DstT0
v
lstm/dropout_3/mul_1Mullstm/dropout_3/mullstm/dropout_3/Cast*'
_output_shapes
:џџџџџџџџџ *
T0
P
lstm/ones_like_1/ShapeShape
lstm/zeros*
T0*
_output_shapes
:
[
lstm/ones_like_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
z
lstm/ones_like_1Filllstm/ones_like_1/Shapelstm/ones_like_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
X
lstm/dropout_4/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
T
lstm/dropout_4/ShapeShapelstm/ones_like_1*
T0*
_output_shapes
:
f
!lstm/dropout_4/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!lstm/dropout_4/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
А
+lstm/dropout_4/random_uniform/RandomUniformRandomUniformlstm/dropout_4/Shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ2*
seed2ьйЏ

!lstm/dropout_4/random_uniform/subSub!lstm/dropout_4/random_uniform/max!lstm/dropout_4/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_4/random_uniform/mulMul+lstm/dropout_4/random_uniform/RandomUniform!lstm/dropout_4/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ2*
T0

lstm/dropout_4/random_uniformAdd!lstm/dropout_4/random_uniform/mul!lstm/dropout_4/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/dropout_4/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
e
lstm/dropout_4/subSublstm/dropout_4/sub/xlstm/dropout_4/rate*
_output_shapes
: *
T0
]
lstm/dropout_4/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_4/truedivRealDivlstm/dropout_4/truediv/xlstm/dropout_4/sub*
T0*
_output_shapes
: 

lstm/dropout_4/GreaterEqualGreaterEquallstm/dropout_4/random_uniformlstm/dropout_4/rate*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/dropout_4/mulMullstm/ones_like_1lstm/dropout_4/truediv*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/dropout_4/CastCastlstm/dropout_4/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2*

DstT0
v
lstm/dropout_4/mul_1Mullstm/dropout_4/mullstm/dropout_4/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
X
lstm/dropout_5/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
T
lstm/dropout_5/ShapeShapelstm/ones_like_1*
_output_shapes
:*
T0
f
!lstm/dropout_5/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!lstm/dropout_5/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Џ
+lstm/dropout_5/random_uniform/RandomUniformRandomUniformlstm/dropout_5/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ2*
seed2М *
seedБџх)

!lstm/dropout_5/random_uniform/subSub!lstm/dropout_5/random_uniform/max!lstm/dropout_5/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_5/random_uniform/mulMul+lstm/dropout_5/random_uniform/RandomUniform!lstm/dropout_5/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/dropout_5/random_uniformAdd!lstm/dropout_5/random_uniform/mul!lstm/dropout_5/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/dropout_5/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
e
lstm/dropout_5/subSublstm/dropout_5/sub/xlstm/dropout_5/rate*
T0*
_output_shapes
: 
]
lstm/dropout_5/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
p
lstm/dropout_5/truedivRealDivlstm/dropout_5/truediv/xlstm/dropout_5/sub*
T0*
_output_shapes
: 

lstm/dropout_5/GreaterEqualGreaterEquallstm/dropout_5/random_uniformlstm/dropout_5/rate*'
_output_shapes
:џџџџџџџџџ2*
T0
u
lstm/dropout_5/mulMullstm/ones_like_1lstm/dropout_5/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
y
lstm/dropout_5/CastCastlstm/dropout_5/GreaterEqual*'
_output_shapes
:џџџџџџџџџ2*

DstT0*

SrcT0

v
lstm/dropout_5/mul_1Mullstm/dropout_5/mullstm/dropout_5/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
X
lstm/dropout_6/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
T
lstm/dropout_6/ShapeShapelstm/ones_like_1*
_output_shapes
:*
T0
f
!lstm/dropout_6/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
f
!lstm/dropout_6/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
А
+lstm/dropout_6/random_uniform/RandomUniformRandomUniformlstm/dropout_6/Shape*
dtype0*'
_output_shapes
:џџџџџџџџџ2*
seed2ІІЯ*
seedБџх)*
T0

!lstm/dropout_6/random_uniform/subSub!lstm/dropout_6/random_uniform/max!lstm/dropout_6/random_uniform/min*
_output_shapes
: *
T0
Њ
!lstm/dropout_6/random_uniform/mulMul+lstm/dropout_6/random_uniform/RandomUniform!lstm/dropout_6/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/dropout_6/random_uniformAdd!lstm/dropout_6/random_uniform/mul!lstm/dropout_6/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/dropout_6/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
lstm/dropout_6/subSublstm/dropout_6/sub/xlstm/dropout_6/rate*
_output_shapes
: *
T0
]
lstm/dropout_6/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_6/truedivRealDivlstm/dropout_6/truediv/xlstm/dropout_6/sub*
T0*
_output_shapes
: 

lstm/dropout_6/GreaterEqualGreaterEquallstm/dropout_6/random_uniformlstm/dropout_6/rate*'
_output_shapes
:џџџџџџџџџ2*
T0
u
lstm/dropout_6/mulMullstm/ones_like_1lstm/dropout_6/truediv*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/dropout_6/CastCastlstm/dropout_6/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2*

DstT0
v
lstm/dropout_6/mul_1Mullstm/dropout_6/mullstm/dropout_6/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
X
lstm/dropout_7/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
T
lstm/dropout_7/ShapeShapelstm/ones_like_1*
_output_shapes
:*
T0
f
!lstm/dropout_7/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
f
!lstm/dropout_7/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
А
+lstm/dropout_7/random_uniform/RandomUniformRandomUniformlstm/dropout_7/Shape*
dtype0*'
_output_shapes
:џџџџџџџџџ2*
seed2§Ё*
seedБџх)*
T0

!lstm/dropout_7/random_uniform/subSub!lstm/dropout_7/random_uniform/max!lstm/dropout_7/random_uniform/min*
T0*
_output_shapes
: 
Њ
!lstm/dropout_7/random_uniform/mulMul+lstm/dropout_7/random_uniform/RandomUniform!lstm/dropout_7/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/dropout_7/random_uniformAdd!lstm/dropout_7/random_uniform/mul!lstm/dropout_7/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/dropout_7/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
lstm/dropout_7/subSublstm/dropout_7/sub/xlstm/dropout_7/rate*
T0*
_output_shapes
: 
]
lstm/dropout_7/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
lstm/dropout_7/truedivRealDivlstm/dropout_7/truediv/xlstm/dropout_7/sub*
T0*
_output_shapes
: 

lstm/dropout_7/GreaterEqualGreaterEquallstm/dropout_7/random_uniformlstm/dropout_7/rate*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/dropout_7/mulMullstm/ones_like_1lstm/dropout_7/truediv*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/dropout_7/CastCastlstm/dropout_7/GreaterEqual*'
_output_shapes
:џџџџџџџџџ2*

DstT0*

SrcT0

v
lstm/dropout_7/mul_1Mullstm/dropout_7/mullstm/dropout_7/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
k
lstm/mulMullstm/strided_slice_2lstm/dropout/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ 
o

lstm/mul_1Mullstm/strided_slice_2lstm/dropout_1/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ 
o

lstm/mul_2Mullstm/strided_slice_2lstm/dropout_2/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ 
o

lstm/mul_3Mullstm/strided_slice_2lstm/dropout_3/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ 
L

lstm/ConstConst*
dtype0*
_output_shapes
: *
value	B :
V
lstm/split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 
f
lstm/split/ReadVariableOpReadVariableOplstm/kernel*
dtype0*
_output_shapes
:	 Ш


lstm/splitSplitlstm/split/split_dimlstm/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
]
lstm/MatMulMatMullstm/mul
lstm/split*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/MatMul_1MatMul
lstm/mul_1lstm/split:1*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/MatMul_2MatMul
lstm/mul_2lstm/split:2*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/MatMul_3MatMul
lstm/mul_3lstm/split:3*'
_output_shapes
:џџџџџџџџџ2*
T0
N
lstm/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
X
lstm/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm/split_1/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш

lstm/split_1Splitlstm/split_1/split_dimlstm/split_1/ReadVariableOp*
T0*,
_output_shapes
:2:2:2:2*
	num_split
d
lstm/BiasAddBiasAddlstm/MatMullstm/split_1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_1BiasAddlstm/MatMul_1lstm/split_1:1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_2BiasAddlstm/MatMul_2lstm/split_1:2*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_3BiasAddlstm/MatMul_3lstm/split_1:3*'
_output_shapes
:џџџџџџџџџ2*
T0
e

lstm/mul_4Mul
lstm/zeroslstm/dropout_4/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ2
e

lstm/mul_5Mul
lstm/zeroslstm/dropout_5/mul_1*'
_output_shapes
:џџџџџџџџџ2*
T0
e

lstm/mul_6Mul
lstm/zeroslstm/dropout_6/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ2
e

lstm/mul_7Mul
lstm/zeroslstm/dropout_7/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_1Const*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
щ
lstm/strided_slice_3StridedSlicelstm/ReadVariableOplstm/strided_slice_3/stacklstm/strided_slice_3/stack_1lstm/strided_slice_3/stack_2*
end_mask*
_output_shapes

:22*
Index0*
T0*

begin_mask
k
lstm/MatMul_4MatMul
lstm/mul_4lstm/strided_slice_3*
T0*'
_output_shapes
:џџџџџџџџџ2
`
lstm/addAddV2lstm/BiasAddlstm/MatMul_4*'
_output_shapes
:џџџџџџџџџ2*
T0
Q
lstm/Const_2Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
[

lstm/Mul_8Mullstm/addlstm/Const_2*'
_output_shapes
:џџџџџџџџџ2*
T0
]

lstm/Add_1Add
lstm/Mul_8lstm/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
a
lstm/clip_by_value/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value/MinimumMinimum
lstm/Add_1lstm/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/clip_by_value/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

lstm/clip_by_valueMaximumlstm/clip_by_value/Minimumlstm/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_1ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_4/stackConst*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_1Const*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_4StridedSlicelstm/ReadVariableOp_1lstm/strided_slice_4/stacklstm/strided_slice_4/stack_1lstm/strided_slice_4/stack_2*
end_mask*
_output_shapes

:22*
Index0*
T0*

begin_mask
k
lstm/MatMul_5MatMul
lstm/mul_5lstm/strided_slice_4*'
_output_shapes
:џџџџџџџџџ2*
T0
d

lstm/add_2AddV2lstm/BiasAdd_1lstm/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_4Const*
_output_shapes
: *
valueB
 *ЭЬL>*
dtype0
Q
lstm/Const_5Const*
_output_shapes
: *
valueB
 *   ?*
dtype0
]

lstm/Mul_9Mul
lstm/add_2lstm/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
]

lstm/Add_3Add
lstm/Mul_9lstm/Const_5*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/clip_by_value_1/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value_1/MinimumMinimum
lstm/Add_3lstm/clip_by_value_1/Minimum/y*'
_output_shapes
:џџџџџџџџџ2*
T0
[
lstm/clip_by_value_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_value_1Maximumlstm/clip_by_value_1/Minimumlstm/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/mul_10Mullstm/clip_by_value_1lstm/zeros_1*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_2ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_5/stackConst*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_5StridedSlicelstm/ReadVariableOp_2lstm/strided_slice_5/stacklstm/strided_slice_5/stack_1lstm/strided_slice_5/stack_2*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes

:22
k
lstm/MatMul_6MatMul
lstm/mul_6lstm/strided_slice_5*'
_output_shapes
:џџџџџџџџџ2*
T0
d

lstm/add_4AddV2lstm/BiasAdd_2lstm/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ2
O
	lstm/TanhTanh
lstm/add_4*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/mul_11Mullstm/clip_by_value	lstm/Tanh*'
_output_shapes
:џџџџџџџџџ2*
T0
_

lstm/add_5AddV2lstm/mul_10lstm/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_3ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_6/stackConst*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_6StridedSlicelstm/ReadVariableOp_3lstm/strided_slice_6/stacklstm/strided_slice_6/stack_1lstm/strided_slice_6/stack_2*
_output_shapes

:22*
Index0*
T0*

begin_mask*
end_mask
k
lstm/MatMul_7MatMul
lstm/mul_7lstm/strided_slice_6*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_6AddV2lstm/BiasAdd_3lstm/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_6Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_7Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
^
lstm/Mul_12Mul
lstm/add_6lstm/Const_6*'
_output_shapes
:џџџџџџџџџ2*
T0
^

lstm/Add_7Addlstm/Mul_12lstm/Const_7*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/clip_by_value_2/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

lstm/clip_by_value_2/MinimumMinimum
lstm/Add_7lstm/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
[
lstm/clip_by_value_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_value_2Maximumlstm/clip_by_value_2/Minimumlstm/clip_by_value_2/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Tanh_1Tanh
lstm/add_5*'
_output_shapes
:џџџџџџџџџ2*
T0
g
lstm/mul_13Mullstm/clip_by_value_2lstm/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2
Ю
lstm/TensorArray_1TensorArrayV3lstm/strided_slice_1*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ2*
identical_element_shapes(*"
tensor_array_nameoutput_ta_0
K
	lstm/timeConst*
value	B : *
dtype0*
_output_shapes
: 

lstm/while/EnterEnter	lstm/time*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_1Enterlstm/TensorArray_1:1*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_2Enter
lstm/zeros*
T0*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
 
lstm/while/Enter_3Enterlstm/zeros_1*
T0*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
q
lstm/while/MergeMergelstm/while/Enterlstm/while/NextIteration*
N*
_output_shapes
: : *
T0
w
lstm/while/Merge_1Mergelstm/while/Enter_1lstm/while/NextIteration_1*
T0*
N*
_output_shapes
: : 

lstm/while/Merge_2Mergelstm/while/Enter_2lstm/while/NextIteration_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 

lstm/while/Merge_3Mergelstm/while/Enter_3lstm/while/NextIteration_3*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 
a
lstm/while/LessLesslstm/while/Mergelstm/while/Less/Enter*
T0*
_output_shapes
: 
­
lstm/while/Less/EnterEnterlstm/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
H
lstm/while/LoopCondLoopCondlstm/while/Less*
_output_shapes
: 

lstm/while/SwitchSwitchlstm/while/Mergelstm/while/LoopCond*
_output_shapes
: : *
T0*#
_class
loc:@lstm/while/Merge

lstm/while/Switch_1Switchlstm/while/Merge_1lstm/while/LoopCond*%
_class
loc:@lstm/while/Merge_1*
_output_shapes
: : *
T0
В
lstm/while/Switch_2Switchlstm/while/Merge_2lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_2*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
В
lstm/while/Switch_3Switchlstm/while/Merge_3lstm/while/LoopCond*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*
T0*%
_class
loc:@lstm/while/Merge_3
U
lstm/while/IdentityIdentitylstm/while/Switch:1*
T0*
_output_shapes
: 
Y
lstm/while/Identity_1Identitylstm/while/Switch_1:1*
_output_shapes
: *
T0
j
lstm/while/Identity_2Identitylstm/while/Switch_2:1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Identity_3Identitylstm/while/Switch_3:1*'
_output_shapes
:џџџџџџџџџ2*
T0
Ц
lstm/while/TensorArrayReadV3TensorArrayReadV3"lstm/while/TensorArrayReadV3/Enterlstm/while/Identity$lstm/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ 
К
"lstm/while/TensorArrayReadV3/EnterEnterlstm/TensorArray*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
ч
$lstm/while/TensorArrayReadV3/Enter_1Enter?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0
{
lstm/while/mulMullstm/while/TensorArrayReadV3lstm/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
Л
lstm/while/mul/EnterEnterlstm/dropout/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context

lstm/while/mul_1Mullstm/while/TensorArrayReadV3lstm/while/mul_1/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
П
lstm/while/mul_1/EnterEnterlstm/dropout_1/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context

lstm/while/mul_2Mullstm/while/TensorArrayReadV3lstm/while/mul_2/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
П
lstm/while/mul_2/EnterEnterlstm/dropout_2/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context

lstm/while/mul_3Mullstm/while/TensorArrayReadV3lstm/while/mul_3/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
П
lstm/while/mul_3/EnterEnterlstm/dropout_3/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context
h
lstm/while/ConstConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
r
lstm/while/split/split_dimConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

lstm/while/split/ReadVariableOpReadVariableOp%lstm/while/split/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	 Ш
Д
%lstm/while/split/ReadVariableOp/EnterEnterlstm/kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Ў
lstm/while/splitSplitlstm/while/split/split_dimlstm/while/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
o
lstm/while/MatMulMatMullstm/while/mullstm/while/split*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_1MatMullstm/while/mul_1lstm/while/split:1*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_2MatMullstm/while/mul_2lstm/while/split:2*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_3MatMullstm/while/mul_3lstm/while/split:3*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Const_1Const^lstm/while/Identity*
_output_shapes
: *
value	B :*
dtype0
t
lstm/while/split_1/split_dimConst^lstm/while/Identity*
value	B : *
dtype0*
_output_shapes
: 

!lstm/while/split_1/ReadVariableOpReadVariableOp'lstm/while/split_1/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes	
:Ш
Д
'lstm/while/split_1/ReadVariableOp/EnterEnter	lstm/bias*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Є
lstm/while/split_1Splitlstm/while/split_1/split_dim!lstm/while/split_1/ReadVariableOp*
T0*,
_output_shapes
:2:2:2:2*
	num_split
v
lstm/while/BiasAddBiasAddlstm/while/MatMullstm/while/split_1*
T0*'
_output_shapes
:џџџџџџџџџ2
|
lstm/while/BiasAdd_1BiasAddlstm/while/MatMul_1lstm/while/split_1:1*
T0*'
_output_shapes
:џџџџџџџџџ2
|
lstm/while/BiasAdd_2BiasAddlstm/while/MatMul_2lstm/while/split_1:2*
T0*'
_output_shapes
:џџџџџџџџџ2
|
lstm/while/BiasAdd_3BiasAddlstm/while/MatMul_3lstm/while/split_1:3*'
_output_shapes
:џџџџџџџџџ2*
T0
x
lstm/while/mul_4Mullstm/while/Identity_2lstm/while/mul_4/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
П
lstm/while/mul_4/EnterEnterlstm/dropout_4/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
x
lstm/while/mul_5Mullstm/while/Identity_2lstm/while/mul_5/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
П
lstm/while/mul_5/EnterEnterlstm/dropout_5/mul_1*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context*
T0
x
lstm/while/mul_6Mullstm/while/Identity_2lstm/while/mul_6/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
П
lstm/while/mul_6/EnterEnterlstm/dropout_6/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
x
lstm/while/mul_7Mullstm/while/Identity_2lstm/while/mul_7/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
П
lstm/while/mul_7/EnterEnterlstm/dropout_7/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context

lstm/while/ReadVariableOpReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш
И
lstm/while/ReadVariableOp/EnterEnterlstm/recurrent_kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/strided_slice/stackConst^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

 lstm/while/strided_slice/stack_1Const^lstm/while/Identity*
valueB"    2   *
dtype0*
_output_shapes
:

 lstm/while/strided_slice/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
џ
lstm/while/strided_sliceStridedSlicelstm/while/ReadVariableOplstm/while/strided_slice/stack lstm/while/strided_slice/stack_1 lstm/while/strided_slice/stack_2*
_output_shapes

:22*
T0*
Index0*

begin_mask*
end_mask
{
lstm/while/MatMul_4MatMullstm/while/mul_4lstm/while/strided_slice*
T0*'
_output_shapes
:џџџџџџџџџ2
r
lstm/while/addAddV2lstm/while/BiasAddlstm/while/MatMul_4*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_2Const^lstm/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL>
m
lstm/while/Const_3Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
m
lstm/while/Mul_8Mullstm/while/addlstm/while/Const_2*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_1Addlstm/while/Mul_8lstm/while/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
}
"lstm/while/clip_by_value/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

 lstm/while/clip_by_value/MinimumMinimumlstm/while/Add_1"lstm/while/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/clip_by_value/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_valueMaximum lstm/while/clip_by_value/Minimumlstm/while/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ2*
T0

lstm/while/ReadVariableOp_1ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_1/stackConst^lstm/while/Identity*
_output_shapes
:*
valueB"    2   *
dtype0

"lstm/while/strided_slice_1/stack_1Const^lstm/while/Identity*
dtype0*
_output_shapes
:*
valueB"    d   

"lstm/while/strided_slice_1/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:

lstm/while/strided_slice_1StridedSlicelstm/while/ReadVariableOp_1 lstm/while/strided_slice_1/stack"lstm/while/strided_slice_1/stack_1"lstm/while/strided_slice_1/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:22
}
lstm/while/MatMul_5MatMullstm/while/mul_5lstm/while/strided_slice_1*
T0*'
_output_shapes
:џџџџџџџџџ2
v
lstm/while/add_2AddV2lstm/while/BiasAdd_1lstm/while/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_4Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_5Const^lstm/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *   ?
o
lstm/while/Mul_9Mullstm/while/add_2lstm/while/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_3Addlstm/while/Mul_9lstm/while/Const_5*'
_output_shapes
:џџџџџџџџџ2*
T0

$lstm/while/clip_by_value_1/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_1/MinimumMinimumlstm/while/Add_3$lstm/while/clip_by_value_1/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
w
lstm/while/clip_by_value_1/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_1Maximum"lstm/while/clip_by_value_1/Minimumlstm/while/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
}
lstm/while/mul_10Mullstm/while/clip_by_value_1lstm/while/Identity_3*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_2ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_2/stackConst^lstm/while/Identity*
valueB"    d   *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_2/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"       *
dtype0

"lstm/while/strided_slice_2/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:

lstm/while/strided_slice_2StridedSlicelstm/while/ReadVariableOp_2 lstm/while/strided_slice_2/stack"lstm/while/strided_slice_2/stack_1"lstm/while/strided_slice_2/stack_2*
end_mask*
_output_shapes

:22*

begin_mask*
T0*
Index0
}
lstm/while/MatMul_6MatMullstm/while/mul_6lstm/while/strided_slice_2*'
_output_shapes
:џџџџџџџџџ2*
T0
v
lstm/while/add_4AddV2lstm/while/BiasAdd_2lstm/while/MatMul_6*'
_output_shapes
:џџџџџџџџџ2*
T0
[
lstm/while/TanhTanhlstm/while/add_4*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/mul_11Mullstm/while/clip_by_valuelstm/while/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ2
q
lstm/while/add_5AddV2lstm/while/mul_10lstm/while/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_3ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_3/stackConst^lstm/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_1Const^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_2Const^lstm/while/Identity*
_output_shapes
:*
valueB"      *
dtype0

lstm/while/strided_slice_3StridedSlicelstm/while/ReadVariableOp_3 lstm/while/strided_slice_3/stack"lstm/while/strided_slice_3/stack_1"lstm/while/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes

:22
}
lstm/while/MatMul_7MatMullstm/while/mul_7lstm/while/strided_slice_3*'
_output_shapes
:џџџџџџџџџ2*
T0
v
lstm/while/add_6AddV2lstm/while/BiasAdd_3lstm/while/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_6Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_7Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
p
lstm/while/Mul_12Mullstm/while/add_6lstm/while/Const_6*'
_output_shapes
:џџџџџџџџџ2*
T0
p
lstm/while/Add_7Addlstm/while/Mul_12lstm/while/Const_7*
T0*'
_output_shapes
:џџџџџџџџџ2

$lstm/while/clip_by_value_2/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_2/MinimumMinimumlstm/while/Add_7$lstm/while/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
w
lstm/while/clip_by_value_2/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_2Maximum"lstm/while/clip_by_value_2/Minimumlstm/while/clip_by_value_2/y*'
_output_shapes
:џџџџџџџџџ2*
T0
]
lstm/while/Tanh_1Tanhlstm/while/add_5*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/while/mul_13Mullstm/while/clip_by_value_2lstm/while/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2

.lstm/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV34lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm/while/Identitylstm/while/mul_13lstm/while/Identity_1*
T0*$
_class
loc:@lstm/while/mul_13*
_output_shapes
: 
є
4lstm/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm/TensorArray_1*
T0*$
_class
loc:@lstm/while/mul_13*
parallel_iterations *
is_constant(*
_output_shapes
:*(

frame_namelstm/while/while_context
j
lstm/while/add_8/yConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lstm/while/add_8AddV2lstm/while/Identitylstm/while/add_8/y*
_output_shapes
: *
T0
\
lstm/while/NextIterationNextIterationlstm/while/add_8*
T0*
_output_shapes
: 
|
lstm/while/NextIteration_1NextIteration.lstm/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
p
lstm/while/NextIteration_2NextIterationlstm/while/mul_13*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/NextIteration_3NextIterationlstm/while/add_5*'
_output_shapes
:џџџџџџџџџ2*
T0
K
lstm/while/ExitExitlstm/while/Switch*
_output_shapes
: *
T0
O
lstm/while/Exit_1Exitlstm/while/Switch_1*
T0*
_output_shapes
: 
`
lstm/while/Exit_2Exitlstm/while/Switch_2*'
_output_shapes
:џџџџџџџџџ2*
T0
`
lstm/while/Exit_3Exitlstm/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ2
Ђ
'lstm/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm/TensorArray_1lstm/while/Exit_1*
_output_shapes
: *%
_class
loc:@lstm/TensorArray_1

!lstm/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *%
_class
loc:@lstm/TensorArray_1

!lstm/TensorArrayStack/range/deltaConst*
value	B :*%
_class
loc:@lstm/TensorArray_1*
dtype0*
_output_shapes
: 
п
lstm/TensorArrayStack/rangeRange!lstm/TensorArrayStack/range/start'lstm/TensorArrayStack/TensorArraySizeV3!lstm/TensorArrayStack/range/delta*#
_output_shapes
:џџџџџџџџџ*%
_class
loc:@lstm/TensorArray_1

)lstm/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm/TensorArray_1lstm/TensorArrayStack/rangelstm/while/Exit_1*,
_output_shapes
:Шџџџџџџџџџ2*$
element_shape:џџџџџџџџџ2*%
_class
loc:@lstm/TensorArray_1*
dtype0
m
lstm/strided_slice_7/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
lstm/strided_slice_7StridedSlice)lstm/TensorArrayStack/TensorArrayGatherV3lstm/strided_slice_7/stacklstm/strided_slice_7/stack_1lstm/strided_slice_7/stack_2*
T0*
Index0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
j
lstm/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm/transpose_1	Transpose)lstm/TensorArrayStack/TensorArrayGatherV3lstm/transpose_1/perm*,
_output_shapes
:џџџџџџџџџШ2*
T0
Y
dropout/dropout/rateConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Y
dropout/dropout/ShapeShapelstm/strided_slice_7*
T0*
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

,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*'
_output_shapes
:џџџџџџџџџ2*
T0*
dtype0

"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
­
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ2

dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Z
dropout/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
dropout/dropout/subSubdropout/dropout/sub/xdropout/dropout/rate*
T0*
_output_shapes
: 
^
dropout/dropout/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
dropout/dropout/truedivRealDivdropout/dropout/truediv/xdropout/dropout/sub*
T0*
_output_shapes
: 

dropout/dropout/GreaterEqualGreaterEqualdropout/dropout/random_uniformdropout/dropout/rate*
T0*'
_output_shapes
:џџџџџџџџџ2
{
dropout/dropout/mulMullstm/strided_slice_7dropout/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
{
dropout/dropout/CastCastdropout/dropout/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2*

DstT0
y
dropout/dropout/mul_1Muldropout/dropout/muldropout/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"2      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *SЏО*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *SЏ>*
_class
loc:@dense/kernel*
dtype0
Ь
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:2
Ю
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2
в
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2

dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:2*
shared_namedense/kernel*
_class
loc:@dense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2

dense/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense/bias*
dtype0


dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_name
dense/bias*
_class
loc:@dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2
|
dense/MatMulMatMuldropout/dropout/mul_1dense/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
Y
dense/SigmoidSigmoiddense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ

dense_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
v
total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@total
x
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_namecount*
_class

loc:@count
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
W
metrics/acc/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
s
metrics/acc/GreaterGreaterdense/Sigmoidmetrics/acc/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
p
metrics/acc/Cast_1Castmetrics/acc/Greater*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

w
metrics/acc/EqualEqualdense_targetmetrics/acc/Cast_1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
w
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
~
metrics/acc/MeanMeanmetrics/acc/Cast_2"metrics/acc/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
\
metrics/acc/SumSummetrics/acc/Meanmetrics/acc/Const*
T0*
_output_shapes
: 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
K
metrics/acc/SizeSizemetrics/acc/Mean*
T0*
_output_shapes
: 
\
metrics/acc/Cast_3Castmetrics/acc/Size*

SrcT0*
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
_output_shapes
: *
T0
Z
loss/dense_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
(loss/dense_loss/logistic_loss/zeros_like	ZerosLikedense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
*loss/dense_loss/logistic_loss/GreaterEqualGreaterEqualdense/BiasAdd(loss/dense_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
Х
$loss/dense_loss/logistic_loss/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualdense/BiasAdd(loss/dense_loss/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0
i
!loss/dense_loss/logistic_loss/NegNegdense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
Р
&loss/dense_loss/logistic_loss/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqual!loss/dense_loss/logistic_loss/Negdense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ

!loss/dense_loss/logistic_loss/mulMuldense/BiasAdddense_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ќ
!loss/dense_loss/logistic_loss/subSub$loss/dense_loss/logistic_loss/Select!loss/dense_loss/logistic_loss/mul*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

!loss/dense_loss/logistic_loss/ExpExp&loss/dense_loss/logistic_loss/Select_1*'
_output_shapes
:џџџџџџџџџ*
T0

#loss/dense_loss/logistic_loss/Log1pLog1p!loss/dense_loss/logistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
loss/dense_loss/logistic_lossAdd!loss/dense_loss/logistic_loss/sub#loss/dense_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
q
&loss/dense_loss/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

loss/dense_loss/MeanMeanloss/dense_loss/logistic_loss&loss/dense_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ
i
$loss/dense_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Rloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_loss/Mean*
T0*
_output_shapes
:

Ploss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
h
`loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ц
?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_loss/Meana^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
ч
?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ConstConsta^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ё
9loss/dense_loss/weighted_loss/broadcast_weights/ones_likeFill?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Shape?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:џџџџџџџџџ*
T0
Х
/loss/dense_loss/weighted_loss/broadcast_weightsMul$loss/dense_loss/weighted_loss/Cast/x9loss/dense_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0

!loss/dense_loss/weighted_loss/MulMulloss/dense_loss/Mean/loss/dense_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
w
loss/dense_loss/SumSum!loss/dense_loss/weighted_loss/Mulloss/dense_loss/Const_1*
_output_shapes
: *
T0
h
loss/dense_loss/num_elementsSize!loss/dense_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
w
!loss/dense_loss/num_elements/CastCastloss/dense_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
Z
loss/dense_loss/Const_2Const*
_output_shapes
: *
valueB *
dtype0
k
loss/dense_loss/Sum_1Sumloss/dense_loss/Sumloss/dense_loss/Const_2*
T0*
_output_shapes
: 
|
loss/dense_loss/valueDivNoNanloss/dense_loss/Sum_1!loss/dense_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
S
loss/mulMul
loss/mul/xloss/dense_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
_output_shapes
: *
value	B	 R *
_class
	loc:@iter*
dtype0	
u
iterVarHandleOp*
shape: *
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
j
'training/Adam/gradients/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
p
+training/Adam/gradients/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ѕ
&training/Adam/gradients/gradients/FillFill'training/Adam/gradients/gradients/Shape+training/Adam/gradients/gradients/grad_ys_0*
T0*
_output_shapes
: 
k
)training/Adam/gradients/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
Х
+training/Adam/gradients/gradients/f_count_1Enter)training/Adam/gradients/gradients/f_count*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
К
'training/Adam/gradients/gradients/MergeMerge+training/Adam/gradients/gradients/f_count_1/training/Adam/gradients/gradients/NextIteration*
_output_shapes
: : *
T0*
N

(training/Adam/gradients/gradients/SwitchSwitch'training/Adam/gradients/gradients/Mergelstm/while/LoopCond*
T0*
_output_shapes
: : 

'training/Adam/gradients/gradients/Add/yConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ђ
%training/Adam/gradients/gradients/AddAdd*training/Adam/gradients/gradients/Switch:1'training/Adam/gradients/gradients/Add/y*
T0*
_output_shapes
: 
ќ;
/training/Adam/gradients/gradients/NextIterationNextIteration%training/Adam/gradients/gradients/AddZ^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2_1N^training/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPushV2P^training/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPushV2L^training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPushV2N^training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPushV2[^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2]^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2_1K^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2_1J^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2_1J^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPushV2t^training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2_1X^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2_1j^training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2^^training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2l^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2`^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2d^training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2[^training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPushV2l^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPushV2`^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPushV2d^training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPushV2[^training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPushV2b^training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2Y^training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPushV2[^training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2]^training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1I^training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPushV2K^training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPushV2[^training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2]^training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2_1I^training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPushV2K^training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPushV2[^training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2]^training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2_1I^training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPushV2K^training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1J^training/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2_1Z^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2\^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2_1J^training/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPushV2X^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2Z^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2_1*
T0*
_output_shapes
: 
~
+training/Adam/gradients/gradients/f_count_2Exit(training/Adam/gradients/gradients/Switch*
T0*
_output_shapes
: 
k
)training/Adam/gradients/gradients/b_countConst*
dtype0*
_output_shapes
: *
value	B :
щ
+training/Adam/gradients/gradients/b_count_1Enter+training/Adam/gradients/gradients/f_count_2*
T0*
parallel_iterations *
_output_shapes
: *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
О
)training/Adam/gradients/gradients/Merge_1Merge+training/Adam/gradients/gradients/b_count_11training/Adam/gradients/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
Р
.training/Adam/gradients/gradients/GreaterEqualGreaterEqual)training/Adam/gradients/gradients/Merge_14training/Adam/gradients/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 

4training/Adam/gradients/gradients/GreaterEqual/EnterEnter)training/Adam/gradients/gradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

+training/Adam/gradients/gradients/b_count_2LoopCond.training/Adam/gradients/gradients/GreaterEqual*
_output_shapes
: 
Џ
*training/Adam/gradients/gradients/Switch_1Switch)training/Adam/gradients/gradients/Merge_1+training/Adam/gradients/gradients/b_count_2*
T0*
_output_shapes
: : 
Б
%training/Adam/gradients/gradients/SubSub,training/Adam/gradients/gradients/Switch_1:14training/Adam/gradients/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ћ
1training/Adam/gradients/gradients/NextIteration_1NextIteration%training/Adam/gradients/gradients/Subo^training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
_output_shapes
: *
T0

+training/Adam/gradients/gradients/b_count_3Exit*training/Adam/gradients/gradients/Switch_1*
T0*
_output_shapes
: 

3training/Adam/gradients/gradients/loss/mul_grad/MulMul&training/Adam/gradients/gradients/Fillloss/dense_loss/value*
T0*
_output_shapes
: 

5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Mul&training/Adam/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 

Btraining/Adam/gradients/gradients/loss/dense_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Dtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Љ
Rtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/ShapeDtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ю
Gtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nanDivNoNan5training/Adam/gradients/gradients/loss/mul_grad/Mul_1!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 

@training/Adam/gradients/gradients/loss/dense_loss/value_grad/SumSumGtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nanRtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *
T0
і
Dtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/ReshapeReshape@training/Adam/gradients/gradients/loss/dense_loss/value_grad/SumBtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Shape*
_output_shapes
: *
T0

@training/Adam/gradients/gradients/loss/dense_loss/value_grad/NegNegloss/dense_loss/Sum_1*
T0*
_output_shapes
: 
л
Itraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nan_1DivNoNan@training/Adam/gradients/gradients/loss/dense_loss/value_grad/Neg!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 
ф
Itraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nan_2DivNoNanItraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nan_1!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 
ъ
@training/Adam/gradients/gradients/loss/dense_loss/value_grad/mulMul5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Itraining/Adam/gradients/gradients/loss/dense_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 

Btraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Sum_1Sum@training/Adam/gradients/gradients/loss/dense_loss/value_grad/mulTtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
T0
ќ
Ftraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Reshape_1ReshapeBtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Sum_1Dtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/Shape_1*
_output_shapes
: *
T0

Jtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Dtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/ReshapeReshapeDtraining/Adam/gradients/gradients/loss/dense_loss/value_grad/ReshapeJtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0

Btraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
є
Atraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/TileTileDtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/ReshapeBtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 

Htraining/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
џ
Btraining/Adam/gradients/gradients/loss/dense_loss/Sum_grad/ReshapeReshapeAtraining/Adam/gradients/gradients/loss/dense_loss/Sum_1_grad/TileHtraining/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/loss/dense_loss/Sum_grad/ShapeShape!loss/dense_loss/weighted_loss/Mul*
_output_shapes
:*
T0
ћ
?training/Adam/gradients/gradients/loss/dense_loss/Sum_grad/TileTileBtraining/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Reshape@training/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ

Ntraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/ShapeShapeloss/dense_loss/Mean*
T0*
_output_shapes
:
Џ
Ptraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1Shape/loss/dense_loss/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
Э
^training/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/ShapePtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ѓ
Ltraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/MulMul?training/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Tile/loss/dense_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:џџџџџџџџџ
Є
Ltraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/SumSumLtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Mul^training/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Ї
Ptraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/ReshapeReshapeLtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/SumNtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ
к
Ntraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Mul_1Mulloss/dense_loss/Mean?training/Adam/gradients/gradients/loss/dense_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Њ
Ntraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Sum_1SumNtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Mul_1`training/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
­
Rtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Reshape_1ReshapeNtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Sum_1Ptraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ

Atraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ShapeShapeloss/dense_loss/logistic_loss*
T0*
_output_shapes
:
и
@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/SizeConst*
value	B :*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Љ
?training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/addAddV2&loss/dense_loss/Mean/reduction_indices@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Size*
T0*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
: 
Х
?training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/modFloorMod?training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/add@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Size*
T0*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
: 
м
Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_1Const*
valueB *T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
п
Gtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/range/startConst*
_output_shapes
: *
value	B : *T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0
п
Gtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/range/deltaConst*
value	B :*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 

Atraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/rangeRangeGtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/range/start@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/SizeGtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/range/delta*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:
о
Ftraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Fill/valueConst*
value	B :*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ь
@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/FillFillCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_1Ftraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape
ч
Itraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/DynamicStitchDynamicStitchAtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/range?training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/modAtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Fill*
T0*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
N*
_output_shapes
:
н
Etraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum/yConst*
value	B :*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
л
Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/MaximumMaximumItraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/DynamicStitchEtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum/y*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:*
T0
г
Dtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/floordivFloorDivAtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ShapeCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum*
T0*T
_classJ
HFloc:@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:
І
Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ReshapeReshapePtraining/Adam/gradients/gradients/loss/dense_loss/weighted_loss/Mul_grad/ReshapeItraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/DynamicStitch*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/TileTileCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ReshapeDtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/floordiv*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_2Shapeloss/dense_loss/logistic_loss*
T0*
_output_shapes
:

Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_3Shapeloss/dense_loss/Mean*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ё
@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ProdProdCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_2Atraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Const*
_output_shapes
: *
T0

Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ѕ
Btraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Prod_1ProdCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Shape_3Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Const_1*
_output_shapes
: *
T0

Gtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
ў
Etraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum_1MaximumBtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Prod_1Gtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
ќ
Ftraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/floordiv_1FloorDiv@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/ProdEtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
Р
@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/CastCastFtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0

Ctraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/truedivRealDiv@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Tile@training/Adam/gradients/gradients/loss/dense_loss/Mean_grad/Cast*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Jtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/ShapeShape!loss/dense_loss/logistic_loss/sub*
T0*
_output_shapes
:

Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Shape_1Shape#loss/dense_loss/logistic_loss/Log1p*
T0*
_output_shapes
:
С
Ztraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/ShapeLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Htraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/SumSumCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/truedivZtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Ј
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/ReshapeReshapeHtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/SumJtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Shape*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

Jtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Sum_1SumCtraining/Adam/gradients/gradients/loss/dense_loss/Mean_grad/truediv\training/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ѕ
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1ReshapeJtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Sum_1Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/ShapeShape$loss/dense_loss/logistic_loss/Select*
_output_shapes
:*
T0
Ё
Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1Shape!loss/dense_loss/logistic_loss/mul*
T0*
_output_shapes
:
Э
^training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/ShapePtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Є
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/SumSumLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Reshape^training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Ћ
Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/ReshapeReshapeLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/SumNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
м
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/NegNegLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Reshape*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Ј
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Sum_1SumLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Neg`training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
К
Rtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1ReshapeNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Sum_1Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add/xConstO^training/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1*
_output_shapes
: *
valueB
 *  ?*
dtype0
ў
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/addAddV2Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add/x!loss/dense_loss/logistic_loss/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
х
Utraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add*'
_output_shapes
:џџџџџџџџџ*
T0
Ў
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/mulMulNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1Utraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0
Є
Vtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_like	ZerosLikedense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Rtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/ReshapeVtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Ttraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqualVtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_likePtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ

Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/ShapeShapedense/BiasAdd*
T0*
_output_shapes
:

Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1Shapedense_target*
T0*
_output_shapes
:
Э
^training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/ShapePtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/MulMulRtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1dense_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Є
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/SumSumLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul^training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Ћ
Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/ReshapeReshapeLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/SumNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0
ѓ
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul_1Muldense/BiasAddRtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Њ
Ntraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Sum_1SumNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul_1`training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
К
Rtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape_1ReshapeNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Sum_1Ptraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
ј
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Exp_grad/mulMulNtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Log1p_grad/mul!loss/dense_loss/logistic_loss/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
К
Xtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike!loss/dense_loss/logistic_loss/Neg*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Ttraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Exp_grad/mulXtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Vtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqualXtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_likeLtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:џџџџџџџџџ
л
Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Neg_grad/NegNegTtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ

&training/Adam/gradients/gradients/AddNAddNRtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/SelectPtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/mul_grad/ReshapeVtraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1Ltraining/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Neg_grad/Neg*
N*'
_output_shapes
:џџџџџџџџџ*
T0*e
_class[
YWloc:@training/Adam/gradients/gradients/loss/dense_loss/logistic_loss/Select_grad/Select

@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad&training/Adam/gradients/gradients/AddN*
T0*
_output_shapes
:
Ю
:training/Adam/gradients/gradients/dense/MatMul_grad/MatMulMatMul&training/Adam/gradients/gradients/AddNdense/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ2*
transpose_b(*
T0
С
<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1MatMuldropout/dropout/mul_1&training/Adam/gradients/gradients/AddN*
T0*
_output_shapes

:2*
transpose_a(

Btraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/ShapeShapedropout/dropout/mul*
T0*
_output_shapes
:

Dtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Shape_1Shapedropout/dropout/Cast*
_output_shapes
:*
T0
Љ
Rtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/ShapeDtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ы
@training/Adam/gradients/gradients/dropout/dropout/mul_1_grad/MulMul:training/Adam/gradients/gradients/dense/MatMul_grad/MatMuldropout/dropout/Cast*'
_output_shapes
:џџџџџџџџџ2*
T0

@training/Adam/gradients/gradients/dropout/dropout/mul_1_grad/SumSum@training/Adam/gradients/gradients/dropout/dropout/mul_1_grad/MulRtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Dtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/ReshapeReshape@training/Adam/gradients/gradients/dropout/dropout/mul_1_grad/SumBtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Shape*'
_output_shapes
:џџџџџџџџџ2*
T0
Ь
Btraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Mul_1Muldropout/dropout/mul:training/Adam/gradients/gradients/dense/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ2

Btraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Sum_1SumBtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Mul_1Ttraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Ftraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Reshape_1ReshapeBtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Sum_1Dtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ2*
T0

@training/Adam/gradients/gradients/dropout/dropout/mul_grad/ShapeShapelstm/strided_slice_7*
T0*
_output_shapes
:

Btraining/Adam/gradients/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/truediv*
T0*
_output_shapes
: 
Ѓ
Ptraining/Adam/gradients/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs@training/Adam/gradients/gradients/dropout/dropout/mul_grad/ShapeBtraining/Adam/gradients/gradients/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ж
>training/Adam/gradients/gradients/dropout/dropout/mul_grad/MulMulDtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Reshapedropout/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
њ
>training/Adam/gradients/gradients/dropout/dropout/mul_grad/SumSum>training/Adam/gradients/gradients/dropout/dropout/mul_grad/MulPtraining/Adam/gradients/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Btraining/Adam/gradients/gradients/dropout/dropout/mul_grad/ReshapeReshape>training/Adam/gradients/gradients/dropout/dropout/mul_grad/Sum@training/Adam/gradients/gradients/dropout/dropout/mul_grad/Shape*'
_output_shapes
:џџџџџџџџџ2*
T0
е
@training/Adam/gradients/gradients/dropout/dropout/mul_grad/Mul_1Mullstm/strided_slice_7Dtraining/Adam/gradients/gradients/dropout/dropout/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0

@training/Adam/gradients/gradients/dropout/dropout/mul_grad/Sum_1Sum@training/Adam/gradients/gradients/dropout/dropout/mul_grad/Mul_1Rtraining/Adam/gradients/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
і
Dtraining/Adam/gradients/gradients/dropout/dropout/mul_grad/Reshape_1Reshape@training/Adam/gradients/gradients/dropout/dropout/mul_grad/Sum_1Btraining/Adam/gradients/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: 

Atraining/Adam/gradients/gradients/lstm/strided_slice_7_grad/ShapeShape)lstm/TensorArrayStack/TensorArrayGatherV3*
T0*
_output_shapes
:

Ltraining/Adam/gradients/gradients/lstm/strided_slice_7_grad/StridedSliceGradStridedSliceGradAtraining/Adam/gradients/gradients/lstm/strided_slice_7_grad/Shapelstm/strided_slice_7/stacklstm/strided_slice_7/stack_1lstm/strided_slice_7/stack_2Btraining/Adam/gradients/gradients/dropout/dropout/mul_grad/Reshape*,
_output_shapes
:Шџџџџџџџџџ2*
shrink_axis_mask*
Index0*
T0
Ђ
rtraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm/TensorArray_1lstm/while/Exit_1*-
source#!training/Adam/gradients/gradients*%
_class
loc:@lstm/TensorArray_1*
_output_shapes

:: 
Ъ
ntraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitylstm/while/Exit_1s^training/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*%
_class
loc:@lstm/TensorArray_1*
_output_shapes
: 

xtraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rtraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3lstm/TensorArrayStack/rangeLtraining/Adam/gradients/gradients/lstm/strided_slice_7_grad/StridedSliceGradntraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
~
,training/Adam/gradients/gradients/zeros_like	ZerosLikelstm/while/Exit_2*'
_output_shapes
:џџџџџџџџџ2*
T0

.training/Adam/gradients/gradients/zeros_like_1	ZerosLikelstm/while/Exit_3*'
_output_shapes
:џџџџџџџџџ2*
T0
Ъ
?training/Adam/gradients/gradients/lstm/while/Exit_1_grad/b_exitEnterxtraining/Adam/gradients/gradients/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
parallel_iterations *
_output_shapes
: *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

?training/Adam/gradients/gradients/lstm/while/Exit_2_grad/b_exitEnter,training/Adam/gradients/gradients/zeros_like*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0

?training/Adam/gradients/gradients/lstm/while/Exit_3_grad/b_exitEnter.training/Adam/gradients/gradients/zeros_like_1*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0

Ctraining/Adam/gradients/gradients/lstm/while/Switch_1_grad/b_switchMerge?training/Adam/gradients/gradients/lstm/while/Exit_1_grad/b_exitJtraining/Adam/gradients/gradients/lstm/while/Switch_1_grad_1/NextIteration*
_output_shapes
: : *
T0*
N

Ctraining/Adam/gradients/gradients/lstm/while/Switch_2_grad/b_switchMerge?training/Adam/gradients/gradients/lstm/while/Exit_2_grad/b_exitJtraining/Adam/gradients/gradients/lstm/while/Switch_2_grad_1/NextIteration*)
_output_shapes
:џџџџџџџџџ2: *
T0*
N

Ctraining/Adam/gradients/gradients/lstm/while/Switch_3_grad/b_switchMerge?training/Adam/gradients/gradients/lstm/while/Exit_3_grad/b_exitJtraining/Adam/gradients/gradients/lstm/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 
З
@training/Adam/gradients/gradients/lstm/while/Merge_1_grad/SwitchSwitchCtraining/Adam/gradients/gradients/lstm/while/Switch_1_grad/b_switch+training/Adam/gradients/gradients/b_count_2*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/lstm/while/Switch_1_grad/b_switch*
_output_shapes
: : 
й
@training/Adam/gradients/gradients/lstm/while/Merge_2_grad/SwitchSwitchCtraining/Adam/gradients/gradients/lstm/while/Switch_2_grad/b_switch+training/Adam/gradients/gradients/b_count_2*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/lstm/while/Switch_2_grad/b_switch*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
й
@training/Adam/gradients/gradients/lstm/while/Merge_3_grad/SwitchSwitchCtraining/Adam/gradients/gradients/lstm/while/Switch_3_grad/b_switch+training/Adam/gradients/gradients/b_count_2*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/lstm/while/Switch_3_grad/b_switch*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
Љ
>training/Adam/gradients/gradients/lstm/while/Enter_1_grad/ExitExit@training/Adam/gradients/gradients/lstm/while/Merge_1_grad/Switch*
_output_shapes
: *
T0
К
>training/Adam/gradients/gradients/lstm/while/Enter_2_grad/ExitExit@training/Adam/gradients/gradients/lstm/while/Merge_2_grad/Switch*'
_output_shapes
:џџџџџџџџџ2*
T0
К
>training/Adam/gradients/gradients/lstm/while/Enter_3_grad/ExitExit@training/Adam/gradients/gradients/lstm/while/Merge_3_grad/Switch*
T0*'
_output_shapes
:џџџџџџџџџ2
Т
wtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3}training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterBtraining/Adam/gradients/gradients/lstm/while/Merge_1_grad/Switch:1*
_output_shapes

:: *-
source#!training/Adam/gradients/gradients*$
_class
loc:@lstm/while/mul_13
п
}training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm/TensorArray_1*
is_constant(*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*$
_class
loc:@lstm/while/mul_13*
parallel_iterations 

straining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityBtraining/Adam/gradients/gradients/lstm/while/Merge_1_grad/Switch:1x^training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*$
_class
loc:@lstm/while/mul_13

gtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3wtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3rtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2straining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:џџџџџџџџџ2
р
mtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
џџџџџџџџџ*&
_class
loc:@lstm/while/Identity*
dtype0*
_output_shapes
: 
М
mtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2mtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
_output_shapes
:*
	elem_type0*&
_class
loc:@lstm/while/Identity
т
mtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEntermtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
straining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2mtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterlstm/while/Identity&^training/Adam/gradients/gradients/Add*
_output_shapes
: *
swap_memory(*
T0
Ы
rtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2xtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0

xtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEntermtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
 ;
ntraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerY^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1M^training/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPopV2O^training/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPopV2K^training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPopV2M^training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2\^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1J^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1I^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1I^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPopV2s^training/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1W^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1i^training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2]^training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2k^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2_^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2c^training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPopV2k^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2_^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2c^training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPopV2a^training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2X^training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2\^training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1H^training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPopV2J^training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2\^training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1H^training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2J^training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPopV2Z^training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2\^training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1H^training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2J^training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1I^training/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1Y^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2[^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1I^training/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2W^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2Y^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1
№
(training/Adam/gradients/gradients/AddN_1AddNBtraining/Adam/gradients/gradients/lstm/while/Merge_2_grad/Switch:1gtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
N*'
_output_shapes
:џџџџџџџџџ2*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/lstm/while/Switch_2_grad/b_switch

>training/Adam/gradients/gradients/lstm/while/mul_13_grad/ShapeShapelstm/while/clip_by_value_2*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape_1Shapelstm/while/Tanh_1*
_output_shapes
:*
T0
г
Ntraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2[training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
Ttraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape*
dtype0*
_output_shapes
: 
Е
Ttraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape*
_output_shapes
:*
	elem_type0
А
Ttraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
п
Ztraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter>training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ytraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
і
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape_1
Л
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc_1StackV2Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Const_1*
	elem_type0*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape_1*
_output_shapes
:
Д
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter_1EnterVtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
х
\training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter_1@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Ё
[training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2atraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
с
atraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterVtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ш
<training/Adam/gradients/gradients/lstm/while/mul_13_grad/MulMul(training/Adam/gradients/gradients/AddN_1Gtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
Г
Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*$
_class
loc:@lstm/while/Tanh_1*
dtype0*
_output_shapes
: 
ф
Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/f_accStackV2Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/Const*$
_class
loc:@lstm/while/Tanh_1*
_output_shapes
:*
	elem_type0

Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0

Htraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPushV2StackPushV2Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/Enterlstm/while/Tanh_1&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Gtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2
StackPopV2Mtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Й
Mtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/f_acc*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
є
<training/Adam/gradients/gradients/lstm/while/mul_13_grad/SumSum<training/Adam/gradients/gradients/lstm/while/mul_13_grad/MulNtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

@training/Adam/gradients/gradients/lstm/while/mul_13_grad/ReshapeReshape<training/Adam/gradients/gradients/lstm/while/mul_13_grad/SumYtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
ь
>training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1MulItraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPopV2(training/Adam/gradients/gradients/AddN_1*
T0*'
_output_shapes
:џџџџџџџџџ2
О
Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*-
_class#
!loc:@lstm/while/clip_by_value_2*
dtype0*
_output_shapes
: 
ё
Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/f_accStackV2Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/Const*
	elem_type0*-
_class#
!loc:@lstm/while/clip_by_value_2*
_output_shapes
:

Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ј
Jtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPushV2StackPushV2Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/Enterlstm/while/clip_by_value_2&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Itraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPopV2
StackPopV2Otraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Н
Otraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPopV2/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
њ
>training/Adam/gradients/gradients/lstm/while/mul_13_grad/Sum_1Sum>training/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1Ptraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Reshape_1Reshape>training/Adam/gradients/gradients/lstm/while/mul_13_grad/Sum_1[training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/ShapeShape"lstm/while/clip_by_value_2/Minimum*
T0*
_output_shapes
:
Д
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Й
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape_2Shape@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Reshape*
_output_shapes
:*
T0
К
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/zerosFillItraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape_2Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ2*
T0
У
Ntraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqualGreaterEqualYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPopV2Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Const_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ж
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*5
_class+
)'loc:@lstm/while/clip_by_value_2/Minimum

Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Const*
_output_shapes
:*
	elem_type0*5
_class+
)'loc:@lstm/while/clip_by_value_2/Minimum
А
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
а
Ztraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Enter"lstm/while/clip_by_value_2/Minimum&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
Њ
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
У
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
г
Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgsbtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*Z
_classP
NLloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape*
dtype0*
_output_shapes
: 
а
]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/f_accStackV2]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/Const*Z
_classP
NLloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape*
_output_shapes
:*
	elem_type0
Т
]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/EnterEnter]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
њ
ctraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/EnterGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Џ
btraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2htraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
я
htraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
п
Htraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/SelectSelectNtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual@training/Adam/gradients/gradients/lstm/while/mul_13_grad/ReshapeGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2

Etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/SumSumHtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/SelectWtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Б
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/ReshapeReshapeEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Sumbtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
с
Jtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Select_1SelectNtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqualGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/zeros@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Sum_1SumJtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Select_1Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Reshape_1ReshapeGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Sum_1Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape_1*
_output_shapes
: *
T0

Atraining/Adam/gradients/gradients/lstm/while/Tanh_1_grad/TanhGradTanhGradGtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPopV2Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ2
Р
Jtraining/Adam/gradients/gradients/lstm/while/Switch_1_grad_1/NextIterationNextIterationBtraining/Adam/gradients/gradients/lstm/while/Merge_1_grad/Switch:1*
_output_shapes
: *
T0

Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/ShapeShapelstm/while/Add_7*
T0*
_output_shapes
:
М
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Ъ
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape_2ShapeItraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Reshape*
_output_shapes
:*
T0
Т
Utraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/zerosFillQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape_2Utraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Я
Straining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual	LessEqual^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Const_1*'
_output_shapes
:џџџџџџџџџ2*
T0
Щ
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/Add_7*
dtype0*
_output_shapes
: 

Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/f_accStackV2Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Const*
_output_shapes
:*
	elem_type0*#
_class
loc:@lstm/while/Add_7
К
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/EnterEnterYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ш
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPushV2StackPushV2Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Enterlstm/while/Add_7&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
Д
^training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2
StackPopV2dtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
ч
dtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2/EnterEnterYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
Ш
[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ы
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsjtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape*
dtype0*
_output_shapes
: 
ш
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_accStackV2etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/Const*b
_classX
VTloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape*
_output_shapes
:*
	elem_type0
в
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/EnterEnteretraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0

ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/EnterOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
П
jtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
џ
ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnteretraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
§
Ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/SelectSelectStraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqualItraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2
Њ
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/SumSumPtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Select_training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/ReshapeReshapeMtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Sumjtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
џ
Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Select_1SelectStraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqualOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/zerosItraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
А
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Sum_1SumRtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Select_1atraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ѓ
Straining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Reshape_1ReshapeOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Sum_1Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape_1*
T0*
_output_shapes
: 
Ъ
(training/Adam/gradients/gradients/AddN_2AddNBtraining/Adam/gradients/gradients/lstm/while/Merge_3_grad/Switch:1Atraining/Adam/gradients/gradients/lstm/while/Tanh_1_grad/TanhGrad*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/lstm/while/Switch_3_grad/b_switch*
N*'
_output_shapes
:џџџџџџџџџ2
~
=training/Adam/gradients/gradients/lstm/while/add_5_grad/ShapeShapelstm/while/mul_10*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape_1Shapelstm/while/mul_11*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
є
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Const_1*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape_1*
_output_shapes
:
В
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ztraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
о
;training/Adam/gradients/gradients/lstm/while/add_5_grad/SumSum(training/Adam/gradients/gradients/AddN_2Mtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/add_5_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/add_5_grad/SumXtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
т
=training/Adam/gradients/gradients/lstm/while/add_5_grad/Sum_1Sum(training/Adam/gradients/gradients/AddN_2Otraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/add_5_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/add_5_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0
~
=training/Adam/gradients/gradients/lstm/while/Add_7_grad/ShapeShapelstm/while/Mul_12*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape_1Shapelstm/while/Const_7*
T0*
_output_shapes
: 
а
Mtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape_1
В
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
р
[training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
: *
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

;training/Adam/gradients/gradients/lstm/while/Add_7_grad/SumSumQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Add_7_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/Add_7_grad/SumXtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0

=training/Adam/gradients/gradients/lstm/while/Add_7_grad/Sum_1SumQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Atraining/Adam/gradients/gradients/lstm/while/Add_7_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/Add_7_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
_output_shapes
: 

>training/Adam/gradients/gradients/lstm/while/mul_10_grad/ShapeShapelstm/while/clip_by_value_1*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape_1Shapelstm/while/Identity_3*
_output_shapes
:*
T0
г
Ntraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2[training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
Ttraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape*
dtype0*
_output_shapes
: 
Е
Ttraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape*
_output_shapes
:*
	elem_type0
А
Ttraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
п
Ztraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter>training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ytraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
і
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape_1*
dtype0*
_output_shapes
: 
Л
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc_1StackV2Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Const_1*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape_1*
_output_shapes
:*
	elem_type0
Д
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter_1EnterVtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
х
\training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter_1@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Ё
[training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2atraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
с
atraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterVtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
џ
<training/Adam/gradients/gradients/lstm/while/mul_10_grad/MulMul?training/Adam/gradients/gradients/lstm/while/add_5_grad/ReshapeGtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
З
Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*(
_class
loc:@lstm/while/Identity_3*
dtype0*
_output_shapes
: 
ш
Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/f_accStackV2Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/Const*(
_class
loc:@lstm/while/Identity_3*
_output_shapes
:*
	elem_type0

Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Htraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPushV2StackPushV2Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/Enterlstm/while/Identity_3&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Gtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPopV2
StackPopV2Mtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Й
Mtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPopV2/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
<training/Adam/gradients/gradients/lstm/while/mul_10_grad/SumSum<training/Adam/gradients/gradients/lstm/while/mul_10_grad/MulNtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/mul_10_grad/ReshapeReshape<training/Adam/gradients/gradients/lstm/while/mul_10_grad/SumYtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

>training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1MulItraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/add_5_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
О
Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*-
_class#
!loc:@lstm/while/clip_by_value_1*
dtype0
ё
Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/f_accStackV2Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*-
_class#
!loc:@lstm/while/clip_by_value_1

Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
Ј
Jtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPushV2StackPushV2Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/Enterlstm/while/clip_by_value_1&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Itraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPopV2
StackPopV2Otraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Н
Otraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPopV2/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
>training/Adam/gradients/gradients/lstm/while/mul_10_grad/Sum_1Sum>training/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1Ptraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Reshape_1Reshape>training/Adam/gradients/gradients/lstm/while/mul_10_grad/Sum_1[training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ2

>training/Adam/gradients/gradients/lstm/while/mul_11_grad/ShapeShapelstm/while/clip_by_value*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape_1Shapelstm/while/Tanh*
_output_shapes
:*
T0
г
Ntraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2[training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
Ttraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape*
dtype0*
_output_shapes
: 
Е
Ttraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape*
_output_shapes
:*
	elem_type0
А
Ttraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
п
Ztraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter>training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ytraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
і
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape_1*
dtype0*
_output_shapes
: 
Л
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc_1StackV2Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Const_1*
	elem_type0*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape_1*
_output_shapes
:
Д
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter_1EnterVtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
х
\training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter_1@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Ё
[training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2atraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
с
atraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterVtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

<training/Adam/gradients/gradients/lstm/while/mul_11_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/add_5_grad/Reshape_1Gtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
Б
Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*"
_class
loc:@lstm/while/Tanh*
dtype0*
_output_shapes
: 
т
Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/f_accStackV2Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/Const*
	elem_type0*"
_class
loc:@lstm/while/Tanh*
_output_shapes
:

Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Htraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPushV2StackPushV2Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/Enterlstm/while/Tanh&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Gtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2
StackPopV2Mtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Й
Mtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2/EnterEnterBtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
<training/Adam/gradients/gradients/lstm/while/mul_11_grad/SumSum<training/Adam/gradients/gradients/lstm/while/mul_11_grad/MulNtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/mul_11_grad/ReshapeReshape<training/Adam/gradients/gradients/lstm/while/mul_11_grad/SumYtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

>training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1MulItraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/add_5_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ2*
T0
М
Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*+
_class!
loc:@lstm/while/clip_by_value*
dtype0*
_output_shapes
: 
я
Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/f_accStackV2Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/Const*
	elem_type0*+
_class!
loc:@lstm/while/clip_by_value*
_output_shapes
:

Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
І
Jtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPushV2StackPushV2Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/Enterlstm/while/clip_by_value&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Itraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPopV2
StackPopV2Otraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ2
Н
Otraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPopV2/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
>training/Adam/gradients/gradients/lstm/while/mul_11_grad/Sum_1Sum>training/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1Ptraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Reshape_1Reshape>training/Adam/gradients/gradients/lstm/while/mul_11_grad/Sum_1[training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ2
~
>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/ShapeShapelstm/while/add_6*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape_1Shapelstm/while/Const_6*
T0*
_output_shapes
: 
г
Ntraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2[training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
Ttraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape
Е
Ttraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape*
_output_shapes
:*
	elem_type0
А
Ttraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
п
Ztraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ytraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
і
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape_1*
dtype0*
_output_shapes
: 
Л
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc_1StackV2Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Const_1*S
_classI
GEloc:@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape_1*
_output_shapes
:*
	elem_type0
Д
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter_1EnterVtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
у
\training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter_1@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
: *
swap_memory(*
T0

[training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2atraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
с
atraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterVtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
њ
<training/Adam/gradients/gradients/lstm/while/Mul_12_grad/MulMul?training/Adam/gradients/gradients/lstm/while/Add_7_grad/ReshapeBtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Џ
Btraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
є
<training/Adam/gradients/gradients/lstm/while/Mul_12_grad/SumSum<training/Adam/gradients/gradients/lstm/while/Mul_12_grad/MulNtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/ReshapeReshape<training/Adam/gradients/gradients/lstm/while/Mul_12_grad/SumYtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0

>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1MulItraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/Add_7_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2
Д
Dtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/add_6*
dtype0*
_output_shapes
: 
ч
Dtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/f_accStackV2Dtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/Const*
	elem_type0*#
_class
loc:@lstm/while/add_6*
_output_shapes
:

Dtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Jtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPushV2StackPushV2Dtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/Enterlstm/while/add_6&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Itraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPopV2
StackPopV2Otraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Н
Otraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPopV2/EnterEnterDtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/f_acc*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
њ
>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Sum_1Sum>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1Ptraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Btraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Reshape_1Reshape>training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Sum_1[training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPopV2_1*
_output_shapes
: *
T0

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/ShapeShape"lstm/while/clip_by_value_1/Minimum*
T0*
_output_shapes
:
Д
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Й
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape_2Shape@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Reshape*
_output_shapes
:*
T0
К
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/zerosFillItraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape_2Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
У
Ntraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqualGreaterEqualYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPopV2Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Const_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ж
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/ConstConst*
valueB :
џџџџџџџџџ*5
_class+
)'loc:@lstm/while/clip_by_value_1/Minimum*
dtype0*
_output_shapes
: 

Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/f_accStackV2Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Const*5
_class+
)'loc:@lstm/while/clip_by_value_1/Minimum*
_output_shapes
:*
	elem_type0
А
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
а
Ztraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPushV2StackPushV2Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Enter"lstm/while/clip_by_value_1/Minimum&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
Њ
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPopV2
StackPopV2_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
н
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPopV2/EnterEnterTtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
У
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
dtype0*
_output_shapes
: *
valueB
 *    
г
Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgsbtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*Z
_classP
NLloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape*
dtype0
а
]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/f_accStackV2]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*Z
_classP
NLloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape
Т
]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/EnterEnter]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
њ
ctraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/EnterGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Џ
btraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2htraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
я
htraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
п
Htraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/SelectSelectNtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual@training/Adam/gradients/gradients/lstm/while/mul_10_grad/ReshapeGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2

Etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/SumSumHtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/SelectWtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Б
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/ReshapeReshapeEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Sumbtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
с
Jtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Select_1SelectNtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqualGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/zeros@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2

Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Sum_1SumJtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Select_1Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Reshape_1ReshapeGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Sum_1Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape_1*
_output_shapes
: *
T0

Etraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/ShapeShape lstm/while/clip_by_value/Minimum*
_output_shapes
:*
T0
В
Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
З
Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape_2Shape@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Reshape*
T0*
_output_shapes
:
И
Ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 

Etraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/zerosFillGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape_2Ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Н
Ltraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqualGreaterEqualWtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Const_1*'
_output_shapes
:џџџџџџџџџ2*
T0
в
Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/ConstConst*
valueB :
џџџџџџџџџ*3
_class)
'%loc:@lstm/while/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/f_accStackV2Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Const*3
_class)
'%loc:@lstm/while/clip_by_value/Minimum*
_output_shapes
:*
	elem_type0
Ќ
Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/EnterEnterRtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ъ
Xtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPushV2StackPushV2Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Enter lstm/while/clip_by_value/Minimum&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
І
Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPopV2
StackPopV2]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
й
]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPopV2/EnterEnterRtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
С
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Э
Utraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs`training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*X
_classN
LJloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape
Ъ
[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/f_accStackV2[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/Const*X
_classN
LJloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape*
_output_shapes
:*
	elem_type0
О
[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/EnterEnter[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
є
atraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2StackPushV2[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/EnterEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(
Ћ
`training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ftraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
ы
ftraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
й
Ftraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/SelectSelectLtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual@training/Adam/gradients/gradients/lstm/while/mul_11_grad/ReshapeEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2

Ctraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/SumSumFtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/SelectUtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Ћ
Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Sum`training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
л
Htraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Select_1SelectLtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqualEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/zeros@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2

Etraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Sum_1SumHtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Select_1Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Sum_1Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: 

?training/Adam/gradients/gradients/lstm/while/Tanh_grad/TanhGradTanhGradGtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPopV2Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ2*
T0

=training/Adam/gradients/gradients/lstm/while/add_6_grad/ShapeShapelstm/while/BiasAdd_3*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape_1Shapelstm/while/MatMul_7*
_output_shapes
:*
T0
а
Mtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape_1
В
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ztraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
і
;training/Adam/gradients/gradients/lstm/while/add_6_grad/SumSum@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_6_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/add_6_grad/SumXtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0
њ
=training/Adam/gradients/gradients/lstm/while/add_6_grad/Sum_1Sum@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/add_6_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/add_6_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ2

Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/ShapeShapelstm/while/Add_3*
T0*
_output_shapes
:
М
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
valueB *
dtype0
Ъ
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape_2ShapeItraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Reshape*
T0*
_output_shapes
:
Т
Utraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/zerosFillQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape_2Utraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Я
Straining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual	LessEqual^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Const_1*'
_output_shapes
:џџџџџџџџџ2*
T0
Щ
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/Add_3*
dtype0

Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/f_accStackV2Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Const*
_output_shapes
:*
	elem_type0*#
_class
loc:@lstm/while/Add_3
К
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/EnterEnterYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ш
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2StackPushV2Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Enterlstm/while/Add_3&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
Д
^training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2
StackPopV2dtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
ч
dtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/EnterEnterYtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
Ш
[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
valueB
 *  ?*
dtype0
ы
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsjtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape*
dtype0*
_output_shapes
: 
ш
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_accStackV2etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Const*
	elem_type0*b
_classX
VTloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape*
_output_shapes
:
в
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterEnteretraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

ktraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0
П
jtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
џ
ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnteretraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
§
Ptraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/SelectSelectStraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqualItraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2
Њ
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/SumSumPtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Select_training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/ReshapeReshapeMtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Sumjtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
џ
Rtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Select_1SelectStraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqualOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/zerosItraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2
А
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Sum_1SumRtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Select_1atraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ѓ
Straining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Reshape_1ReshapeOtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Sum_1Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape_1*
T0*
_output_shapes
: 
б
Jtraining/Adam/gradients/gradients/lstm/while/Switch_3_grad_1/NextIterationNextIterationBtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ2*
T0

Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/ShapeShapelstm/while/Add_1*
T0*
_output_shapes
:
К
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape_1Const&^training/Adam/gradients/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Ц
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape_2ShapeGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Reshape*
T0*
_output_shapes
:
Р
Straining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/zeros/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
­
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/zerosFillOtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape_2Straining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Щ
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual	LessEqual\training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Const_1*'
_output_shapes
:џџџџџџџџџ2*
T0
Ч
Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/Add_1*
dtype0*
_output_shapes
: 

Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/f_accStackV2Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Const*#
_class
loc:@lstm/while/Add_1*
_output_shapes
:*
	elem_type0
Ж
Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/EnterEnterWtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ф
]training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2StackPushV2Wtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Enterlstm/while/Add_1&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(
А
\training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2
StackPopV2btraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
у
btraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2/EnterEnterWtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
Ц
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB
 *  ?*
dtype0*
_output_shapes
: 
х
]training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

ctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*`
_classV
TRloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape*
dtype0*
_output_shapes
: 
т
ctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_accStackV2ctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Const*`
_classV
TRloc:@training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape*
_output_shapes
:*
	elem_type0
Ю
ctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterEnterctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

itraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2ctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterMtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0
Л
htraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ntraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
ћ
ntraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnterctraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ѕ
Ntraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/SelectSelectQtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqualGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ2
Є
Ktraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/SumSumNtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Select]training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
У
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/ReshapeReshapeKtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Sumhtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
ї
Ptraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Select_1SelectQtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqualMtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/zerosGtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2
Њ
Mtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Sum_1SumPtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Select_1_training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Reshape_1ReshapeMtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Sum_1Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0

=training/Adam/gradients/gradients/lstm/while/add_4_grad/ShapeShapelstm/while/BiasAdd_2*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape_1Shapelstm/while/MatMul_6*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape*
dtype0
В
Straining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Xtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Const_1*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape_1*
_output_shapes
:
В
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ѕ
;training/Adam/gradients/gradients/lstm/while/add_4_grad/SumSum?training/Adam/gradients/gradients/lstm/while/Tanh_grad/TanhGradMtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_4_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/add_4_grad/SumXtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
љ
=training/Adam/gradients/gradients/lstm/while/add_4_grad/Sum_1Sum?training/Adam/gradients/gradients/lstm/while/Tanh_grad/TanhGradOtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Atraining/Adam/gradients/gradients/lstm/while/add_4_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/add_4_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ2
М
Gtraining/Adam/gradients/gradients/lstm/while/BiasAdd_3_grad/BiasAddGradBiasAddGrad?training/Adam/gradients/gradients/lstm/while/add_6_grad/Reshape*
T0*
_output_shapes
:2
Ё
Atraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMulMatMulAtraining/Adam/gradients/gradients/lstm/while/add_6_grad/Reshape_1Ltraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
transpose_b(*
T0
С
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*-
_class#
!loc:@lstm/while/strided_slice_3*
dtype0
ї
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/Const*
_output_shapes
:*
	elem_type0*-
_class#
!loc:@lstm/while/strided_slice_3

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
Ѕ
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/Enterlstm/while/strided_slice_3&^training/Adam/gradients/gradients/Add*
_output_shapes

:22*
swap_memory(*
T0

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

:22*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/add_6_grad/Reshape_1*
T0*
_output_shapes

:22*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_7*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/Const*#
_class
loc:@lstm/while/mul_7*
_output_shapes
:*
	elem_type0

Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/Enterlstm/while/mul_7&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
}
=training/Adam/gradients/gradients/lstm/while/Add_3_grad/ShapeShapelstm/while/Mul_9*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape_1Shapelstm/while/Const_5*
T0*
_output_shapes
: 
а
Mtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Const*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape*
_output_shapes
:
Ў
Straining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Xtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape_1
И
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
р
[training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
: *
swap_memory(*
T0

Ztraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

;training/Adam/gradients/gradients/lstm/while/Add_3_grad/SumSumQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Add_3_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/Add_3_grad/SumXtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/Add_3_grad/Sum_1SumQtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Atraining/Adam/gradients/gradients/lstm/while/Add_3_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/Add_3_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPopV2_1*
_output_shapes
: *
T0
}
=training/Adam/gradients/gradients/lstm/while/Add_1_grad/ShapeShapelstm/while/Mul_8*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape_1Shapelstm/while/Const_3*
T0*
_output_shapes
: 
а
Mtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
є
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
р
[training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
: *
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0

;training/Adam/gradients/gradients/lstm/while/Add_1_grad/SumSumOtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Add_1_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/Add_1_grad/SumXtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/Add_1_grad/Sum_1SumOtraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/Add_1_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/Add_1_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
_output_shapes
: *
T0
М
Gtraining/Adam/gradients/gradients/lstm/while/BiasAdd_2_grad/BiasAddGradBiasAddGrad?training/Adam/gradients/gradients/lstm/while/add_4_grad/Reshape*
T0*
_output_shapes
:2
Ё
Atraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMulMatMulAtraining/Adam/gradients/gradients/lstm/while/add_4_grad/Reshape_1Ltraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2*
transpose_b(
С
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*-
_class#
!loc:@lstm/while/strided_slice_2*
dtype0*
_output_shapes
: 
ї
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/Const*
	elem_type0*-
_class#
!loc:@lstm/while/strided_slice_2*
_output_shapes
:

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
Ѕ
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/Enterlstm/while/strided_slice_2&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes

:22*
swap_memory(

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

:22*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/add_4_grad/Reshape_1*
T0*
_output_shapes

:22*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_6*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/Const*#
_class
loc:@lstm/while/mul_6*
_output_shapes
:*
	elem_type0

Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/Enterlstm/while/mul_6&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ2
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

Atraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMulMatMul?training/Adam/gradients/gradients/lstm/while/add_6_grad/ReshapeLtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_b(
З
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/split*
dtype0*
_output_shapes
: 
э
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/Const*#
_class
loc:@lstm/while/split*
_output_shapes
:*
	elem_type0

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Mtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/Enterlstm/while/split:3&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes

: 2*
swap_memory(

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

: 2*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/add_6_grad/Reshape*
_output_shapes

: 2*
transpose_a(*
T0
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_3*
dtype0
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/Const*#
_class
loc:@lstm/while/mul_3*
_output_shapes
:*
	elem_type0

Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/Enterlstm/while/mul_3&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ *
swap_memory(

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ 
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

=training/Adam/gradients/gradients/lstm/while/mul_7_grad/ShapeShapelstm/while/Identity_2*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape_1Shapelstm/while/mul_7/Enter^lstm/while/Identity*
_output_shapes
:*
T0
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Xtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape_1*
dtype0
И
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
;training/Adam/gradients/gradients/lstm/while/mul_7_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2

Atraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul/EnterEnterlstm/dropout_7/mul_1*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
ё
;training/Adam/gradients/gradients/lstm/while/mul_7_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_7_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_7_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_7_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0

=training/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ2
И
Ctraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*(
_class
loc:@lstm/while/Identity_2*
dtype0*
_output_shapes
: 
ъ
Ctraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/f_accStackV2Ctraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*(
_class
loc:@lstm/while/Identity_2

Ctraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ё
Itraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPushV2StackPushV2Ctraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/Enterlstm/while/Identity_2&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Htraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2
StackPopV2Ntraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ2
Л
Ntraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ї
=training/Adam/gradients/gradients/lstm/while/mul_7_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_7_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0
Р
Gtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/ShapeConst&^training/Adam/gradients/gradients/Sub*
valueB"2   Ш   *
dtype0*
_output_shapes
:
п
Rtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGradStridedSliceGradGtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/ShapeXtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/ConstZtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/Const_1Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/Const_2Ctraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes
:	2Ш
б
Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/Const_1Const&^training/Adam/gradients/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"        
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad/Const_2Const&^training/Adam/gradients/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
}
=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/ShapeShapelstm/while/add_2*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape_1Shapelstm/while/Const_4*
T0*
_output_shapes
: 
а
Mtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape*
dtype0
В
Straining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape_1*
dtype0
И
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
р
[training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
: *
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ј
;training/Adam/gradients/gradients/lstm/while/Mul_9_grad/MulMul?training/Adam/gradients/gradients/lstm/while/Add_3_grad/ReshapeAtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul/Const*'
_output_shapes
:џџџџџџџџџ2*
T0
Ў
Atraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
ё
;training/Adam/gradients/gradients/lstm/while/Mul_9_grad/SumSum;training/Adam/gradients/gradients/lstm/while/Mul_9_grad/MulMtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/Mul_9_grad/SumXtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/Add_3_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ2
Г
Ctraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/add_2*
dtype0*
_output_shapes
: 
х
Ctraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/f_accStackV2Ctraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*#
_class
loc:@lstm/while/add_2

Ctraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0

Itraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPushV2StackPushV2Ctraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/Enterlstm/while/add_2&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(

Htraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPopV2
StackPopV2Ntraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Л
Ntraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPopV2/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ї
=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Atraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
_output_shapes
: 
{
=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/ShapeShapelstm/while/add*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape_1Shapelstm/while/Const_2*
T0*
_output_shapes
: 
а
Mtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape
В
Straining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
м
Ytraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
р
[training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
: *
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
ј
;training/Adam/gradients/gradients/lstm/while/Mul_8_grad/MulMul?training/Adam/gradients/gradients/lstm/while/Add_1_grad/ReshapeAtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
Ў
Atraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
ё
;training/Adam/gradients/gradients/lstm/while/Mul_8_grad/SumSum;training/Adam/gradients/gradients/lstm/while/Mul_8_grad/MulMtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/Mul_8_grad/SumXtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/Add_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
Б
Ctraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*!
_class
loc:@lstm/while/add
у
Ctraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/f_accStackV2Ctraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/Const*!
_class
loc:@lstm/while/add*
_output_shapes
:*
	elem_type0

Ctraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(

Itraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPushV2StackPushV2Ctraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/Enterlstm/while/add&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Htraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPopV2
StackPopV2Ntraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Л
Ntraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPopV2/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ї
=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Atraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
_output_shapes
: 

Atraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMulMatMul?training/Adam/gradients/gradients/lstm/while/add_4_grad/ReshapeLtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPopV2*
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ 
З
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/split*
dtype0*
_output_shapes
: 
э
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/Const*#
_class
loc:@lstm/while/split*
_output_shapes
:*
	elem_type0

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0

Mtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/Enterlstm/while/split:2&^training/Adam/gradients/gradients/Add*
_output_shapes

: 2*
swap_memory(*
T0

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

: 2*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/add_4_grad/Reshape*
T0*
_output_shapes

: 2*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_2*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/Const*
_output_shapes
:*
	elem_type0*#
_class
loc:@lstm/while/mul_2

Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/Enterlstm/while/mul_2&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ *
swap_memory(

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ 
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

=training/Adam/gradients/gradients/lstm/while/mul_6_grad/ShapeShapelstm/while/Identity_2*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape_1Shapelstm/while/mul_6/Enter^lstm/while/Identity*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Const*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape*
_output_shapes
:
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Const_1*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape_1*
_output_shapes
:
В
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
;training/Adam/gradients/gradients/lstm/while/mul_6_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2

Atraining/Adam/gradients/gradients/lstm/while/mul_6_grad/Mul/EnterEnterlstm/dropout_6/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
;training/Adam/gradients/gradients/lstm/while/mul_6_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_6_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_6_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_6_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/mul_6_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ2
ї
=training/Adam/gradients/gradients/lstm/while/mul_6_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_6_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_6_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_6_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0
Р
Gtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/ShapeConst&^training/Adam/gradients/gradients/Sub*
valueB"2   Ш   *
dtype0*
_output_shapes
:
п
Rtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGradStridedSliceGradGtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/ShapeXtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/ConstZtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/Const_1Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/Const_2Ctraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes
:	2Ш
б
Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/ConstConst&^training/Adam/gradients/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"    d   
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGrad/Const_2Const&^training/Adam/gradients/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/mul_3_grad/ShapeShapelstm/while/TensorArrayReadV3*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape_1Shapelstm/while/mul_3/Enter^lstm/while/Identity*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
є
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Const_1*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape_1*
_output_shapes
:
В
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ztraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
;training/Adam/gradients/gradients/lstm/while/mul_3_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 

Atraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul/EnterEnterlstm/dropout_3/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
;training/Adam/gradients/gradients/lstm/while/mul_3_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_3_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_3_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_3_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ 

=training/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul*'
_output_shapes
:џџџџџџџџџ *
T0
П
Ctraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*/
_class%
#!loc:@lstm/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
ё
Ctraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/f_accStackV2Ctraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/Const*/
_class%
#!loc:@lstm/while/TensorArrayReadV3*
_output_shapes
:*
	elem_type0

Ctraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Itraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPushV2StackPushV2Ctraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/Enterlstm/while/TensorArrayReadV3&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ *
swap_memory(*
T0

Htraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2
StackPopV2Ntraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ *
	elem_type0
Л
Ntraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2/EnterEnterCtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ї
=training/Adam/gradients/gradients/lstm/while/mul_3_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_3_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ 

=training/Adam/gradients/gradients/lstm/while/add_2_grad/ShapeShapelstm/while/BiasAdd_1*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape_1Shapelstm/while/MatMul_5*
_output_shapes
:*
T0
а
Mtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape
В
Straining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape_1*
dtype0
И
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape_1
В
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ѕ
;training/Adam/gradients/gradients/lstm/while/add_2_grad/SumSum?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/add_2_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/add_2_grad/SumXtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
љ
=training/Adam/gradients/gradients/lstm/while/add_2_grad/Sum_1Sum?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/ReshapeOtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/add_2_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/add_2_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0
}
;training/Adam/gradients/gradients/lstm/while/add_grad/ShapeShapelstm/while/BiasAdd*
T0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/add_grad/Shape_1Shapelstm/while/MatMul_4*
T0*
_output_shapes
:
Ъ
Ktraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgsBroadcastGradientArgsVtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2Xtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ь
Qtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*N
_classD
B@loc:@training/Adam/gradients/gradients/lstm/while/add_grad/Shape*
dtype0*
_output_shapes
: 
Ќ
Qtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_accStackV2Qtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*N
_classD
B@loc:@training/Adam/gradients/gradients/lstm/while/add_grad/Shape
Њ
Qtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/EnterEnterQtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
ж
Wtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Qtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter;training/Adam/gradients/gradients/lstm/while/add_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Vtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2\training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
з
\training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterQtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
№
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_grad/Shape_1*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc_1StackV2Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Const_1*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/add_grad/Shape_1*
_output_shapes
:
Ў
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter_1EnterStraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter_1=training/Adam/gradients/gradients/lstm/while/add_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterStraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
9training/Adam/gradients/gradients/lstm/while/add_grad/SumSum?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/ReshapeKtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/add_grad/ReshapeReshape9training/Adam/gradients/gradients/lstm/while/add_grad/SumVtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2
ѕ
;training/Adam/gradients/gradients/lstm/while/add_grad/Sum_1Sum?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/ReshapeMtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/add_grad/Reshape_1Reshape;training/Adam/gradients/gradients/lstm/while/add_grad/Sum_1Xtraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0

=training/Adam/gradients/gradients/lstm/while/mul_2_grad/ShapeShapelstm/while/TensorArrayReadV3*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape_1Shapelstm/while/mul_2/Enter^lstm/while/Identity*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
п
`training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
њ
;training/Adam/gradients/gradients/lstm/while/mul_2_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 

Atraining/Adam/gradients/gradients/lstm/while/mul_2_grad/Mul/EnterEnterlstm/dropout_2/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
;training/Adam/gradients/gradients/lstm/while/mul_2_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_2_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_2_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_2_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ 

=training/Adam/gradients/gradients/lstm/while/mul_2_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ 
ї
=training/Adam/gradients/gradients/lstm/while/mul_2_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_2_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_2_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_2_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ *
T0
М
Gtraining/Adam/gradients/gradients/lstm/while/BiasAdd_1_grad/BiasAddGradBiasAddGrad?training/Adam/gradients/gradients/lstm/while/add_2_grad/Reshape*
T0*
_output_shapes
:2
Ё
Atraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMulMatMulAtraining/Adam/gradients/gradients/lstm/while/add_2_grad/Reshape_1Ltraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
transpose_b(*
T0
С
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*-
_class#
!loc:@lstm/while/strided_slice_1*
dtype0*
_output_shapes
: 
ї
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/Const*
	elem_type0*-
_class#
!loc:@lstm/while/strided_slice_1*
_output_shapes
:

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
Ѕ
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/Enterlstm/while/strided_slice_1&^training/Adam/gradients/gradients/Add*
_output_shapes

:22*
swap_memory(*
T0

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

:22*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/f_acc*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(*
parallel_iterations 

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/add_2_grad/Reshape_1*
T0*
_output_shapes

:22*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_5*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/Const*#
_class
loc:@lstm/while/mul_5*
_output_shapes
:*
	elem_type0

Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/Enterlstm/while/mul_5&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
И
Etraining/Adam/gradients/gradients/lstm/while/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/lstm/while/add_grad/Reshape*
T0*
_output_shapes
:2

Atraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMulMatMul?training/Adam/gradients/gradients/lstm/while/add_grad/Reshape_1Ltraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2*
transpose_b(
П
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*+
_class!
loc:@lstm/while/strided_slice*
dtype0*
_output_shapes
: 
ѕ
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/Const*+
_class!
loc:@lstm/while/strided_slice*
_output_shapes
:*
	elem_type0

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ѓ
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/Enterlstm/while/strided_slice&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes

:22*
swap_memory(

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

:22*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/add_grad/Reshape_1*
T0*
_output_shapes

:22*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_4*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/Const*
	elem_type0*#
_class
loc:@lstm/while/mul_4*
_output_shapes
:

Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/Enterlstm/while/mul_4&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ2*
swap_memory(*
T0

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ2*
	elem_type0
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0

Atraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMulMatMul?training/Adam/gradients/gradients/lstm/while/add_2_grad/ReshapeLtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_b(
З
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/split*
dtype0*
_output_shapes
: 
э
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/Const*
_output_shapes
:*
	elem_type0*#
_class
loc:@lstm/while/split

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Mtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/Enterlstm/while/split:1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes

: 2*
swap_memory(

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

: 2*
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/f_acc*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(*
parallel_iterations 

Ctraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1MatMulNtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/add_2_grad/Reshape*
T0*
_output_shapes

: 2*
transpose_a(
Й
Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/mul_1*
dtype0*
_output_shapes
: 
ё
Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/f_accStackV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/Const*
	elem_type0*#
_class
loc:@lstm/while/mul_1*
_output_shapes
:

Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
Ј
Otraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/Enterlstm/while/mul_1&^training/Adam/gradients/gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ *
swap_memory(

Ntraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2Ttraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ *
	elem_type0
Ч
Ttraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterItraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

=training/Adam/gradients/gradients/lstm/while/mul_5_grad/ShapeShapelstm/while/Identity_2*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape_1Shapelstm/while/mul_5/Enter^lstm/while/Identity*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
є
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape_1*
dtype0*
_output_shapes
: 
И
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0
т
[training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape_1&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Ztraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
њ
;training/Adam/gradients/gradients/lstm/while/mul_5_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2

Atraining/Adam/gradients/gradients/lstm/while/mul_5_grad/Mul/EnterEnterlstm/dropout_5/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
;training/Adam/gradients/gradients/lstm/while/mul_5_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_5_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_5_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_5_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ2*
T0

=training/Adam/gradients/gradients/lstm/while/mul_5_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ2
ї
=training/Adam/gradients/gradients/lstm/while/mul_5_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_5_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_5_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_5_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ2
Р
Gtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/ShapeConst&^training/Adam/gradients/gradients/Sub*
valueB"2   Ш   *
dtype0*
_output_shapes
:
п
Rtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGradStridedSliceGradGtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/ShapeXtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/ConstZtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/Const_1Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/Const_2Ctraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes
:	2Ш
б
Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB"    2   *
dtype0*
_output_shapes
:
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB"    d   *
dtype0*
_output_shapes
:
г
Ztraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGrad/Const_2Const&^training/Adam/gradients/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMulMatMul=training/Adam/gradients/gradients/lstm/while/add_grad/ReshapeJtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_b(
Е
Etraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*#
_class
loc:@lstm/while/split*
dtype0*
_output_shapes
: 
щ
Etraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/f_accStackV2Etraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/Const*
	elem_type0*#
_class
loc:@lstm/while/split*
_output_shapes
:

Etraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/EnterEnterEtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context

Ktraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPushV2StackPushV2Etraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/Enterlstm/while/split&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes

: 2*
swap_memory(

Jtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPopV2
StackPopV2Ptraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes

: 2*
	elem_type0
П
Ptraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPopV2/EnterEnterEtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(

Atraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1MatMulLtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPopV2=training/Adam/gradients/gradients/lstm/while/add_grad/Reshape*
T0*
_output_shapes

: 2*
transpose_a(
Е
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/ConstConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*!
_class
loc:@lstm/while/mul*
dtype0
ы
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/f_accStackV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/Const*!
_class
loc:@lstm/while/mul*
_output_shapes
:*
	elem_type0

Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/f_acc*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ђ
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPushV2StackPushV2Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/Enterlstm/while/mul&^training/Adam/gradients/gradients/Add*'
_output_shapes
:џџџџџџџџџ *
swap_memory(*
T0

Ltraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Rtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*'
_output_shapes
:џџџџџџџџџ *
	elem_type0
У
Rtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPopV2/EnterEnterGtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
х
@training/Adam/gradients/gradients/lstm/while/split_1_grad/concatConcatV2Etraining/Adam/gradients/gradients/lstm/while/BiasAdd_grad/BiasAddGradGtraining/Adam/gradients/gradients/lstm/while/BiasAdd_1_grad/BiasAddGradGtraining/Adam/gradients/gradients/lstm/while/BiasAdd_2_grad/BiasAddGradGtraining/Adam/gradients/gradients/lstm/while/BiasAdd_3_grad/BiasAddGradFtraining/Adam/gradients/gradients/lstm/while/split_1_grad/concat/Const*
_output_shapes	
:Ш*
T0*
N
А
Ftraining/Adam/gradients/gradients/lstm/while/split_1_grad/concat/ConstConst&^training/Adam/gradients/gradients/Sub*
_output_shapes
: *
value	B : *
dtype0

=training/Adam/gradients/gradients/lstm/while/mul_4_grad/ShapeShapelstm/while/Identity_2*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape_1Shapelstm/while/mul_4/Enter^lstm/while/Identity*
T0*
_output_shapes
:
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape
В
Straining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Xtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape_1
И
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Const_1*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape_1*
_output_shapes
:*
	elem_type0
В
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
т
[training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
п
`training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
;training/Adam/gradients/gradients/lstm/while/mul_4_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2

Atraining/Adam/gradients/gradients/lstm/while/mul_4_grad/Mul/EnterEnterlstm/dropout_4/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ё
;training/Adam/gradients/gradients/lstm/while/mul_4_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_4_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_4_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_4_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ2

=training/Adam/gradients/gradients/lstm/while/mul_4_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ2
ї
=training/Adam/gradients/gradients/lstm/while/mul_4_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_4_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_4_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_4_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ2*
T0
О
Etraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/ShapeConst&^training/Adam/gradients/gradients/Sub*
valueB"2   Ш   *
dtype0*
_output_shapes
:
е
Ptraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGradStridedSliceGradEtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/ShapeVtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/ConstXtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/Const_1Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/Const_2Ctraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1*
end_mask*
_output_shapes
:	2Ш*

begin_mask*
Index0*
T0
Я
Vtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/ConstConst&^training/Adam/gradients/gradients/Sub*
valueB"        *
dtype0*
_output_shapes
:
б
Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/Const_1Const&^training/Adam/gradients/gradients/Sub*
valueB"    2   *
dtype0*
_output_shapes
:
б
Xtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad/Const_2Const&^training/Adam/gradients/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/mul_1_grad/ShapeShapelstm/while/TensorArrayReadV3*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape_1Shapelstm/while/mul_1/Enter^lstm/while/Identity*
_output_shapes
:*
T0
а
Mtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsXtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2Ztraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Straining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_accStackV2Straining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Const*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape*
_output_shapes
:*
	elem_type0
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter=training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape_1*
dtype0
И
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape_1
В
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter_1EnterUtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
т
[training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter_1?training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Ztraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2`training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
	elem_type0*
_output_shapes
:
п
`training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterUtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
њ
;training/Adam/gradients/gradients/lstm/while/mul_1_grad/MulMulAtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMulAtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/Mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0

Atraining/Adam/gradients/gradients/lstm/while/mul_1_grad/Mul/EnterEnterlstm/dropout_1/mul_1*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
ё
;training/Adam/gradients/gradients/lstm/while/mul_1_grad/SumSum;training/Adam/gradients/gradients/lstm/while/mul_1_grad/MulMtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

?training/Adam/gradients/gradients/lstm/while/mul_1_grad/ReshapeReshape;training/Adam/gradients/gradients/lstm/while/mul_1_grad/SumXtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ 

=training/Adam/gradients/gradients/lstm/while/mul_1_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ 
ї
=training/Adam/gradients/gradients/lstm/while/mul_1_grad/Sum_1Sum=training/Adam/gradients/gradients/lstm/while/mul_1_grad/Mul_1Otraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Atraining/Adam/gradients/gradients/lstm/while/mul_1_grad/Reshape_1Reshape=training/Adam/gradients/gradients/lstm/while/mul_1_grad/Sum_1Ztraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ *
T0

;training/Adam/gradients/gradients/lstm/while/mul_grad/ShapeShapelstm/while/TensorArrayReadV3*
T0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/mul_grad/Shape_1Shapelstm/while/mul/Enter^lstm/while/Identity*
_output_shapes
:*
T0
Ъ
Ktraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgsBroadcastGradientArgsVtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2Xtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ь
Qtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*N
_classD
B@loc:@training/Adam/gradients/gradients/lstm/while/mul_grad/Shape*
dtype0*
_output_shapes
: 
Ќ
Qtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_accStackV2Qtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*N
_classD
B@loc:@training/Adam/gradients/gradients/lstm/while/mul_grad/Shape
Њ
Qtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/EnterEnterQtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
ж
Wtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Qtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter;training/Adam/gradients/gradients/lstm/while/mul_grad/Shape&^training/Adam/gradients/gradients/Add*
_output_shapes
:*
swap_memory(*
T0

Vtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2\training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
з
\training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterQtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
is_constant(
№
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_grad/Shape_1*
dtype0*
_output_shapes
: 
В
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc_1StackV2Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*P
_classF
DBloc:@training/Adam/gradients/gradients/lstm/while/mul_grad/Shape_1*
_output_shapes
:
Ў
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter_1EnterStraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
м
Ytraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter_1=training/Adam/gradients/gradients/lstm/while/mul_grad/Shape_1&^training/Adam/gradients/gradients/Add*
T0*
_output_shapes
:*
swap_memory(

Xtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter&^training/Adam/gradients/gradients/Sub*
_output_shapes
:*
	elem_type0
л
^training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterStraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
є
9training/Adam/gradients/gradients/lstm/while/mul_grad/MulMul?training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul?training/Adam/gradients/gradients/lstm/while/mul_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 

?training/Adam/gradients/gradients/lstm/while/mul_grad/Mul/EnterEnterlstm/dropout/mul_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
ы
9training/Adam/gradients/gradients/lstm/while/mul_grad/SumSum9training/Adam/gradients/gradients/lstm/while/mul_grad/MulKtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

=training/Adam/gradients/gradients/lstm/while/mul_grad/ReshapeReshape9training/Adam/gradients/gradients/lstm/while/mul_grad/SumVtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ 
џ
;training/Adam/gradients/gradients/lstm/while/mul_grad/Mul_1MulHtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPopV2?training/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ *
T0
ё
;training/Adam/gradients/gradients/lstm/while/mul_grad/Sum_1Sum;training/Adam/gradients/gradients/lstm/while/mul_grad/Mul_1Mtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

?training/Adam/gradients/gradients/lstm/while/mul_grad/Reshape_1Reshape;training/Adam/gradients/gradients/lstm/while/mul_grad/Sum_1Xtraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ *
T0
е
>training/Adam/gradients/gradients/lstm/while/split_grad/concatConcatV2Atraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1Ctraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1Ctraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1Ctraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1Dtraining/Adam/gradients/gradients/lstm/while/split_grad/concat/Const*
T0*
N*
_output_shapes
:	 Ш
Ў
Dtraining/Adam/gradients/gradients/lstm/while/split_grad/concat/ConstConst&^training/Adam/gradients/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
У
(training/Adam/gradients/gradients/AddN_3AddN?training/Adam/gradients/gradients/lstm/while/mul_7_grad/Reshape?training/Adam/gradients/gradients/lstm/while/mul_6_grad/Reshape?training/Adam/gradients/gradients/lstm/while/mul_5_grad/Reshape?training/Adam/gradients/gradients/lstm/while/mul_4_grad/Reshape*
T0*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_7_grad/Reshape*
N*'
_output_shapes
:џџџџџџџџџ2
С
(training/Adam/gradients/gradients/AddN_4AddN?training/Adam/gradients/gradients/lstm/while/mul_3_grad/Reshape?training/Adam/gradients/gradients/lstm/while/mul_2_grad/Reshape?training/Adam/gradients/gradients/lstm/while/mul_1_grad/Reshape=training/Adam/gradients/gradients/lstm/while/mul_grad/Reshape*R
_classH
FDloc:@training/Adam/gradients/gradients/lstm/while/mul_3_grad/Reshape*
N*'
_output_shapes
:џџџџџџџџџ *
T0

etraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ktraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Entermtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1&^training/Adam/gradients/gradients/Sub*-
source#!training/Adam/gradients/gradients*5
_class+
)'loc:@lstm/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
м
ktraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm/TensorArray*
T0*5
_class+
)'loc:@lstm/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

mtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*5
_class+
)'loc:@lstm/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context

atraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentitymtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1f^training/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*5
_class+
)'loc:@lstm/while/TensorArrayReadV3/Enter

gtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3etraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3rtraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2(training/Adam/gradients/gradients/AddN_4atraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Ѓ
Ttraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_accConst*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
Т
Vtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_1EnterTtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc*
parallel_iterations *
_output_shapes	
:Ш*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
Ц
Vtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_2MergeVtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_1\training/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:Ш: 

Utraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/SwitchSwitchVtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_2+training/Adam/gradients/gradients/b_count_2*
T0*"
_output_shapes
:Ш:Ш

Rtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/AddAddWtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/Switch:1@training/Adam/gradients/gradients/lstm/while/split_1_grad/concat*
T0*
_output_shapes	
:Ш
ч
\training/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/NextIterationNextIterationRtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/Add*
T0*
_output_shapes	
:Ш
л
Vtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_3ExitUtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/Switch*
_output_shapes	
:Ш*
T0
З
Jtraining/Adam/gradients/gradients/lstm/while/Switch_2_grad_1/NextIterationNextIteration(training/Adam/gradients/gradients/AddN_3*'
_output_shapes
:џџџџџџџџџ2*
T0

(training/Adam/gradients/gradients/AddN_5AddNRtraining/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGradRtraining/Adam/gradients/gradients/lstm/while/strided_slice_2_grad/StridedSliceGradRtraining/Adam/gradients/gradients/lstm/while/strided_slice_1_grad/StridedSliceGradPtraining/Adam/gradients/gradients/lstm/while/strided_slice_grad/StridedSliceGrad*
_output_shapes
:	2Ш*
T0*e
_class[
YWloc:@training/Adam/gradients/gradients/lstm/while/strided_slice_3_grad/StridedSliceGrad*
N
Ѓ
Ltraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_accConst*
_output_shapes
:	2Ш*
valueB	2Ш*    *
dtype0
Ж
Ntraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_1EnterLtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc*
parallel_iterations *
_output_shapes
:	2Ш*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0
В
Ntraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_2MergeNtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_1Ttraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/NextIteration*
N*!
_output_shapes
:	2Ш: *
T0

Mtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/SwitchSwitchNtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_2+training/Adam/gradients/gradients/b_count_2*
T0**
_output_shapes
:	2Ш:	2Ш
і
Jtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/AddAddOtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/Switch:1(training/Adam/gradients/gradients/AddN_5*
_output_shapes
:	2Ш*
T0
л
Ttraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/NextIterationNextIterationJtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/Add*
_output_shapes
:	2Ш*
T0
Я
Ntraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_3ExitMtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/Switch*
_output_shapes
:	2Ш*
T0

Qtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Straining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterQtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc*
_output_shapes
: *J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context*
T0*
parallel_iterations 
И
Straining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeStraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Ytraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 

Rtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchStraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_2+training/Adam/gradients/gradients/b_count_2*
_output_shapes
: : *
T0
Ж
Otraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/AddAddTtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/Switch:1gtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
м
Ytraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationOtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
а
Straining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitRtraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
Љ
Rtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_accConst*
valueB	 Ш*    *
dtype0*
_output_shapes
:	 Ш
Т
Ttraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_1EnterRtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes
:	 Ш*J

frame_name<:training/Adam/gradients/gradients/lstm/while/while_context
Ф
Ttraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_2MergeTtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_1Ztraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/NextIteration*
T0*
N*!
_output_shapes
:	 Ш: 

Straining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/SwitchSwitchTtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_2+training/Adam/gradients/gradients/b_count_2*
T0**
_output_shapes
:	 Ш:	 Ш

Ptraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/AddAddUtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/Switch:1>training/Adam/gradients/gradients/lstm/while/split_grad/concat*
_output_shapes
:	 Ш*
T0
ч
Ztraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/NextIterationNextIterationPtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/Add*
T0*
_output_shapes
:	 Ш
л
Ttraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_3ExitStraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/Switch*
T0*
_output_shapes
:	 Ш
ї
training/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm/TensorArrayStraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*-
source#!training/Adam/gradients/gradients*#
_class
loc:@lstm/TensorArray*
_output_shapes

:: 
И
training/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityStraining/Adam/gradients/gradients/lstm/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^training/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*#
_class
loc:@lstm/TensorArray*
_output_shapes
: *
T0
§
ztraining/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3training/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3lstm/TensorArrayUnstack/rangetraining/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:Шџџџџџџџџџ 

Gtraining/Adam/gradients/gradients/lstm/transpose_grad/InvertPermutationInvertPermutationlstm/transpose/perm*
_output_shapes
:
Ш
?training/Adam/gradients/gradients/lstm/transpose_grad/transpose	Transposeztraining/Adam/gradients/gradients/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Gtraining/Adam/gradients/gradients/lstm/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:џџџџџџџџџШ 

Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/ShapeShapespatial_dropout1d/dropout/mul*
_output_shapes
:*
T0

Ntraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Shape_1Shapespatial_dropout1d/dropout/Cast*
T0*
_output_shapes
:
Ч
\training/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/ShapeNtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
щ
Jtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/MulMul?training/Adam/gradients/gradients/lstm/transpose_grad/transposespatial_dropout1d/dropout/Cast*,
_output_shapes
:џџџџџџџџџШ *
T0

Jtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/SumSumJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Mul\training/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Њ
Ntraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/ReshapeReshapeJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/SumLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Shape*
T0*,
_output_shapes
:џџџџџџџџџШ 
ъ
Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Mul_1Mulspatial_dropout1d/dropout/mul?training/Adam/gradients/gradients/lstm/transpose_grad/transpose*,
_output_shapes
:џџџџџџџџџШ *
T0
Є
Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Sum_1SumLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Mul_1^training/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
И
Ptraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Reshape_1ReshapeLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Sum_1Ntraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Shape_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Jtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/ShapeShape%embedding/embedding_lookup/Identity_1*
_output_shapes
:*
T0

Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Shape_1Shape!spatial_dropout1d/dropout/truediv*
T0*
_output_shapes
: 
С
Ztraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/ShapeLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
љ
Htraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/MulMulNtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Reshape!spatial_dropout1d/dropout/truediv*,
_output_shapes
:џџџџџџџџџШ *
T0

Htraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/SumSumHtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/MulZtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Є
Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/ReshapeReshapeHtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/SumJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Shape*
T0*,
_output_shapes
:џџџџџџџџџШ 
џ
Jtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Mul_1Mul%embedding/embedding_lookup/Identity_1Ntraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_1_grad/Reshape*
T0*,
_output_shapes
:џџџџџџџџџШ 

Jtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Sum_1SumJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Mul_1\training/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Ntraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Reshape_1ReshapeJtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Sum_1Ltraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0

Gtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ConstConst*
valueB"      *
dtype0*
_output_shapes
:

Ftraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/SizeSizeembedding/Cast*
_output_shapes
: *
T0

Ptraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 

Ltraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDimsFtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/SizePtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
T0*
_output_shapes
:

Utraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Ё
Wtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
Otraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_sliceStridedSliceGtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ConstUtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stackWtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Wtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
T0*
Index0*
end_mask*
_output_shapes
:

Mtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
№
Htraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/concatConcatV2Ltraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ExpandDimsOtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/strided_sliceMtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:

Itraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ReshapeReshapeLtraining/Adam/gradients/gradients/spatial_dropout1d/dropout/mul_grad/ReshapeHtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/concat*
T0*'
_output_shapes
:џџџџџџџџџ 
т
Ktraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeembedding/CastLtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ

.training/Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: 
Ѕ
training/Adam/beta_1VarHandleOp*%
shared_nametraining/Adam/beta_1*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: *
shape: 
y
5training/Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 

training/Adam/beta_1/AssignAssignVariableOptraining/Adam/beta_1.training/Adam/beta_1/Initializer/initial_value*
dtype0
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

.training/Adam/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *wО?*'
_class
loc:@training/Adam/beta_2*
dtype0
Ѕ
training/Adam/beta_2VarHandleOp*%
shared_nametraining/Adam/beta_2*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: *
shape: 
y
5training/Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 

training/Adam/beta_2/AssignAssignVariableOptraining/Adam/beta_2.training/Adam/beta_2/Initializer/initial_value*
dtype0
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 

-training/Adam/decay/Initializer/initial_valueConst*
valueB
 *    *&
_class
loc:@training/Adam/decay*
dtype0*
_output_shapes
: 
Ђ
training/Adam/decayVarHandleOp*
_output_shapes
: *
shape: *$
shared_nametraining/Adam/decay*&
_class
loc:@training/Adam/decay*
dtype0
w
4training/Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/decay*
_output_shapes
: 

training/Adam/decay/AssignAssignVariableOptraining/Adam/decay-training/Adam/decay/Initializer/initial_value*
dtype0
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
dtype0*
_output_shapes
: 
Њ
5training/Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: 
К
training/Adam/learning_rateVarHandleOp*,
shared_nametraining/Adam/learning_rate*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: *
shape: 

<training/Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 

"training/Adam/learning_rate/AssignAssignVariableOptraining/Adam/learning_rate5training/Adam/learning_rate/Initializer/initial_value*
dtype0

/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 
Р
Ftraining/Adam/embedding/embeddings/m/Initializer/zeros/shape_as_tensorConst*'
_class
loc:@embedding/embeddings*
valueB"      *
dtype0*
_output_shapes
:
Њ
<training/Adam/embedding/embeddings/m/Initializer/zeros/ConstConst*'
_class
loc:@embedding/embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 

6training/Adam/embedding/embeddings/m/Initializer/zerosFillFtraining/Adam/embedding/embeddings/m/Initializer/zeros/shape_as_tensor<training/Adam/embedding/embeddings/m/Initializer/zeros/Const*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
Ю
$training/Adam/embedding/embeddings/mVarHandleOp*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: *
shape:	 *5
shared_name&$training/Adam/embedding/embeddings/m
Т
Etraining/Adam/embedding/embeddings/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/Adam/embedding/embeddings/m*'
_class
loc:@embedding/embeddings*
_output_shapes
: 
Њ
+training/Adam/embedding/embeddings/m/AssignAssignVariableOp$training/Adam/embedding/embeddings/m6training/Adam/embedding/embeddings/m/Initializer/zeros*
dtype0
Ч
8training/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp$training/Adam/embedding/embeddings/m*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:	 
Ў
=training/Adam/lstm/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@lstm/kernel*
valueB"    Ш   *
dtype0*
_output_shapes
:

3training/Adam/lstm/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@lstm/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
-training/Adam/lstm/kernel/m/Initializer/zerosFill=training/Adam/lstm/kernel/m/Initializer/zeros/shape_as_tensor3training/Adam/lstm/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш
Г
training/Adam/lstm/kernel/mVarHandleOp*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: *
shape:	 Ш*,
shared_nametraining/Adam/lstm/kernel/m
Ї
<training/Adam/lstm/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/lstm/kernel/m*
_class
loc:@lstm/kernel*
_output_shapes
: 

"training/Adam/lstm/kernel/m/AssignAssignVariableOptraining/Adam/lstm/kernel/m-training/Adam/lstm/kernel/m/Initializer/zeros*
dtype0
Ќ
/training/Adam/lstm/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/lstm/kernel/m*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:	 Ш
Т
Gtraining/Adam/lstm/recurrent_kernel/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@lstm/recurrent_kernel*
valueB"2   Ш   *
dtype0*
_output_shapes
:
Ќ
=training/Adam/lstm/recurrent_kernel/m/Initializer/zeros/ConstConst*(
_class
loc:@lstm/recurrent_kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

7training/Adam/lstm/recurrent_kernel/m/Initializer/zerosFillGtraining/Adam/lstm/recurrent_kernel/m/Initializer/zeros/shape_as_tensor=training/Adam/lstm/recurrent_kernel/m/Initializer/zeros/Const*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
б
%training/Adam/lstm/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
shape:	2Ш*6
shared_name'%training/Adam/lstm/recurrent_kernel/m*(
_class
loc:@lstm/recurrent_kernel*
dtype0
Х
Ftraining/Adam/lstm/recurrent_kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp%training/Adam/lstm/recurrent_kernel/m*
_output_shapes
: *(
_class
loc:@lstm/recurrent_kernel
­
,training/Adam/lstm/recurrent_kernel/m/AssignAssignVariableOp%training/Adam/lstm/recurrent_kernel/m7training/Adam/lstm/recurrent_kernel/m/Initializer/zeros*
dtype0
Ъ
9training/Adam/lstm/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp%training/Adam/lstm/recurrent_kernel/m*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш

+training/Adam/lstm/bias/m/Initializer/zerosConst*
_class
loc:@lstm/bias*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
Љ
training/Adam/lstm/bias/mVarHandleOp**
shared_nametraining/Adam/lstm/bias/m*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: *
shape:Ш
Ё
:training/Adam/lstm/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/lstm/bias/m*
_output_shapes
: *
_class
loc:@lstm/bias

 training/Adam/lstm/bias/m/AssignAssignVariableOptraining/Adam/lstm/bias/m+training/Adam/lstm/bias/m/Initializer/zeros*
dtype0
Ђ
-training/Adam/lstm/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/lstm/bias/m*
_output_shapes	
:Ш*
_class
loc:@lstm/bias*
dtype0
Є
.training/Adam/dense/kernel/m/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB2*    *
dtype0*
_output_shapes

:2
Е
training/Adam/dense/kernel/mVarHandleOp*-
shared_nametraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: *
shape
:2
Њ
=training/Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
_output_shapes
: 

#training/Adam/dense/kernel/m/AssignAssignVariableOptraining/Adam/dense/kernel/m.training/Adam/dense/kernel/m/Initializer/zeros*
dtype0
Ў
0training/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:2

,training/Adam/dense/bias/m/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@dense/bias*
valueB*    *
dtype0
Ћ
training/Adam/dense/bias/mVarHandleOp*
shape:*+
shared_nametraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Є
;training/Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
_output_shapes
: 

!training/Adam/dense/bias/m/AssignAssignVariableOptraining/Adam/dense/bias/m,training/Adam/dense/bias/m/Initializer/zeros*
dtype0
Є
.training/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Р
Ftraining/Adam/embedding/embeddings/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*'
_class
loc:@embedding/embeddings*
valueB"      *
dtype0
Њ
<training/Adam/embedding/embeddings/v/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings*
valueB
 *    

6training/Adam/embedding/embeddings/v/Initializer/zerosFillFtraining/Adam/embedding/embeddings/v/Initializer/zeros/shape_as_tensor<training/Adam/embedding/embeddings/v/Initializer/zeros/Const*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 *
T0
Ю
$training/Adam/embedding/embeddings/vVarHandleOp*
shape:	 *5
shared_name&$training/Adam/embedding/embeddings/v*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
Т
Etraining/Adam/embedding/embeddings/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/Adam/embedding/embeddings/v*
_output_shapes
: *'
_class
loc:@embedding/embeddings
Њ
+training/Adam/embedding/embeddings/v/AssignAssignVariableOp$training/Adam/embedding/embeddings/v6training/Adam/embedding/embeddings/v/Initializer/zeros*
dtype0
Ч
8training/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp$training/Adam/embedding/embeddings/v*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:	 
Ў
=training/Adam/lstm/kernel/v/Initializer/zeros/shape_as_tensorConst*
_class
loc:@lstm/kernel*
valueB"    Ш   *
dtype0*
_output_shapes
:

3training/Adam/lstm/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@lstm/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
-training/Adam/lstm/kernel/v/Initializer/zerosFill=training/Adam/lstm/kernel/v/Initializer/zeros/shape_as_tensor3training/Adam/lstm/kernel/v/Initializer/zeros/Const*
_output_shapes
:	 Ш*
T0*
_class
loc:@lstm/kernel
Г
training/Adam/lstm/kernel/vVarHandleOp*,
shared_nametraining/Adam/lstm/kernel/v*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: *
shape:	 Ш
Ї
<training/Adam/lstm/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/lstm/kernel/v*
_class
loc:@lstm/kernel*
_output_shapes
: 

"training/Adam/lstm/kernel/v/AssignAssignVariableOptraining/Adam/lstm/kernel/v-training/Adam/lstm/kernel/v/Initializer/zeros*
dtype0
Ќ
/training/Adam/lstm/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/lstm/kernel/v*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:	 Ш
Т
Gtraining/Adam/lstm/recurrent_kernel/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@lstm/recurrent_kernel*
valueB"2   Ш   *
dtype0*
_output_shapes
:
Ќ
=training/Adam/lstm/recurrent_kernel/v/Initializer/zeros/ConstConst*(
_class
loc:@lstm/recurrent_kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

7training/Adam/lstm/recurrent_kernel/v/Initializer/zerosFillGtraining/Adam/lstm/recurrent_kernel/v/Initializer/zeros/shape_as_tensor=training/Adam/lstm/recurrent_kernel/v/Initializer/zeros/Const*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
б
%training/Adam/lstm/recurrent_kernel/vVarHandleOp*
shape:	2Ш*6
shared_name'%training/Adam/lstm/recurrent_kernel/v*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
Х
Ftraining/Adam/lstm/recurrent_kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp%training/Adam/lstm/recurrent_kernel/v*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
: 
­
,training/Adam/lstm/recurrent_kernel/v/AssignAssignVariableOp%training/Adam/lstm/recurrent_kernel/v7training/Adam/lstm/recurrent_kernel/v/Initializer/zeros*
dtype0
Ъ
9training/Adam/lstm/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp%training/Adam/lstm/recurrent_kernel/v*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш

+training/Adam/lstm/bias/v/Initializer/zerosConst*
_class
loc:@lstm/bias*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
Љ
training/Adam/lstm/bias/vVarHandleOp*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: *
shape:Ш**
shared_nametraining/Adam/lstm/bias/v
Ё
:training/Adam/lstm/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/lstm/bias/v*
_class
loc:@lstm/bias*
_output_shapes
: 

 training/Adam/lstm/bias/v/AssignAssignVariableOptraining/Adam/lstm/bias/v+training/Adam/lstm/bias/v/Initializer/zeros*
dtype0
Ђ
-training/Adam/lstm/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/lstm/bias/v*
_output_shapes	
:Ш*
_class
loc:@lstm/bias*
dtype0
Є
.training/Adam/dense/kernel/v/Initializer/zerosConst*
dtype0*
_output_shapes

:2*
_class
loc:@dense/kernel*
valueB2*    
Е
training/Adam/dense/kernel/vVarHandleOp*
shape
:2*-
shared_nametraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Њ
=training/Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 

#training/Adam/dense/kernel/v/AssignAssignVariableOptraining/Adam/dense/kernel/v.training/Adam/dense/kernel/v/Initializer/zeros*
dtype0
Ў
0training/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:2

,training/Adam/dense/bias/v/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@dense/bias*
valueB*    *
dtype0
Ћ
training/Adam/dense/bias/vVarHandleOp*
shape:*+
shared_nametraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Є
;training/Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
_output_shapes
: 

!training/Adam/dense/bias/v/AssignAssignVariableOptraining/Adam/dense/bias/v,training/Adam/dense/bias/v/Initializer/zeros*
dtype0
Є
.training/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
y
%training/Adam/Identity/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 
j
training/Adam/IdentityIdentity%training/Adam/Identity/ReadVariableOp*
_output_shapes
: *
T0
Y
training/Adam/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
U
training/Adam/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
n
training/Adam/addAddV2training/Adam/ReadVariableOptraining/Adam/add/y*
T0	*
_output_shapes
: 
]
training/Adam/CastCasttraining/Adam/add*

SrcT0	*
_output_shapes
: *

DstT0
t
'training/Adam/Identity_1/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
n
training/Adam/Identity_1Identity'training/Adam/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
t
'training/Adam/Identity_2/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/Identity_2Identity'training/Adam/Identity_2/ReadVariableOp*
_output_shapes
: *
T0
g
training/Adam/PowPowtraining/Adam/Identity_1training/Adam/Cast*
T0*
_output_shapes
: 
i
training/Adam/Pow_1Powtraining/Adam/Identity_2training/Adam/Cast*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
c
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
N
training/Adam/SqrtSqrttraining/Adam/sub*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
e
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
h
training/Adam/mulMultraining/Adam/Identitytraining/Adam/truediv*
_output_shapes
: *
T0
X
training/Adam/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/Identity_1*
T0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/Identity_2*
_output_shapes
: *
T0
ђ
5training/Adam/Adam/update_embedding/embeddings/UniqueUniqueKtraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/Reshape_1*
T0*'
_class
loc:@embedding/embeddings*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
4training/Adam/Adam/update_embedding/embeddings/ShapeShape5training/Adam/Adam/update_embedding/embeddings/Unique*
_output_shapes
:*
T0*'
_class
loc:@embedding/embeddings
Е
Btraining/Adam/Adam/update_embedding/embeddings/strided_slice/stackConst*
valueB: *'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:
З
Dtraining/Adam/Adam/update_embedding/embeddings/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:*'
_class
loc:@embedding/embeddings
З
Dtraining/Adam/Adam/update_embedding/embeddings/strided_slice/stack_2Const*
valueB:*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:
С
<training/Adam/Adam/update_embedding/embeddings/strided_sliceStridedSlice4training/Adam/Adam/update_embedding/embeddings/ShapeBtraining/Adam/Adam/update_embedding/embeddings/strided_slice/stackDtraining/Adam/Adam/update_embedding/embeddings/strided_slice/stack_1Dtraining/Adam/Adam/update_embedding/embeddings/strided_slice/stack_2*
Index0*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
: *
shrink_axis_mask

Atraining/Adam/Adam/update_embedding/embeddings/UnsortedSegmentSumUnsortedSegmentSumItraining/Adam/gradients/gradients/embedding/embedding_lookup_grad/Reshape7training/Adam/Adam/update_embedding/embeddings/Unique:1<training/Adam/Adam/update_embedding/embeddings/strided_slice*'
_output_shapes
:џџџџџџџџџ *
Tindices0*
T0*'
_class
loc:@embedding/embeddings
ь
2training/Adam/Adam/update_embedding/embeddings/mulMulAtraining/Adam/Adam/update_embedding/embeddings/UnsortedSegmentSumtraining/Adam/sub_2*
T0*'
_class
loc:@embedding/embeddings*'
_output_shapes
:џџџџџџџџџ 
Ѓ
=training/Adam/Adam/update_embedding/embeddings/ReadVariableOpReadVariableOp$training/Adam/embedding/embeddings/m*
dtype0*
_output_shapes
:	 
ч
4training/Adam/Adam/update_embedding/embeddings/mul_1Mul=training/Adam/Adam/update_embedding/embeddings/ReadVariableOptraining/Adam/Identity_1*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 *
T0
х
?training/Adam/Adam/update_embedding/embeddings/AssignVariableOpAssignVariableOp$training/Adam/embedding/embeddings/m4training/Adam/Adam/update_embedding/embeddings/mul_1*'
_class
loc:@embedding/embeddings*
dtype0

?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_1ReadVariableOp$training/Adam/embedding/embeddings/m@^training/Adam/Adam/update_embedding/embeddings/AssignVariableOp*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:	 
№
Atraining/Adam/Adam/update_embedding/embeddings/ResourceScatterAddResourceScatterAdd$training/Adam/embedding/embeddings/m5training/Adam/Adam/update_embedding/embeddings/Unique2training/Adam/Adam/update_embedding/embeddings/mul@^training/Adam/Adam/update_embedding/embeddings/AssignVariableOp*
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0
Ћ
?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_2ReadVariableOp$training/Adam/embedding/embeddings/m@^training/Adam/Adam/update_embedding/embeddings/AssignVariableOpB^training/Adam/Adam/update_embedding/embeddings/ResourceScatterAdd*
dtype0*
_output_shapes
:	 

4training/Adam/Adam/update_embedding/embeddings/mul_2MulAtraining/Adam/Adam/update_embedding/embeddings/UnsortedSegmentSumAtraining/Adam/Adam/update_embedding/embeddings/UnsortedSegmentSum*
T0*'
_class
loc:@embedding/embeddings*'
_output_shapes
:џџџџџџџџџ 
с
4training/Adam/Adam/update_embedding/embeddings/mul_3Mul4training/Adam/Adam/update_embedding/embeddings/mul_2training/Adam/sub_3*
T0*'
_class
loc:@embedding/embeddings*'
_output_shapes
:џџџџџџџџџ 
Ѕ
?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_3ReadVariableOp$training/Adam/embedding/embeddings/v*
dtype0*
_output_shapes
:	 
щ
4training/Adam/Adam/update_embedding/embeddings/mul_4Mul?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_3training/Adam/Identity_2*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 *
T0
ч
Atraining/Adam/Adam/update_embedding/embeddings/AssignVariableOp_1AssignVariableOp$training/Adam/embedding/embeddings/v4training/Adam/Adam/update_embedding/embeddings/mul_4*'
_class
loc:@embedding/embeddings*
dtype0

?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_4ReadVariableOp$training/Adam/embedding/embeddings/vB^training/Adam/Adam/update_embedding/embeddings/AssignVariableOp_1*
dtype0*
_output_shapes
:	 *'
_class
loc:@embedding/embeddings
і
Ctraining/Adam/Adam/update_embedding/embeddings/ResourceScatterAdd_1ResourceScatterAdd$training/Adam/embedding/embeddings/v5training/Adam/Adam/update_embedding/embeddings/Unique4training/Adam/Adam/update_embedding/embeddings/mul_3B^training/Adam/Adam/update_embedding/embeddings/AssignVariableOp_1*'
_class
loc:@embedding/embeddings*
dtype0*
Tindices0
Џ
?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_5ReadVariableOp$training/Adam/embedding/embeddings/vB^training/Adam/Adam/update_embedding/embeddings/AssignVariableOp_1D^training/Adam/Adam/update_embedding/embeddings/ResourceScatterAdd_1*
dtype0*
_output_shapes
:	 
Я
3training/Adam/Adam/update_embedding/embeddings/SqrtSqrt?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_5*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
т
4training/Adam/Adam/update_embedding/embeddings/mul_5Multraining/Adam/mul?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_2*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
и
2training/Adam/Adam/update_embedding/embeddings/addAddV23training/Adam/Adam/update_embedding/embeddings/Sqrttraining/Adam/Const*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
ў
6training/Adam/Adam/update_embedding/embeddings/truedivRealDiv4training/Adam/Adam/update_embedding/embeddings/mul_52training/Adam/Adam/update_embedding/embeddings/add*
_output_shapes
:	 *
T0*'
_class
loc:@embedding/embeddings
н
Btraining/Adam/Adam/update_embedding/embeddings/AssignSubVariableOpAssignSubVariableOpembedding/embeddings6training/Adam/Adam/update_embedding/embeddings/truediv*'
_class
loc:@embedding/embeddings*
dtype0

?training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_6ReadVariableOpembedding/embeddingsC^training/Adam/Adam/update_embedding/embeddings/AssignSubVariableOp*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:	 
Г
9training/Adam/Adam/update_embedding/embeddings/group_depsNoOpC^training/Adam/Adam/update_embedding/embeddings/AssignSubVariableOp@^training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_2@^training/Adam/Adam/update_embedding/embeddings/ReadVariableOp_5*'
_class
loc:@embedding/embeddings
Ў
7training/Adam/Adam/update_lstm/kernel/ResourceApplyAdamResourceApplyAdamlstm/kerneltraining/Adam/lstm/kernel/mtraining/Adam/lstm/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstTtraining/Adam/gradients/gradients/lstm/while/split/ReadVariableOp/Enter_grad/b_acc_3*
use_locking(*
T0*
_class
loc:@lstm/kernel
к
Atraining/Adam/Adam/update_lstm/recurrent_kernel/ResourceApplyAdamResourceApplyAdamlstm/recurrent_kernel%training/Adam/lstm/recurrent_kernel/m%training/Adam/lstm/recurrent_kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstNtraining/Adam/gradients/gradients/lstm/while/ReadVariableOp/Enter_grad/b_acc_3*
use_locking(*
T0*(
_class
loc:@lstm/recurrent_kernel
І
5training/Adam/Adam/update_lstm/bias/ResourceApplyAdamResourceApplyAdam	lstm/biastraining/Adam/lstm/bias/mtraining/Adam/lstm/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstVtraining/Adam/gradients/gradients/lstm/while/split_1/ReadVariableOp/Enter_grad/b_acc_3*
use_locking(*
T0*
_class
loc:@lstm/bias

8training/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kerneltraining/Adam/dense/kernel/mtraining/Adam/dense/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1*
_class
loc:@dense/kernel*
use_locking(*
T0

6training/Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biastraining/Adam/dense/bias/mtraining/Adam/dense/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense/bias*
use_locking(
Р
training/Adam/Adam/ConstConst7^training/Adam/Adam/update_dense/bias/ResourceApplyAdam9^training/Adam/Adam/update_dense/kernel/ResourceApplyAdam:^training/Adam/Adam/update_embedding/embeddings/group_deps6^training/Adam/Adam/update_lstm/bias/ResourceApplyAdam8^training/Adam/Adam/update_lstm/kernel/ResourceApplyAdamB^training/Adam/Adam/update_lstm/recurrent_kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
э
!training/Adam/Adam/ReadVariableOpReadVariableOpiter'^training/Adam/Adam/AssignAddVariableOp7^training/Adam/Adam/update_dense/bias/ResourceApplyAdam9^training/Adam/Adam/update_dense/kernel/ResourceApplyAdam:^training/Adam/Adam/update_embedding/embeddings/group_deps6^training/Adam/Adam/update_lstm/bias/ResourceApplyAdam8^training/Adam/Adam/update_lstm/kernel/ResourceApplyAdamB^training/Adam/Adam/update_lstm/recurrent_kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
Q
training_1/group_depsNoOp	^loss/mul'^training/Adam/Adam/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ф
RestoreV2/tensor_namesConst"/device:CPU:0*k
valuebB`BVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
a
AssignVariableOpAssignVariableOp$training/Adam/embedding/embeddings/mIdentity*
dtype0
Ц
RestoreV2_1/tensor_namesConst"/device:CPU:0*k
valuebB`BVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
e
AssignVariableOp_1AssignVariableOp$training/Adam/embedding/embeddings/v
Identity_1*
dtype0
Т
RestoreV2_2/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
]
AssignVariableOp_2AssignVariableOptraining/Adam/dense/kernel/m
Identity_2*
dtype0
Т
RestoreV2_3/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
]
AssignVariableOp_3AssignVariableOptraining/Adam/dense/kernel/v
Identity_3*
dtype0
Р
RestoreV2_4/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
[
AssignVariableOp_4AssignVariableOptraining/Adam/dense/bias/m
Identity_4*
dtype0
Р
RestoreV2_5/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
[
AssignVariableOp_5AssignVariableOptraining/Adam/dense/bias/v
Identity_5*
dtype0
Ч
RestoreV2_6/tensor_namesConst"/device:CPU:0*l
valuecBaBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
\
AssignVariableOp_6AssignVariableOptraining/Adam/lstm/kernel/m
Identity_6*
dtype0
Ч
RestoreV2_7/tensor_namesConst"/device:CPU:0*l
valuecBaBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
_output_shapes
:*
T0
\
AssignVariableOp_7AssignVariableOptraining/Adam/lstm/kernel/v
Identity_7*
dtype0
б
RestoreV2_8/tensor_namesConst"/device:CPU:0*v
valuemBkBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
f
AssignVariableOp_8AssignVariableOp%training/Adam/lstm/recurrent_kernel/m
Identity_8*
dtype0
б
RestoreV2_9/tensor_namesConst"/device:CPU:0*v
valuemBkBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
_output_shapes
:*
T0
f
AssignVariableOp_9AssignVariableOp%training/Adam/lstm/recurrent_kernel/v
Identity_9*
dtype0
Ц
RestoreV2_10/tensor_namesConst"/device:CPU:0*j
valueaB_BUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
_output_shapes
:*
T0
\
AssignVariableOp_10AssignVariableOptraining/Adam/lstm/bias/mIdentity_10*
dtype0
Ц
RestoreV2_11/tensor_namesConst"/device:CPU:0*j
valueaB_BUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
\
AssignVariableOp_11AssignVariableOptraining/Adam/lstm/bias/vIdentity_11*
dtype0
Р
RestoreV2_12/tensor_namesConst"/device:CPU:0*
_output_shapes
:*у
valueйBжB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0

RestoreV2_12/shape_and_slicesConst"/device:CPU:0*)
value BB B B B B B B B B B B *
dtype0*
_output_shapes
:
Ц
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
W
AssignVariableOp_12AssignVariableOpembedding/embeddingsIdentity_12*
dtype0
J
Identity_13IdentityRestoreV2_12:1*
_output_shapes
:*
T0
L
AssignVariableOp_13AssignVariableOp	lstm/biasIdentity_13*
dtype0
J
Identity_14IdentityRestoreV2_12:2*
T0*
_output_shapes
:
N
AssignVariableOp_14AssignVariableOplstm/kernelIdentity_14*
dtype0
J
Identity_15IdentityRestoreV2_12:3*
T0*
_output_shapes
:
X
AssignVariableOp_15AssignVariableOplstm/recurrent_kernelIdentity_15*
dtype0
J
Identity_16IdentityRestoreV2_12:4*
T0*
_output_shapes
:
M
AssignVariableOp_16AssignVariableOp
dense/biasIdentity_16*
dtype0
J
Identity_17IdentityRestoreV2_12:5*
T0*
_output_shapes
:
O
AssignVariableOp_17AssignVariableOpdense/kernelIdentity_17*
dtype0
J
Identity_18IdentityRestoreV2_12:6*
T0*
_output_shapes
:
W
AssignVariableOp_18AssignVariableOptraining/Adam/beta_1Identity_18*
dtype0
J
Identity_19IdentityRestoreV2_12:7*
T0*
_output_shapes
:
W
AssignVariableOp_19AssignVariableOptraining/Adam/beta_2Identity_19*
dtype0
J
Identity_20IdentityRestoreV2_12:8*
_output_shapes
:*
T0
V
AssignVariableOp_20AssignVariableOptraining/Adam/decayIdentity_20*
dtype0
J
Identity_21IdentityRestoreV2_12:9*
T0	*
_output_shapes
:
G
AssignVariableOp_21AssignVariableOpiterIdentity_21*
dtype0	
K
Identity_22IdentityRestoreV2_12:10*
T0*
_output_shapes
:
^
AssignVariableOp_22AssignVariableOptraining/Adam/learning_rateIdentity_22*
dtype0
V
VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 
I
VarIsInitializedOp_1VarIsInitializedOptotal*
_output_shapes
: 
Y
VarIsInitializedOp_2VarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
_
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
_
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/lstm/kernel/v*
_output_shapes
: 
i
VarIsInitializedOp_5VarIsInitializedOp%training/Adam/lstm/recurrent_kernel/m*
_output_shapes
: 
^
VarIsInitializedOp_6VarIsInitializedOptraining/Adam/dense/bias/v*
_output_shapes
: 
H
VarIsInitializedOp_7VarIsInitializedOpiter*
_output_shapes
: 
_
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/lstm/kernel/m*
_output_shapes
: 
]
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/lstm/bias/m*
_output_shapes
: 
i
VarIsInitializedOp_10VarIsInitializedOp$training/Adam/embedding/embeddings/v*
_output_shapes
: 
O
VarIsInitializedOp_11VarIsInitializedOp
dense/bias*
_output_shapes
: 
Y
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
j
VarIsInitializedOp_13VarIsInitializedOp%training/Adam/lstm/recurrent_kernel/v*
_output_shapes
: 
_
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/dense/bias/m*
_output_shapes
: 
Y
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
J
VarIsInitializedOp_16VarIsInitializedOpcount*
_output_shapes
: 
a
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/dense/kernel/v*
_output_shapes
: 
N
VarIsInitializedOp_18VarIsInitializedOp	lstm/bias*
_output_shapes
: 
Q
VarIsInitializedOp_19VarIsInitializedOpdense/kernel*
_output_shapes
: 
a
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/dense/kernel/m*
_output_shapes
: 
P
VarIsInitializedOp_21VarIsInitializedOplstm/kernel*
_output_shapes
: 
X
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
^
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/lstm/bias/v*
_output_shapes
: 
i
VarIsInitializedOp_24VarIsInitializedOp$training/Adam/embedding/embeddings/m*
_output_shapes
: 
Ѓ
initNoOp^count/Assign^dense/bias/Assign^dense/kernel/Assign^embedding/embeddings/Assign^iter/Assign^lstm/bias/Assign^lstm/kernel/Assign^lstm/recurrent_kernel/Assign^total/Assign^training/Adam/beta_1/Assign^training/Adam/beta_2/Assign^training/Adam/decay/Assign"^training/Adam/dense/bias/m/Assign"^training/Adam/dense/bias/v/Assign$^training/Adam/dense/kernel/m/Assign$^training/Adam/dense/kernel/v/Assign,^training/Adam/embedding/embeddings/m/Assign,^training/Adam/embedding/embeddings/v/Assign#^training/Adam/learning_rate/Assign!^training/Adam/lstm/bias/m/Assign!^training/Adam/lstm/bias/v/Assign#^training/Adam/lstm/kernel/m/Assign#^training/Adam/lstm/kernel/v/Assign-^training/Adam/lstm/recurrent_kernel/m/Assign-^training/Adam/lstm/recurrent_kernel/v/Assign
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 

StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_0fc287a0ee8641ca9d3ce61006b8ee4c/part*
dtype0*
_output_shapes
: 
f

StringJoin
StringJoinConst_2StringJoin/inputs_1"/device:CPU:0*
N*
_output_shapes
: 
L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
м
SaveV2/tensor_namesConst"/device:CPU:0*
valueћBјB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 
	
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpiter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOplstm/kernel/Read/ReadVariableOp)lstm/recurrent_kernel/Read/ReadVariableOplstm/bias/Read/ReadVariableOp8training/Adam/embedding/embeddings/m/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp/training/Adam/lstm/kernel/m/Read/ReadVariableOp9training/Adam/lstm/recurrent_kernel/m/Read/ReadVariableOp-training/Adam/lstm/bias/m/Read/ReadVariableOp8training/Adam/embedding/embeddings/v/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp/training/Adam/lstm/kernel/v/Read/ReadVariableOp9training/Adam/lstm/recurrent_kernel/v/Read/ReadVariableOp-training/Adam/lstm/bias/v/Read/ReadVariableOp"/device:CPU:0*%
dtypes
2	
h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
|
ShardedFilename_1ShardedFilename
StringJoinShardedFilename_1/shard
num_shards"/device:CPU:0*
_output_shapes
: 

SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:
q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

SaveV2_1SaveV2ShardedFilename_1SaveV2_1/tensor_namesSaveV2_1/shape_and_slicesConst_1"/device:CPU:0*
dtypes
2
Ѓ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilenameShardedFilename_1^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_23IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
D
Identity_24Identity
div_no_nan*
T0*
_output_shapes
: 
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
в
save/SaveV2/tensor_namesConst*
valueћBјB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices(embedding/embeddings/Read/ReadVariableOp8training/Adam/embedding/embeddings/m/Read/ReadVariableOp8training/Adam/embedding/embeddings/v/Read/ReadVariableOplstm/bias/Read/ReadVariableOp-training/Adam/lstm/bias/m/Read/ReadVariableOp-training/Adam/lstm/bias/v/Read/ReadVariableOplstm/kernel/Read/ReadVariableOp/training/Adam/lstm/kernel/m/Read/ReadVariableOp/training/Adam/lstm/kernel/v/Read/ReadVariableOp)lstm/recurrent_kernel/Read/ReadVariableOp9training/Adam/lstm/recurrent_kernel/m/Read/ReadVariableOp9training/Adam/lstm/recurrent_kernel/v/Read/ReadVariableOpdense/bias/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp*%
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ф
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
valueћBјB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-1/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
Ѓ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
[
save/AssignVariableOpAssignVariableOpembedding/embeddingssave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
o
save/AssignVariableOp_1AssignVariableOp$training/Adam/embedding/embeddings/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
o
save/AssignVariableOp_2AssignVariableOp$training/Adam/embedding/embeddings/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
T
save/AssignVariableOp_3AssignVariableOp	lstm/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
d
save/AssignVariableOp_4AssignVariableOptraining/Adam/lstm/bias/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
d
save/AssignVariableOp_5AssignVariableOptraining/Adam/lstm/bias/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
V
save/AssignVariableOp_6AssignVariableOplstm/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
f
save/AssignVariableOp_7AssignVariableOptraining/Adam/lstm/kernel/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
f
save/AssignVariableOp_8AssignVariableOptraining/Adam/lstm/kernel/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
`
save/AssignVariableOp_9AssignVariableOplstm/recurrent_kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
_output_shapes
:*
T0
r
save/AssignVariableOp_10AssignVariableOp%training/Adam/lstm/recurrent_kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
r
save/AssignVariableOp_11AssignVariableOp%training/Adam/lstm/recurrent_kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
dense/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
_output_shapes
:*
T0
g
save/AssignVariableOp_13AssignVariableOptraining/Adam/dense/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
g
save/AssignVariableOp_14AssignVariableOptraining/Adam/dense/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Y
save/AssignVariableOp_15AssignVariableOpdense/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
i
save/AssignVariableOp_16AssignVariableOptraining/Adam/dense/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
i
save/AssignVariableOp_17AssignVariableOptraining/Adam/dense/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
a
save/AssignVariableOp_18AssignVariableOptraining/Adam/beta_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
a
save/AssignVariableOp_19AssignVariableOptraining/Adam/beta_2save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
_output_shapes
:*
T0
`
save/AssignVariableOp_20AssignVariableOptraining/Adam/decaysave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_21AssignVariableOpitersave/Identity_21*
dtype0	
R
save/Identity_22Identitysave/RestoreV2:22*
_output_shapes
:*
T0
h
save/AssignVariableOp_22AssignVariableOptraining/Adam/learning_ratesave/Identity_22*
dtype0
љ
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
trainable_variablesѓ№

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08"Х
local_variablesБЎ
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"ъ
	variablesмй

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H

training/Adam/beta_1:0training/Adam/beta_1/Assign*training/Adam/beta_1/Read/ReadVariableOp:0(20training/Adam/beta_1/Initializer/initial_value:0H

training/Adam/beta_2:0training/Adam/beta_2/Assign*training/Adam/beta_2/Read/ReadVariableOp:0(20training/Adam/beta_2/Initializer/initial_value:0H

training/Adam/decay:0training/Adam/decay/Assign)training/Adam/decay/Read/ReadVariableOp:0(2/training/Adam/decay/Initializer/initial_value:0H
Г
training/Adam/learning_rate:0"training/Adam/learning_rate/Assign1training/Adam/learning_rate/Read/ReadVariableOp:0(27training/Adam/learning_rate/Initializer/initial_value:0H
Э
&training/Adam/embedding/embeddings/m:0+training/Adam/embedding/embeddings/m/Assign:training/Adam/embedding/embeddings/m/Read/ReadVariableOp:0(28training/Adam/embedding/embeddings/m/Initializer/zeros:0
Љ
training/Adam/lstm/kernel/m:0"training/Adam/lstm/kernel/m/Assign1training/Adam/lstm/kernel/m/Read/ReadVariableOp:0(2/training/Adam/lstm/kernel/m/Initializer/zeros:0
б
'training/Adam/lstm/recurrent_kernel/m:0,training/Adam/lstm/recurrent_kernel/m/Assign;training/Adam/lstm/recurrent_kernel/m/Read/ReadVariableOp:0(29training/Adam/lstm/recurrent_kernel/m/Initializer/zeros:0
Ё
training/Adam/lstm/bias/m:0 training/Adam/lstm/bias/m/Assign/training/Adam/lstm/bias/m/Read/ReadVariableOp:0(2-training/Adam/lstm/bias/m/Initializer/zeros:0
­
training/Adam/dense/kernel/m:0#training/Adam/dense/kernel/m/Assign2training/Adam/dense/kernel/m/Read/ReadVariableOp:0(20training/Adam/dense/kernel/m/Initializer/zeros:0
Ѕ
training/Adam/dense/bias/m:0!training/Adam/dense/bias/m/Assign0training/Adam/dense/bias/m/Read/ReadVariableOp:0(2.training/Adam/dense/bias/m/Initializer/zeros:0
Э
&training/Adam/embedding/embeddings/v:0+training/Adam/embedding/embeddings/v/Assign:training/Adam/embedding/embeddings/v/Read/ReadVariableOp:0(28training/Adam/embedding/embeddings/v/Initializer/zeros:0
Љ
training/Adam/lstm/kernel/v:0"training/Adam/lstm/kernel/v/Assign1training/Adam/lstm/kernel/v/Read/ReadVariableOp:0(2/training/Adam/lstm/kernel/v/Initializer/zeros:0
б
'training/Adam/lstm/recurrent_kernel/v:0,training/Adam/lstm/recurrent_kernel/v/Assign;training/Adam/lstm/recurrent_kernel/v/Read/ReadVariableOp:0(29training/Adam/lstm/recurrent_kernel/v/Initializer/zeros:0
Ё
training/Adam/lstm/bias/v:0 training/Adam/lstm/bias/v/Assign/training/Adam/lstm/bias/v/Read/ReadVariableOp:0(2-training/Adam/lstm/bias/v/Initializer/zeros:0
­
training/Adam/dense/kernel/v:0#training/Adam/dense/kernel/v/Assign2training/Adam/dense/kernel/v/Read/ReadVariableOp:0(20training/Adam/dense/kernel/v/Initializer/zeros:0
Ѕ
training/Adam/dense/bias/v:0!training/Adam/dense/bias/v/Assign0training/Adam/dense/bias/v/Read/ReadVariableOp:0(2.training/Adam/dense/bias/v/Initializer/zeros:0"ыу
while_contextиуду
ау
lstm/while/while_context  *lstm/while/LoopCond:02lstm/while/Merge:0:lstm/while/Identity:0Blstm/while/Exit:0Blstm/while/Exit_1:0Blstm/while/Exit_2:0Blstm/while/Exit_3:0B-training/Adam/gradients/gradients/f_count_2:0Jфр
lstm/TensorArray:0
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm/TensorArray_1:0
lstm/bias:0
lstm/dropout/mul_1:0
lstm/dropout_1/mul_1:0
lstm/dropout_2/mul_1:0
lstm/dropout_3/mul_1:0
lstm/dropout_4/mul_1:0
lstm/dropout_5/mul_1:0
lstm/dropout_6/mul_1:0
lstm/dropout_7/mul_1:0
lstm/kernel:0
lstm/recurrent_kernel:0
lstm/strided_slice_1:0
lstm/while/Add_1:0
lstm/while/Add_3:0
lstm/while/Add_7:0
lstm/while/BiasAdd:0
lstm/while/BiasAdd_1:0
lstm/while/BiasAdd_2:0
lstm/while/BiasAdd_3:0
lstm/while/Const:0
lstm/while/Const_1:0
lstm/while/Const_2:0
lstm/while/Const_3:0
lstm/while/Const_4:0
lstm/while/Const_5:0
lstm/while/Const_6:0
lstm/while/Const_7:0
lstm/while/Enter:0
lstm/while/Enter_1:0
lstm/while/Enter_2:0
lstm/while/Enter_3:0
lstm/while/Exit:0
lstm/while/Exit_1:0
lstm/while/Exit_2:0
lstm/while/Exit_3:0
lstm/while/Identity:0
lstm/while/Identity_1:0
lstm/while/Identity_2:0
lstm/while/Identity_3:0
lstm/while/Less/Enter:0
lstm/while/Less:0
lstm/while/LoopCond:0
lstm/while/MatMul:0
lstm/while/MatMul_1:0
lstm/while/MatMul_2:0
lstm/while/MatMul_3:0
lstm/while/MatMul_4:0
lstm/while/MatMul_5:0
lstm/while/MatMul_6:0
lstm/while/MatMul_7:0
lstm/while/Merge:0
lstm/while/Merge:1
lstm/while/Merge_1:0
lstm/while/Merge_1:1
lstm/while/Merge_2:0
lstm/while/Merge_2:1
lstm/while/Merge_3:0
lstm/while/Merge_3:1
lstm/while/Mul_12:0
lstm/while/Mul_8:0
lstm/while/Mul_9:0
lstm/while/NextIteration:0
lstm/while/NextIteration_1:0
lstm/while/NextIteration_2:0
lstm/while/NextIteration_3:0
!lstm/while/ReadVariableOp/Enter:0
lstm/while/ReadVariableOp:0
lstm/while/ReadVariableOp_1:0
lstm/while/ReadVariableOp_2:0
lstm/while/ReadVariableOp_3:0
lstm/while/Switch:0
lstm/while/Switch:1
lstm/while/Switch_1:0
lstm/while/Switch_1:1
lstm/while/Switch_2:0
lstm/while/Switch_2:1
lstm/while/Switch_3:0
lstm/while/Switch_3:1
lstm/while/Tanh:0
lstm/while/Tanh_1:0
$lstm/while/TensorArrayReadV3/Enter:0
&lstm/while/TensorArrayReadV3/Enter_1:0
lstm/while/TensorArrayReadV3:0
6lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
0lstm/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm/while/add:0
lstm/while/add_2:0
lstm/while/add_4:0
lstm/while/add_5:0
lstm/while/add_6:0
lstm/while/add_8/y:0
lstm/while/add_8:0
$lstm/while/clip_by_value/Minimum/y:0
"lstm/while/clip_by_value/Minimum:0
lstm/while/clip_by_value/y:0
lstm/while/clip_by_value:0
&lstm/while/clip_by_value_1/Minimum/y:0
$lstm/while/clip_by_value_1/Minimum:0
lstm/while/clip_by_value_1/y:0
lstm/while/clip_by_value_1:0
&lstm/while/clip_by_value_2/Minimum/y:0
$lstm/while/clip_by_value_2/Minimum:0
lstm/while/clip_by_value_2/y:0
lstm/while/clip_by_value_2:0
lstm/while/mul/Enter:0
lstm/while/mul:0
lstm/while/mul_1/Enter:0
lstm/while/mul_10:0
lstm/while/mul_11:0
lstm/while/mul_13:0
lstm/while/mul_1:0
lstm/while/mul_2/Enter:0
lstm/while/mul_2:0
lstm/while/mul_3/Enter:0
lstm/while/mul_3:0
lstm/while/mul_4/Enter:0
lstm/while/mul_4:0
lstm/while/mul_5/Enter:0
lstm/while/mul_5:0
lstm/while/mul_6/Enter:0
lstm/while/mul_6:0
lstm/while/mul_7/Enter:0
lstm/while/mul_7:0
'lstm/while/split/ReadVariableOp/Enter:0
!lstm/while/split/ReadVariableOp:0
lstm/while/split/split_dim:0
lstm/while/split:0
lstm/while/split:1
lstm/while/split:2
lstm/while/split:3
)lstm/while/split_1/ReadVariableOp/Enter:0
#lstm/while/split_1/ReadVariableOp:0
lstm/while/split_1/split_dim:0
lstm/while/split_1:0
lstm/while/split_1:1
lstm/while/split_1:2
lstm/while/split_1:3
 lstm/while/strided_slice/stack:0
"lstm/while/strided_slice/stack_1:0
"lstm/while/strided_slice/stack_2:0
lstm/while/strided_slice:0
"lstm/while/strided_slice_1/stack:0
$lstm/while/strided_slice_1/stack_1:0
$lstm/while/strided_slice_1/stack_2:0
lstm/while/strided_slice_1:0
"lstm/while/strided_slice_2/stack:0
$lstm/while/strided_slice_2/stack_1:0
$lstm/while/strided_slice_2/stack_2:0
lstm/while/strided_slice_2:0
"lstm/while/strided_slice_3/stack:0
$lstm/while/strided_slice_3/stack_1:0
$lstm/while/strided_slice_3/stack_2:0
lstm/while/strided_slice_3:0
)training/Adam/gradients/gradients/Add/y:0
'training/Adam/gradients/gradients/Add:0
)training/Adam/gradients/gradients/Merge:0
)training/Adam/gradients/gradients/Merge:1
1training/Adam/gradients/gradients/NextIteration:0
*training/Adam/gradients/gradients/Switch:0
*training/Adam/gradients/gradients/Switch:1
+training/Adam/gradients/gradients/f_count:0
-training/Adam/gradients/gradients/f_count_1:0
-training/Adam/gradients/gradients/f_count_2:0
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/Add_1_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/Add_3_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/Add_7_grad/Shape_1:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/f_acc:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/Enter:0
Qtraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/StackPushV2:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/f_acc:0
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/Enter:0
Mtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/StackPushV2:0
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/Enter:0
Otraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/StackPushV2:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/f_acc:0
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter:0
Xtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter_1:0
\training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2:0
^training/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/StackPushV2_1:0
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc:0
Xtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc_1:0
Ftraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/Enter:0
Ltraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/StackPushV2:0
Ftraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/f_acc:0
@training/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape:0
Btraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc_1:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/StackPushV2:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/f_acc:0
?training/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc_1:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/StackPushV2:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/f_acc:0
?training/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Shape_1:0
otraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
utraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
otraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/add_2_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/add_2_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/add_4_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/add_4_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/add_5_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/add_5_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/add_6_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/add_6_grad/Shape_1:0
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter:0
Utraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter_1:0
Ytraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2:0
[training/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/StackPushV2_1:0
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc:0
Utraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc_1:0
=training/Adam/gradients/gradients/lstm/while/add_grad/Shape:0
?training/Adam/gradients/gradients/lstm/while/add_grad/Shape_1:0
etraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Enter:0
ktraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2:0
etraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc:0
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Enter:0
_training/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2:0
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/f_acc:0
Otraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/Shape:0
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Enter:0
mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2:0
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc:0
[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Enter:0
atraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2:0
[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc:0
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/Shape:0
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/Enter:0
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2:0
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc:0
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Enter:0
\training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/StackPushV2:0
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/Shape:0
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/Enter:0
mtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPushV2:0
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc:0
[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Enter:0
atraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/StackPushV2:0
[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/f_acc:0
Qtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/Shape:0
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/Enter:0
etraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/StackPushV2:0
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/f_acc:0
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Enter:0
\training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/StackPushV2:0
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/f_acc:0
Itraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/Shape:0
]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/Enter:0
ctraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/f_acc:0
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Enter:0
Ztraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/StackPushV2:0
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/f_acc:0
Gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/Shape:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter_1:0
\training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2:0
^training/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc_1:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/Enter:0
Jtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/StackPushV2:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/f_acc:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/Enter:0
Ltraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/StackPushV2:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/f_acc:0
@training/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape:0
Btraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Shape_1:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter_1:0
\training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2:0
^training/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/StackPushV2_1:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc_1:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/Enter:0
Jtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/StackPushV2:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/f_acc:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/Enter:0
Ltraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/StackPushV2:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/f_acc:0
@training/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape:0
Btraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Shape_1:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter_1:0
\training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2:0
^training/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/StackPushV2_1:0
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc:0
Xtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc_1:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/Enter:0
Jtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/StackPushV2:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/f_acc:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/Enter:0
Ltraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/StackPushV2:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/f_acc:0
@training/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape:0
Btraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_1_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_2_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
Etraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/StackPushV2:0
Etraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/f_acc:0
?training/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_4_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_5_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc_1:0
?training/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_6_grad/Shape_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter_1:0
[training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2:0
]training/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/StackPushV2_1:0
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc:0
Wtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc_1:0
Etraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/StackPushV2:0
Etraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/f_acc:0
?training/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape:0
Atraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Shape_1:0
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter:0
Utraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter_1:0
Ytraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2:0
[training/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc:0
Utraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc_1:0
=training/Adam/gradients/gradients/lstm/while/mul_grad/Shape:0
?training/Adam/gradients/gradients/lstm/while/mul_grad/Shape_1:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/f_acc:0Etraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/Mul_1/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter_1:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul_1/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter:02
lstm/dropout_7/mul_1:0lstm/while/mul_7/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/GreaterEqual/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter:0в
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc:0gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Enter:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/f_acc:0Ftraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul_1/Enter:0Д
Xtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc_1:0Xtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter_1:0.
lstm/dropout/mul_1:0lstm/while/mul/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul_1/Enter:08
lstm/kernel:0'lstm/while/split/ReadVariableOp/Enter:0<
lstm/recurrent_kernel:0!lstm/while/ReadVariableOp/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter:0К
[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc:0[training/Adam/gradients/gradients/lstm/while/clip_by_value_1/Minimum_grad/LessEqual/Enter:02
lstm/dropout_6/mul_1:0lstm/while/mul_6/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/BroadcastGradientArgs/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter_1:0Њ
Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc:0Straining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul_1/Enter:0
Etraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/f_acc:0Etraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/Mul_1/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/Mul_9_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/Add_7_grad/BroadcastGradientArgs/Enter_1:02
lstm/dropout_5/mul_1:0lstm/while/mul_5/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/Add_1_grad/BroadcastGradientArgs/Enter:0А
Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/f_acc:0Vtraining/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/GreaterEqual/Enter:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/f_acc:0Dtraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter_1:0В
Wtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter_1:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/f_acc:0Ftraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul_1/Enter:0
Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/f_acc:0Gtraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul/Enter:0Д
Xtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/f_acc_1:0Xtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/BroadcastGradientArgs/Enter_1:0
Etraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/f_acc:0Etraining/Adam/gradients/gradients/lstm/while/mul_7_grad/Mul_1/Enter:0т
otraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0otraining/Adam/gradients/gradients/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:02
lstm/dropout_4/mul_1:0lstm/while/mul_4/Enter:0k
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0&lstm/while/TensorArrayReadV3/Enter_1:0В
Wtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/Add_3_grad/BroadcastGradientArgs/Enter_1:0
Etraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/f_acc:0Etraining/Adam/gradients/gradients/lstm/while/mul_3_grad/Mul_1/Enter:0в
gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc:0gtraining/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_5_grad/MatMul/Enter:0К
[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/f_acc:0[training/Adam/gradients/gradients/lstm/while/clip_by_value_2/Minimum_grad/LessEqual/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_4_grad/MatMul_1/Enter:0Ќ
Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/f_acc:0Ttraining/Adam/gradients/gradients/lstm/while/clip_by_value_grad/GreaterEqual/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter_1:0В
Wtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter_1:0Т
_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/f_acc:0_training/Adam/gradients/gradients/lstm/while/clip_by_value_2_grad/BroadcastGradientArgs/Enter:0Т
_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc:0_training/Adam/gradients/gradients/lstm/while/clip_by_value_1_grad/BroadcastGradientArgs/Enter:0Д
Xtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/f_acc_1:0Xtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/BroadcastGradientArgs/Enter_1:0:
lstm/TensorArray:0$lstm/while/TensorArrayReadV3/Enter:02
lstm/dropout_3/mul_1:0lstm/while/mul_3/Enter:08
lstm/bias:0)lstm/while/split_1/ReadVariableOp/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/Mul_8_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/f_acc_1:0Utraining/Adam/gradients/gradients/lstm/while/mul_grad/BroadcastGradientArgs/Enter_1:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/f_acc:0Dtraining/Adam/gradients/gradients/lstm/while/mul_10_grad/Mul/Enter:0Ж
Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/f_acc:0Ytraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/LessEqual/Enter:0
Ftraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/f_acc:0Ftraining/Adam/gradients/gradients/lstm/while/mul_11_grad/Mul_1/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_6_grad/MatMul/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter_1:02
lstm/dropout_2/mul_1:0lstm/while/mul_2/Enter:0Д
Xtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/f_acc_1:0Xtraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/BroadcastGradientArgs/Enter_1:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_3_grad/MatMul_1/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_1_grad/MatMul/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_grad/MatMul_1/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc_1:0Utraining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter_1:0О
]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/f_acc:0]training/Adam/gradients/gradients/lstm/while/clip_by_value_grad/BroadcastGradientArgs/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_7_grad/BroadcastGradientArgs/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter:0
Ftraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/f_acc:0Ftraining/Adam/gradients/gradients/lstm/while/Mul_12_grad/Mul_1/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_5_grad/BroadcastGradientArgs/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_4_grad/BroadcastGradientArgs/Enter:01
lstm/strided_slice_1:0lstm/while/Less/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_3_grad/BroadcastGradientArgs/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_6_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter:02
lstm/dropout_1/mul_1:0lstm/while/mul_1/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter_1:0Ў
Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/mul_1_grad/BroadcastGradientArgs/Enter:0N
lstm/TensorArray_1:06lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Ю
etraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc:0etraining/Adam/gradients/gradients/lstm/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul_1/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_7_grad/MatMul/Enter:0Њ
Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/f_acc:0Straining/Adam/gradients/gradients/lstm/while/add_grad/BroadcastGradientArgs/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/add_6_grad/BroadcastGradientArgs/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/add_5_grad/BroadcastGradientArgs/Enter:0
Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/f_acc:0Itraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/add_4_grad/BroadcastGradientArgs/Enter:0
Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/f_acc:0Dtraining/Adam/gradients/gradients/lstm/while/mul_13_grad/Mul/Enter:0
Ktraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/f_acc:0Ktraining/Adam/gradients/gradients/lstm/while/MatMul_2_grad/MatMul_1/Enter:0Ў
Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/f_acc:0Utraining/Adam/gradients/gradients/lstm/while/add_2_grad/BroadcastGradientArgs/Enter:0В
Wtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/f_acc_1:0Wtraining/Adam/gradients/gradients/lstm/while/mul_2_grad/BroadcastGradientArgs/Enter_1:0Rlstm/while/Enter:0Rlstm/while/Enter_1:0Rlstm/while/Enter_2:0Rlstm/while/Enter_3:0R-training/Adam/gradients/gradients/f_count_1:0*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*п
trainе
>
dense_target.
dense_target:0џџџџџџџџџџџџџџџџџџ
<
embedding_input)
embedding_input:0џџџџџџџџџШ;
predictions/dense&
dense/Sigmoid:0џџџџџџџџџ4
metrics/acc/update_op
metric_op_wrapper:0 (
metrics/acc/value
Identity_24:0 
loss

loss/mul:0 tensorflow/supervised/training*@
__saved_model_init_op'%
__saved_model_init_op
init_1јФ
*ц)
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
)
Exit	
data"T
output"T"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
і
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
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"eval*1.15.22v1.15.2-0-g5d80e1e8e68Шу
t
embedding_inputPlaceholder*
dtype0*(
_output_shapes
:џџџџџџџџџШ*
shape:џџџџџџџџџШ
Џ
5embedding/embeddings/Initializer/random_uniform/shapeConst*
valueB"      *'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:
Ё
3embedding/embeddings/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ЭЬLН*'
_class
loc:@embedding/embeddings*
dtype0
Ё
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *ЭЬL=*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
х
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
_output_shapes
:	 *
T0*'
_class
loc:@embedding/embeddings*
dtype0
ю
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
_output_shapes
: *
T0*'
_class
loc:@embedding/embeddings

3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
ѓ
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
Ў
embedding/embeddingsVarHandleOp*
shape:	 *%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 

embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	 *
dtype0
i
embedding/CastCastembedding_input*

SrcT0*(
_output_shapes
:џџџџџџџџџШ*

DstT0
Ц
embedding/embedding_lookupResourceGatherembedding/embeddingsembedding/Cast*,
_output_shapes
:џџџџџџџџџШ *
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0
Ћ
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup*'
_class
loc:@embedding/embeddings*,
_output_shapes
:џџџџџџџџџШ *
T0

%embedding/embedding_lookup/Identity_1Identity#embedding/embedding_lookup/Identity*,
_output_shapes
:џџџџџџџџџШ *
T0

spatial_dropout1d/IdentityIdentity%embedding/embedding_lookup/Identity_1*
T0*,
_output_shapes
:џџџџџџџџџШ 

,lstm/kernel/Initializer/random_uniform/shapeConst*
valueB"    Ш   *
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:

*lstm/kernel/Initializer/random_uniform/minConst*
valueB
 *.­$О*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 

*lstm/kernel/Initializer/random_uniform/maxConst*
valueB
 *.­$>*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 
Ъ
4lstm/kernel/Initializer/random_uniform/RandomUniformRandomUniform,lstm/kernel/Initializer/random_uniform/shape*
_output_shapes
:	 Ш*
T0*
_class
loc:@lstm/kernel*
dtype0
Ъ
*lstm/kernel/Initializer/random_uniform/subSub*lstm/kernel/Initializer/random_uniform/max*lstm/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@lstm/kernel
н
*lstm/kernel/Initializer/random_uniform/mulMul4lstm/kernel/Initializer/random_uniform/RandomUniform*lstm/kernel/Initializer/random_uniform/sub*
_output_shapes
:	 Ш*
T0*
_class
loc:@lstm/kernel
Я
&lstm/kernel/Initializer/random_uniformAdd*lstm/kernel/Initializer/random_uniform/mul*lstm/kernel/Initializer/random_uniform/min*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш*
T0

lstm/kernelVarHandleOp*
shared_namelstm/kernel*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: *
shape:	 Ш
g
,lstm/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/kernel*
_output_shapes
: 
h
lstm/kernel/AssignAssignVariableOplstm/kernel&lstm/kernel/Initializer/random_uniform*
dtype0
l
lstm/kernel/Read/ReadVariableOpReadVariableOplstm/kernel*
_output_shapes
:	 Ш*
dtype0
А
5lstm/recurrent_kernel/Initializer/random_normal/shapeConst*
valueB"Ш   2   *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
Ѓ
4lstm/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
Ѕ
6lstm/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
є
Dlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5lstm/recurrent_kernel/Initializer/random_normal/shape*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:	Ш2*
T0

3lstm/recurrent_kernel/Initializer/random_normal/mulMulDlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormal6lstm/recurrent_kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
ѕ
/lstm/recurrent_kernel/Initializer/random_normalAdd3lstm/recurrent_kernel/Initializer/random_normal/mul4lstm/recurrent_kernel/Initializer/random_normal/mean*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
Й
$lstm/recurrent_kernel/Initializer/QrQr/lstm/recurrent_kernel/Initializer/random_normal*(
_class
loc:@lstm/recurrent_kernel*)
_output_shapes
:	Ш2:22*
T0
­
*lstm/recurrent_kernel/Initializer/DiagPartDiagPart&lstm/recurrent_kernel/Initializer/Qr:1*
_output_shapes
:2*
T0*(
_class
loc:@lstm/recurrent_kernel
Љ
&lstm/recurrent_kernel/Initializer/SignSign*lstm/recurrent_kernel/Initializer/DiagPart*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:2
Ю
%lstm/recurrent_kernel/Initializer/mulMul$lstm/recurrent_kernel/Initializer/Qr&lstm/recurrent_kernel/Initializer/Sign*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
М
Alstm/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
_output_shapes
:*
valueB"       *(
_class
loc:@lstm/recurrent_kernel*
dtype0

<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose%lstm/recurrent_kernel/Initializer/mulAlstm/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
Њ
/lstm/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"2   Ш   *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
ї
)lstm/recurrent_kernel/Initializer/ReshapeReshape<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose/lstm/recurrent_kernel/Initializer/Reshape/shape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш

)lstm/recurrent_kernel/Initializer/mul_1/xConst*
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
и
'lstm/recurrent_kernel/Initializer/mul_1Mul)lstm/recurrent_kernel/Initializer/mul_1/x)lstm/recurrent_kernel/Initializer/Reshape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
Б
lstm/recurrent_kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:	2Ш*&
shared_namelstm/recurrent_kernel*(
_class
loc:@lstm/recurrent_kernel
{
6lstm/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
}
lstm/recurrent_kernel/AssignAssignVariableOplstm/recurrent_kernel'lstm/recurrent_kernel/Initializer/mul_1*
dtype0

)lstm/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш

lstm/bias/Initializer/zerosConst*
valueB2*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:2

lstm/bias/Initializer/onesConst*
valueB2*  ?*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:2

lstm/bias/Initializer/zeros_1Const*
valueBd*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:d

!lstm/bias/Initializer/concat/axisConst*
value	B : *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: 
№
lstm/bias/Initializer/concatConcatV2lstm/bias/Initializer/zeroslstm/bias/Initializer/oneslstm/bias/Initializer/zeros_1!lstm/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm/bias*
N*
_output_shapes	
:Ш

	lstm/biasVarHandleOp*
shared_name	lstm/bias*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: *
shape:Ш
c
*lstm/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	lstm/bias*
_output_shapes
: 
Z
lstm/bias/AssignAssignVariableOp	lstm/biaslstm/bias/Initializer/concat*
dtype0
d
lstm/bias/Read/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш
T

lstm/ShapeShapespatial_dropout1d/Identity*
T0*
_output_shapes
:
b
lstm/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
lstm/strided_sliceStridedSlice
lstm/Shapelstm/strided_slice/stacklstm/strided_slice/stack_1lstm/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
R
lstm/zeros/mul/yConst*
dtype0*
_output_shapes
: *
value	B :2
\
lstm/zeros/mulMullstm/strided_slicelstm/zeros/mul/y*
T0*
_output_shapes
: 
T
lstm/zeros/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
[
lstm/zeros/LessLesslstm/zeros/mullstm/zeros/Less/y*
T0*
_output_shapes
: 
U
lstm/zeros/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
p
lstm/zeros/packedPacklstm/strided_slicelstm/zeros/packed/1*
_output_shapes
:*
T0*
N
U
lstm/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i

lstm/zerosFilllstm/zeros/packedlstm/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
T
lstm/zeros_1/mul/yConst*
_output_shapes
: *
value	B :2*
dtype0
`
lstm/zeros_1/mulMullstm/strided_slicelstm/zeros_1/mul/y*
T0*
_output_shapes
: 
V
lstm/zeros_1/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
a
lstm/zeros_1/LessLesslstm/zeros_1/mullstm/zeros_1/Less/y*
T0*
_output_shapes
: 
W
lstm/zeros_1/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
t
lstm/zeros_1/packedPacklstm/strided_slicelstm/zeros_1/packed/1*
T0*
N*
_output_shapes
:
W
lstm/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
lstm/zeros_1Filllstm/zeros_1/packedlstm/zeros_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/transpose/permConst*
dtype0*
_output_shapes
:*!
valueB"          

lstm/transpose	Transposespatial_dropout1d/Identitylstm/transpose/perm*
T0*,
_output_shapes
:Шџџџџџџџџџ 
J
lstm/Shape_1Shapelstm/transpose*
_output_shapes
:*
T0
d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
f
lstm/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
lstm/strided_slice_1StridedSlicelstm/Shape_1lstm/strided_slice_1/stacklstm/strided_slice_1/stack_1lstm/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ѕ
lstm/TensorArrayTensorArrayV3lstm/strided_slice_1*
dtype0*
_output_shapes

:: *
identical_element_shapes(*!
tensor_array_name
input_ta_0
[
lstm/TensorArrayUnstack/ShapeShapelstm/transpose*
T0*
_output_shapes
:
u
+lstm/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-lstm/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ѕ
%lstm/TensorArrayUnstack/strided_sliceStridedSlicelstm/TensorArrayUnstack/Shape+lstm/TensorArrayUnstack/strided_slice/stack-lstm/TensorArrayUnstack/strided_slice/stack_1-lstm/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
e
#lstm/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#lstm/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
М
lstm/TensorArrayUnstack/rangeRange#lstm/TensorArrayUnstack/range/start%lstm/TensorArrayUnstack/strided_slice#lstm/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ
№
?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm/TensorArraylstm/TensorArrayUnstack/rangelstm/transposelstm/TensorArray:1*
T0*!
_class
loc:@lstm/transpose*
_output_shapes
: 
d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
f
lstm/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
lstm/strided_slice_2StridedSlicelstm/transposelstm/strided_slice_2/stacklstm/strided_slice_2/stack_1lstm/strided_slice_2/stack_2*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask*
Index0*
T0
X
lstm/ones_like/ShapeShapelstm/strided_slice_2*
T0*
_output_shapes
:
Y
lstm/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
t
lstm/ones_likeFilllstm/ones_like/Shapelstm/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ 
P
lstm/ones_like_1/ShapeShape
lstm/zeros*
_output_shapes
:*
T0
[
lstm/ones_like_1/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
z
lstm/ones_like_1Filllstm/ones_like_1/Shapelstm/ones_like_1/Const*'
_output_shapes
:џџџџџџџџџ2*
T0
g
lstm/mulMullstm/strided_slice_2lstm/ones_like*'
_output_shapes
:џџџџџџџџџ *
T0
i

lstm/mul_1Mullstm/strided_slice_2lstm/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ 
i

lstm/mul_2Mullstm/strided_slice_2lstm/ones_like*'
_output_shapes
:џџџџџџџџџ *
T0
i

lstm/mul_3Mullstm/strided_slice_2lstm/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ 
L

lstm/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
V
lstm/split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 
f
lstm/split/ReadVariableOpReadVariableOplstm/kernel*
_output_shapes
:	 Ш*
dtype0


lstm/splitSplitlstm/split/split_dimlstm/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
]
lstm/MatMulMatMullstm/mul
lstm/split*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/MatMul_1MatMul
lstm/mul_1lstm/split:1*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/MatMul_2MatMul
lstm/mul_2lstm/split:2*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/MatMul_3MatMul
lstm/mul_3lstm/split:3*'
_output_shapes
:џџџџџџџџџ2*
T0
N
lstm/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
X
lstm/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm/split_1/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш

lstm/split_1Splitlstm/split_1/split_dimlstm/split_1/ReadVariableOp*,
_output_shapes
:2:2:2:2*
	num_split*
T0
d
lstm/BiasAddBiasAddlstm/MatMullstm/split_1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/BiasAdd_1BiasAddlstm/MatMul_1lstm/split_1:1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_2BiasAddlstm/MatMul_2lstm/split_1:2*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/BiasAdd_3BiasAddlstm/MatMul_3lstm/split_1:3*
T0*'
_output_shapes
:џџџџџџџџџ2
a

lstm/mul_4Mul
lstm/zeroslstm/ones_like_1*
T0*'
_output_shapes
:џџџџџџџџџ2
a

lstm/mul_5Mul
lstm/zeroslstm/ones_like_1*'
_output_shapes
:џџџџџџџџџ2*
T0
a

lstm/mul_6Mul
lstm/zeroslstm/ones_like_1*'
_output_shapes
:џџџџџџџџџ2*
T0
a

lstm/mul_7Mul
lstm/zeroslstm/ones_like_1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_1Const*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
щ
lstm/strided_slice_3StridedSlicelstm/ReadVariableOplstm/strided_slice_3/stacklstm/strided_slice_3/stack_1lstm/strided_slice_3/stack_2*
end_mask*
_output_shapes

:22*
T0*
Index0*

begin_mask
k
lstm/MatMul_4MatMul
lstm/mul_4lstm/strided_slice_3*'
_output_shapes
:џџџџџџџџџ2*
T0
`
lstm/addAddV2lstm/BiasAddlstm/MatMul_4*'
_output_shapes
:џџџџџџџџџ2*
T0
Q
lstm/Const_2Const*
_output_shapes
: *
valueB
 *ЭЬL>*
dtype0
Q
lstm/Const_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
[

lstm/Mul_8Mullstm/addlstm/Const_2*
T0*'
_output_shapes
:џџџџџџџџџ2
]

lstm/Add_1Add
lstm/Mul_8lstm/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
a
lstm/clip_by_value/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value/MinimumMinimum
lstm/Add_1lstm/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/clip_by_value/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_valueMaximumlstm/clip_by_value/Minimumlstm/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_1ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_4/stackConst*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_1Const*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ы
lstm/strided_slice_4StridedSlicelstm/ReadVariableOp_1lstm/strided_slice_4/stacklstm/strided_slice_4/stack_1lstm/strided_slice_4/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:22
k
lstm/MatMul_5MatMul
lstm/mul_5lstm/strided_slice_4*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_2AddV2lstm/BiasAdd_1lstm/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_4Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_5Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
]

lstm/Mul_9Mul
lstm/add_2lstm/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
]

lstm/Add_3Add
lstm/Mul_9lstm/Const_5*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/clip_by_value_1/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value_1/MinimumMinimum
lstm/Add_3lstm/clip_by_value_1/Minimum/y*'
_output_shapes
:џџџџџџџџџ2*
T0
[
lstm/clip_by_value_1/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

lstm/clip_by_value_1Maximumlstm/clip_by_value_1/Minimumlstm/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/mul_10Mullstm/clip_by_value_1lstm/zeros_1*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_2ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_5/stackConst*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_5StridedSlicelstm/ReadVariableOp_2lstm/strided_slice_5/stacklstm/strided_slice_5/stack_1lstm/strided_slice_5/stack_2*
T0*
Index0*

begin_mask*
end_mask*
_output_shapes

:22
k
lstm/MatMul_6MatMul
lstm/mul_6lstm/strided_slice_5*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_4AddV2lstm/BiasAdd_2lstm/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ2
O
	lstm/TanhTanh
lstm/add_4*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/mul_11Mullstm/clip_by_value	lstm/Tanh*'
_output_shapes
:џџџџџџџџџ2*
T0
_

lstm/add_5AddV2lstm/mul_10lstm/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_3ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_6/stackConst*
_output_shapes
:*
valueB"       *
dtype0
m
lstm/strided_slice_6/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
m
lstm/strided_slice_6/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ы
lstm/strided_slice_6StridedSlicelstm/ReadVariableOp_3lstm/strided_slice_6/stacklstm/strided_slice_6/stack_1lstm/strided_slice_6/stack_2*
T0*
Index0*

begin_mask*
end_mask*
_output_shapes

:22
k
lstm/MatMul_7MatMul
lstm/mul_7lstm/strided_slice_6*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_6AddV2lstm/BiasAdd_3lstm/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_6Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_7Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
^
lstm/Mul_12Mul
lstm/add_6lstm/Const_6*'
_output_shapes
:џџџџџџџџџ2*
T0
^

lstm/Add_7Addlstm/Mul_12lstm/Const_7*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/clip_by_value_2/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value_2/MinimumMinimum
lstm/Add_7lstm/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
[
lstm/clip_by_value_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_value_2Maximumlstm/clip_by_value_2/Minimumlstm/clip_by_value_2/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Tanh_1Tanh
lstm/add_5*
T0*'
_output_shapes
:џџџџџџџџџ2
g
lstm/mul_13Mullstm/clip_by_value_2lstm/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2
Ю
lstm/TensorArray_1TensorArrayV3lstm/strided_slice_1*"
tensor_array_nameoutput_ta_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ2
K
	lstm/timeConst*
value	B : *
dtype0*
_output_shapes
: 

lstm/while/EnterEnter	lstm/time*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_1Enterlstm/TensorArray_1:1*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_2Enter
lstm/zeros*
T0*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
 
lstm/while/Enter_3Enterlstm/zeros_1*'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context*
T0*
parallel_iterations 
q
lstm/while/MergeMergelstm/while/Enterlstm/while/NextIteration*
T0*
N*
_output_shapes
: : 
w
lstm/while/Merge_1Mergelstm/while/Enter_1lstm/while/NextIteration_1*
T0*
N*
_output_shapes
: : 

lstm/while/Merge_2Mergelstm/while/Enter_2lstm/while/NextIteration_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 

lstm/while/Merge_3Mergelstm/while/Enter_3lstm/while/NextIteration_3*)
_output_shapes
:џџџџџџџџџ2: *
T0*
N
a
lstm/while/LessLesslstm/while/Mergelstm/while/Less/Enter*
_output_shapes
: *
T0
­
lstm/while/Less/EnterEnterlstm/strided_slice_1*
_output_shapes
: *(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
H
lstm/while/LoopCondLoopCondlstm/while/Less*
_output_shapes
: 

lstm/while/SwitchSwitchlstm/while/Mergelstm/while/LoopCond*
T0*#
_class
loc:@lstm/while/Merge*
_output_shapes
: : 

lstm/while/Switch_1Switchlstm/while/Merge_1lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_1*
_output_shapes
: : 
В
lstm/while/Switch_2Switchlstm/while/Merge_2lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_2*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
В
lstm/while/Switch_3Switchlstm/while/Merge_3lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_3*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
U
lstm/while/IdentityIdentitylstm/while/Switch:1*
_output_shapes
: *
T0
Y
lstm/while/Identity_1Identitylstm/while/Switch_1:1*
T0*
_output_shapes
: 
j
lstm/while/Identity_2Identitylstm/while/Switch_2:1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Identity_3Identitylstm/while/Switch_3:1*'
_output_shapes
:џџџџџџџџџ2*
T0
Ц
lstm/while/TensorArrayReadV3TensorArrayReadV3"lstm/while/TensorArrayReadV3/Enterlstm/while/Identity$lstm/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ 
К
"lstm/while/TensorArrayReadV3/EnterEnterlstm/TensorArray*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
ч
$lstm/while/TensorArrayReadV3/Enter_1Enter?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0
{
lstm/while/mulMullstm/while/TensorArrayReadV3lstm/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
З
lstm/while/mul/EnterEnterlstm/ones_like*'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
}
lstm/while/mul_1Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
}
lstm/while/mul_2Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
}
lstm/while/mul_3Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
h
lstm/while/ConstConst^lstm/while/Identity*
_output_shapes
: *
value	B :*
dtype0
r
lstm/while/split/split_dimConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

lstm/while/split/ReadVariableOpReadVariableOp%lstm/while/split/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	 Ш
Д
%lstm/while/split/ReadVariableOp/EnterEnterlstm/kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Ў
lstm/while/splitSplitlstm/while/split/split_dimlstm/while/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
o
lstm/while/MatMulMatMullstm/while/mullstm/while/split*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_1MatMullstm/while/mul_1lstm/while/split:1*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_2MatMullstm/while/mul_2lstm/while/split:2*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_3MatMullstm/while/mul_3lstm/while/split:3*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Const_1Const^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
t
lstm/while/split_1/split_dimConst^lstm/while/Identity*
value	B : *
dtype0*
_output_shapes
: 

!lstm/while/split_1/ReadVariableOpReadVariableOp'lstm/while/split_1/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes	
:Ш
Д
'lstm/while/split_1/ReadVariableOp/EnterEnter	lstm/bias*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Є
lstm/while/split_1Splitlstm/while/split_1/split_dim!lstm/while/split_1/ReadVariableOp*,
_output_shapes
:2:2:2:2*
	num_split*
T0
v
lstm/while/BiasAddBiasAddlstm/while/MatMullstm/while/split_1*'
_output_shapes
:џџџџџџџџџ2*
T0
|
lstm/while/BiasAdd_1BiasAddlstm/while/MatMul_1lstm/while/split_1:1*
T0*'
_output_shapes
:џџџџџџџџџ2
|
lstm/while/BiasAdd_2BiasAddlstm/while/MatMul_2lstm/while/split_1:2*'
_output_shapes
:џџџџџџџџџ2*
T0
|
lstm/while/BiasAdd_3BiasAddlstm/while/MatMul_3lstm/while/split_1:3*
T0*'
_output_shapes
:џџџџџџџџџ2
x
lstm/while/mul_4Mullstm/while/Identity_2lstm/while/mul_4/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
Л
lstm/while/mul_4/EnterEnterlstm/ones_like_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
x
lstm/while/mul_5Mullstm/while/Identity_2lstm/while/mul_4/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
x
lstm/while/mul_6Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2
x
lstm/while/mul_7Mullstm/while/Identity_2lstm/while/mul_4/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0

lstm/while/ReadVariableOpReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш
И
lstm/while/ReadVariableOp/EnterEnterlstm/recurrent_kernel*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0

lstm/while/strided_slice/stackConst^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

 lstm/while/strided_slice/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"    2   *
dtype0

 lstm/while/strided_slice/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
џ
lstm/while/strided_sliceStridedSlicelstm/while/ReadVariableOplstm/while/strided_slice/stack lstm/while/strided_slice/stack_1 lstm/while/strided_slice/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:22
{
lstm/while/MatMul_4MatMullstm/while/mul_4lstm/while/strided_slice*'
_output_shapes
:џџџџџџџџџ2*
T0
r
lstm/while/addAddV2lstm/while/BiasAddlstm/while/MatMul_4*'
_output_shapes
:џџџџџџџџџ2*
T0
m
lstm/while/Const_2Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_3Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
m
lstm/while/Mul_8Mullstm/while/addlstm/while/Const_2*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_1Addlstm/while/Mul_8lstm/while/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
}
"lstm/while/clip_by_value/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

 lstm/while/clip_by_value/MinimumMinimumlstm/while/Add_1"lstm/while/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/clip_by_value/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_valueMaximum lstm/while/clip_by_value/Minimumlstm/while/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_1ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_1/stackConst^lstm/while/Identity*
valueB"    2   *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_1/stack_1Const^lstm/while/Identity*
valueB"    d   *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_1/stack_2Const^lstm/while/Identity*
dtype0*
_output_shapes
:*
valueB"      

lstm/while/strided_slice_1StridedSlicelstm/while/ReadVariableOp_1 lstm/while/strided_slice_1/stack"lstm/while/strided_slice_1/stack_1"lstm/while/strided_slice_1/stack_2*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes

:22
}
lstm/while/MatMul_5MatMullstm/while/mul_5lstm/while/strided_slice_1*'
_output_shapes
:џџџџџџџџџ2*
T0
v
lstm/while/add_2AddV2lstm/while/BiasAdd_1lstm/while/MatMul_5*'
_output_shapes
:џџџџџџџџџ2*
T0
m
lstm/while/Const_4Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_5Const^lstm/while/Identity*
_output_shapes
: *
valueB
 *   ?*
dtype0
o
lstm/while/Mul_9Mullstm/while/add_2lstm/while/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_3Addlstm/while/Mul_9lstm/while/Const_5*
T0*'
_output_shapes
:џџџџџџџџџ2

$lstm/while/clip_by_value_1/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_1/MinimumMinimumlstm/while/Add_3$lstm/while/clip_by_value_1/Minimum/y*'
_output_shapes
:џџџџџџџџџ2*
T0
w
lstm/while/clip_by_value_1/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_1Maximum"lstm/while/clip_by_value_1/Minimumlstm/while/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
}
lstm/while/mul_10Mullstm/while/clip_by_value_1lstm/while/Identity_3*'
_output_shapes
:џџџџџџџџџ2*
T0

lstm/while/ReadVariableOp_2ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_2/stackConst^lstm/while/Identity*
valueB"    d   *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_2/stack_1Const^lstm/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_2/stack_2Const^lstm/while/Identity*
dtype0*
_output_shapes
:*
valueB"      

lstm/while/strided_slice_2StridedSlicelstm/while/ReadVariableOp_2 lstm/while/strided_slice_2/stack"lstm/while/strided_slice_2/stack_1"lstm/while/strided_slice_2/stack_2*
end_mask*
_output_shapes

:22*

begin_mask*
Index0*
T0
}
lstm/while/MatMul_6MatMullstm/while/mul_6lstm/while/strided_slice_2*
T0*'
_output_shapes
:џџџџџџџџџ2
v
lstm/while/add_4AddV2lstm/while/BiasAdd_2lstm/while/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ2
[
lstm/while/TanhTanhlstm/while/add_4*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/mul_11Mullstm/while/clip_by_valuelstm/while/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ2
q
lstm/while/add_5AddV2lstm/while/mul_10lstm/while/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_3ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
_output_shapes
:	2Ш*
dtype0

 lstm/while/strided_slice_3/stackConst^lstm/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_1Const^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:

lstm/while/strided_slice_3StridedSlicelstm/while/ReadVariableOp_3 lstm/while/strided_slice_3/stack"lstm/while/strided_slice_3/stack_1"lstm/while/strided_slice_3/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:22
}
lstm/while/MatMul_7MatMullstm/while/mul_7lstm/while/strided_slice_3*
T0*'
_output_shapes
:џџџџџџџџџ2
v
lstm/while/add_6AddV2lstm/while/BiasAdd_3lstm/while/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_6Const^lstm/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL>
m
lstm/while/Const_7Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
p
lstm/while/Mul_12Mullstm/while/add_6lstm/while/Const_6*
T0*'
_output_shapes
:џџџџџџџџџ2
p
lstm/while/Add_7Addlstm/while/Mul_12lstm/while/Const_7*'
_output_shapes
:џџџџџџџџџ2*
T0

$lstm/while/clip_by_value_2/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_2/MinimumMinimumlstm/while/Add_7$lstm/while/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
w
lstm/while/clip_by_value_2/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_2Maximum"lstm/while/clip_by_value_2/Minimumlstm/while/clip_by_value_2/y*
T0*'
_output_shapes
:џџџџџџџџџ2
]
lstm/while/Tanh_1Tanhlstm/while/add_5*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/while/mul_13Mullstm/while/clip_by_value_2lstm/while/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2

.lstm/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV34lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm/while/Identitylstm/while/mul_13lstm/while/Identity_1*
T0*$
_class
loc:@lstm/while/mul_13*
_output_shapes
: 
є
4lstm/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm/TensorArray_1*
T0*$
_class
loc:@lstm/while/mul_13*
parallel_iterations *
is_constant(*(

frame_namelstm/while/while_context*
_output_shapes
:
j
lstm/while/add_8/yConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lstm/while/add_8AddV2lstm/while/Identitylstm/while/add_8/y*
_output_shapes
: *
T0
\
lstm/while/NextIterationNextIterationlstm/while/add_8*
T0*
_output_shapes
: 
|
lstm/while/NextIteration_1NextIteration.lstm/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
p
lstm/while/NextIteration_2NextIterationlstm/while/mul_13*
T0*'
_output_shapes
:џџџџџџџџџ2
o
lstm/while/NextIteration_3NextIterationlstm/while/add_5*
T0*'
_output_shapes
:џџџџџџџџџ2
K
lstm/while/ExitExitlstm/while/Switch*
T0*
_output_shapes
: 
O
lstm/while/Exit_1Exitlstm/while/Switch_1*
_output_shapes
: *
T0
`
lstm/while/Exit_2Exitlstm/while/Switch_2*
T0*'
_output_shapes
:џџџџџџџџџ2
`
lstm/while/Exit_3Exitlstm/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ2
Ђ
'lstm/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm/TensorArray_1lstm/while/Exit_1*%
_class
loc:@lstm/TensorArray_1*
_output_shapes
: 

!lstm/TensorArrayStack/range/startConst*
value	B : *%
_class
loc:@lstm/TensorArray_1*
dtype0*
_output_shapes
: 

!lstm/TensorArrayStack/range/deltaConst*
value	B :*%
_class
loc:@lstm/TensorArray_1*
dtype0*
_output_shapes
: 
п
lstm/TensorArrayStack/rangeRange!lstm/TensorArrayStack/range/start'lstm/TensorArrayStack/TensorArraySizeV3!lstm/TensorArrayStack/range/delta*%
_class
loc:@lstm/TensorArray_1*#
_output_shapes
:џџџџџџџџџ

)lstm/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm/TensorArray_1lstm/TensorArrayStack/rangelstm/while/Exit_1*
dtype0*,
_output_shapes
:Шџџџџџџџџџ2*$
element_shape:џџџџџџџџџ2*%
_class
loc:@lstm/TensorArray_1
m
lstm/strided_slice_7/stackConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
f
lstm/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ў
lstm/strided_slice_7StridedSlice)lstm/TensorArrayStack/TensorArrayGatherV3lstm/strided_slice_7/stacklstm/strided_slice_7/stack_1lstm/strided_slice_7/stack_2*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask*
Index0*
T0
j
lstm/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm/transpose_1	Transpose)lstm/TensorArrayStack/TensorArrayGatherV3lstm/transpose_1/perm*
T0*,
_output_shapes
:џџџџџџџџџШ2
d
dropout/IdentityIdentitylstm/strided_slice_7*
T0*'
_output_shapes
:џџџџџџџџџ2

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"2      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *SЏО*
_class
loc:@dense/kernel

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *SЏ>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Ь
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:2
Ю
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2
в
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2

dense/kernelVarHandleOp*
_output_shapes
: *
shape
:2*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2

dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:


dense/biasVarHandleOp*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2
w
dense/MatMulMatMuldropout/Identitydense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Y
dense/SigmoidSigmoiddense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0

dense_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
shape: *
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@count
x
countVarHandleOp*
_output_shapes
: *
shape: *
shared_namecount*
_class

loc:@count*
dtype0
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
W
metrics/acc/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
s
metrics/acc/GreaterGreaterdense/Sigmoidmetrics/acc/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
p
metrics/acc/Cast_1Castmetrics/acc/Greater*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
w
metrics/acc/EqualEqualdense_targetmetrics/acc/Cast_1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
w
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
~
metrics/acc/MeanMeanmetrics/acc/Cast_2"metrics/acc/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
\
metrics/acc/SumSummetrics/acc/Meanmetrics/acc/Const*
_output_shapes
: *
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
K
metrics/acc/SizeSizemetrics/acc/Mean*
T0*
_output_shapes
: 
\
metrics/acc/Cast_3Castmetrics/acc/Size*

SrcT0*
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
Z
loss/dense_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
(loss/dense_loss/logistic_loss/zeros_like	ZerosLikedense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
*loss/dense_loss/logistic_loss/GreaterEqualGreaterEqualdense/BiasAdd(loss/dense_loss/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0
Х
$loss/dense_loss/logistic_loss/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualdense/BiasAdd(loss/dense_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
i
!loss/dense_loss/logistic_loss/NegNegdense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
Р
&loss/dense_loss/logistic_loss/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqual!loss/dense_loss/logistic_loss/Negdense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0

!loss/dense_loss/logistic_loss/mulMuldense/BiasAdddense_target*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Ќ
!loss/dense_loss/logistic_loss/subSub$loss/dense_loss/logistic_loss/Select!loss/dense_loss/logistic_loss/mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

!loss/dense_loss/logistic_loss/ExpExp&loss/dense_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ

#loss/dense_loss/logistic_loss/Log1pLog1p!loss/dense_loss/logistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
loss/dense_loss/logistic_lossAdd!loss/dense_loss/logistic_loss/sub#loss/dense_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
q
&loss/dense_loss/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

loss/dense_loss/MeanMeanloss/dense_loss/logistic_loss&loss/dense_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ
i
$loss/dense_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Rloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_loss/Mean*
_output_shapes
:*
T0

Ploss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
h
`loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ц
?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_loss/Meana^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
ч
?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ConstConsta^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ё
9loss/dense_loss/weighted_loss/broadcast_weights/ones_likeFill?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Shape?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
Х
/loss/dense_loss/weighted_loss/broadcast_weightsMul$loss/dense_loss/weighted_loss/Cast/x9loss/dense_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ

!loss/dense_loss/weighted_loss/MulMulloss/dense_loss/Mean/loss/dense_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
w
loss/dense_loss/SumSum!loss/dense_loss/weighted_loss/Mulloss/dense_loss/Const_1*
T0*
_output_shapes
: 
h
loss/dense_loss/num_elementsSize!loss/dense_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
w
!loss/dense_loss/num_elements/CastCastloss/dense_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
Z
loss/dense_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
k
loss/dense_loss/Sum_1Sumloss/dense_loss/Sumloss/dense_loss/Const_2*
T0*
_output_shapes
: 
|
loss/dense_loss/valueDivNoNanloss/dense_loss/Sum_1!loss/dense_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
S
loss/mulMul
loss/mul/xloss/dense_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: 
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bmodel

RestoreV2/tensor_namesConst"/device:CPU:0*Љ
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
~
RestoreV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
Љ
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2	
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
Q
AssignVariableOpAssignVariableOpembedding/embeddingsIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
T0*
_output_shapes
:
J
AssignVariableOp_1AssignVariableOp	lstm/bias
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
_output_shapes
:*
T0
L
AssignVariableOp_2AssignVariableOplstm/kernel
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
_output_shapes
:*
T0
V
AssignVariableOp_3AssignVariableOplstm/recurrent_kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
T0*
_output_shapes
:
K
AssignVariableOp_4AssignVariableOp
dense/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
_output_shapes
:*
T0
M
AssignVariableOp_5AssignVariableOpdense/kernel
Identity_5*
dtype0
F

Identity_6IdentityRestoreV2:6*
T0	*
_output_shapes
:
E
AssignVariableOp_6AssignVariableOpiter
Identity_6*
dtype0	
F
VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense/kernel*
_output_shapes
: 
I
VarIsInitializedOp_2VarIsInitializedOptotal*
_output_shapes
: 
O
VarIsInitializedOp_3VarIsInitializedOplstm/kernel*
_output_shapes
: 
M
VarIsInitializedOp_4VarIsInitializedOp	lstm/bias*
_output_shapes
: 
Y
VarIsInitializedOp_5VarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
N
VarIsInitializedOp_7VarIsInitializedOp
dense/bias*
_output_shapes
: 
X
VarIsInitializedOp_8VarIsInitializedOpembedding/embeddings*
_output_shapes
: 
Ч
initNoOp^count/Assign^dense/bias/Assign^dense/kernel/Assign^embedding/embeddings/Assign^iter/Assign^lstm/bias/Assign^lstm/kernel/Assign^lstm/recurrent_kernel/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
C

Identity_7Identity
div_no_nan*
_output_shapes
: *
T0
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
і
save/SaveV2/tensor_namesConst*
_output_shapes
:*Љ
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
q
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*!
valueBB B B B B B B 
с
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices(embedding/embeddings/Read/ReadVariableOplstm/bias/Read/ReadVariableOplstm/kernel/Read/ReadVariableOp)lstm/recurrent_kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes
	2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Љ
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
Н
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
[
save/AssignVariableOpAssignVariableOpembedding/embeddingssave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
T
save/AssignVariableOp_1AssignVariableOp	lstm/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
V
save/AssignVariableOp_2AssignVariableOplstm/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
`
save/AssignVariableOp_3AssignVariableOplstm/recurrent_kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0	*
_output_shapes
:
O
save/AssignVariableOp_6AssignVariableOpitersave/Identity_6*
dtype0	
Ь
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6
,
init_1NoOp^count/Assign^total/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
trainable_variablesѓ№

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08"Х
local_variablesБЎ
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"в
	variablesФС

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"Ѓ$
while_context$$
$
lstm/while/while_context  *lstm/while/LoopCond:02lstm/while/Merge:0:lstm/while/Identity:0Blstm/while/Exit:0Blstm/while/Exit_1:0Blstm/while/Exit_2:0Blstm/while/Exit_3:0Jў!
lstm/TensorArray:0
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm/TensorArray_1:0
lstm/bias:0
lstm/kernel:0
lstm/ones_like:0
lstm/ones_like_1:0
lstm/recurrent_kernel:0
lstm/strided_slice_1:0
lstm/while/Add_1:0
lstm/while/Add_3:0
lstm/while/Add_7:0
lstm/while/BiasAdd:0
lstm/while/BiasAdd_1:0
lstm/while/BiasAdd_2:0
lstm/while/BiasAdd_3:0
lstm/while/Const:0
lstm/while/Const_1:0
lstm/while/Const_2:0
lstm/while/Const_3:0
lstm/while/Const_4:0
lstm/while/Const_5:0
lstm/while/Const_6:0
lstm/while/Const_7:0
lstm/while/Enter:0
lstm/while/Enter_1:0
lstm/while/Enter_2:0
lstm/while/Enter_3:0
lstm/while/Exit:0
lstm/while/Exit_1:0
lstm/while/Exit_2:0
lstm/while/Exit_3:0
lstm/while/Identity:0
lstm/while/Identity_1:0
lstm/while/Identity_2:0
lstm/while/Identity_3:0
lstm/while/Less/Enter:0
lstm/while/Less:0
lstm/while/LoopCond:0
lstm/while/MatMul:0
lstm/while/MatMul_1:0
lstm/while/MatMul_2:0
lstm/while/MatMul_3:0
lstm/while/MatMul_4:0
lstm/while/MatMul_5:0
lstm/while/MatMul_6:0
lstm/while/MatMul_7:0
lstm/while/Merge:0
lstm/while/Merge:1
lstm/while/Merge_1:0
lstm/while/Merge_1:1
lstm/while/Merge_2:0
lstm/while/Merge_2:1
lstm/while/Merge_3:0
lstm/while/Merge_3:1
lstm/while/Mul_12:0
lstm/while/Mul_8:0
lstm/while/Mul_9:0
lstm/while/NextIteration:0
lstm/while/NextIteration_1:0
lstm/while/NextIteration_2:0
lstm/while/NextIteration_3:0
!lstm/while/ReadVariableOp/Enter:0
lstm/while/ReadVariableOp:0
lstm/while/ReadVariableOp_1:0
lstm/while/ReadVariableOp_2:0
lstm/while/ReadVariableOp_3:0
lstm/while/Switch:0
lstm/while/Switch:1
lstm/while/Switch_1:0
lstm/while/Switch_1:1
lstm/while/Switch_2:0
lstm/while/Switch_2:1
lstm/while/Switch_3:0
lstm/while/Switch_3:1
lstm/while/Tanh:0
lstm/while/Tanh_1:0
$lstm/while/TensorArrayReadV3/Enter:0
&lstm/while/TensorArrayReadV3/Enter_1:0
lstm/while/TensorArrayReadV3:0
6lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
0lstm/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm/while/add:0
lstm/while/add_2:0
lstm/while/add_4:0
lstm/while/add_5:0
lstm/while/add_6:0
lstm/while/add_8/y:0
lstm/while/add_8:0
$lstm/while/clip_by_value/Minimum/y:0
"lstm/while/clip_by_value/Minimum:0
lstm/while/clip_by_value/y:0
lstm/while/clip_by_value:0
&lstm/while/clip_by_value_1/Minimum/y:0
$lstm/while/clip_by_value_1/Minimum:0
lstm/while/clip_by_value_1/y:0
lstm/while/clip_by_value_1:0
&lstm/while/clip_by_value_2/Minimum/y:0
$lstm/while/clip_by_value_2/Minimum:0
lstm/while/clip_by_value_2/y:0
lstm/while/clip_by_value_2:0
lstm/while/mul/Enter:0
lstm/while/mul:0
lstm/while/mul_10:0
lstm/while/mul_11:0
lstm/while/mul_13:0
lstm/while/mul_1:0
lstm/while/mul_2:0
lstm/while/mul_3:0
lstm/while/mul_4/Enter:0
lstm/while/mul_4:0
lstm/while/mul_5:0
lstm/while/mul_6:0
lstm/while/mul_7:0
'lstm/while/split/ReadVariableOp/Enter:0
!lstm/while/split/ReadVariableOp:0
lstm/while/split/split_dim:0
lstm/while/split:0
lstm/while/split:1
lstm/while/split:2
lstm/while/split:3
)lstm/while/split_1/ReadVariableOp/Enter:0
#lstm/while/split_1/ReadVariableOp:0
lstm/while/split_1/split_dim:0
lstm/while/split_1:0
lstm/while/split_1:1
lstm/while/split_1:2
lstm/while/split_1:3
 lstm/while/strided_slice/stack:0
"lstm/while/strided_slice/stack_1:0
"lstm/while/strided_slice/stack_2:0
lstm/while/strided_slice:0
"lstm/while/strided_slice_1/stack:0
$lstm/while/strided_slice_1/stack_1:0
$lstm/while/strided_slice_1/stack_2:0
lstm/while/strided_slice_1:0
"lstm/while/strided_slice_2/stack:0
$lstm/while/strided_slice_2/stack_1:0
$lstm/while/strided_slice_2/stack_2:0
lstm/while/strided_slice_2:0
"lstm/while/strided_slice_3/stack:0
$lstm/while/strided_slice_3/stack_1:0
$lstm/while/strided_slice_3/stack_2:0
lstm/while/strided_slice_3:0N
lstm/TensorArray_1:06lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0k
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0&lstm/while/TensorArrayReadV3/Enter_1:0.
lstm/ones_like_1:0lstm/while/mul_4/Enter:08
lstm/kernel:0'lstm/while/split/ReadVariableOp/Enter:08
lstm/bias:0)lstm/while/split_1/ReadVariableOp/Enter:0*
lstm/ones_like:0lstm/while/mul/Enter:01
lstm/strided_slice_1:0lstm/while/Less/Enter:0:
lstm/TensorArray:0$lstm/while/TensorArrayReadV3/Enter:0<
lstm/recurrent_kernel:0!lstm/while/ReadVariableOp/Enter:0Rlstm/while/Enter:0Rlstm/while/Enter_1:0Rlstm/while/Enter_2:0Rlstm/while/Enter_3:0*й
evalа
>
dense_target.
dense_target:0џџџџџџџџџџџџџџџџџџ
<
embedding_input)
embedding_input:0џџџџџџџџџШ4
metrics/acc/update_op
metric_op_wrapper:0 '
metrics/acc/value
Identity_7:0 
loss

loss/mul:0 ;
predictions/dense&
dense/Sigmoid:0џџџџџџџџџtensorflow/supervised/eval*@
__saved_model_init_op'%
__saved_model_init_op
init_1ь
М""
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
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
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
і
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.15.22v1.15.2-0-g5d80e1e8e68п
t
embedding_inputPlaceholder*
dtype0*(
_output_shapes
:џџџџџџџџџШ*
shape:џџџџџџџџџШ
Џ
5embedding/embeddings/Initializer/random_uniform/shapeConst*
valueB"      *'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:
Ё
3embedding/embeddings/Initializer/random_uniform/minConst*
valueB
 *ЭЬLН*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
Ё
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *ЭЬL=*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
х
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *
T0*'
_class
loc:@embedding/embeddings
ю
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
_output_shapes
: *
T0*'
_class
loc:@embedding/embeddings

3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
ѓ
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings*
_output_shapes
:	 
Ў
embedding/embeddingsVarHandleOp*
_output_shapes
: *
shape:	 *%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
dtype0
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 

embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0*
_output_shapes
:	 
i
embedding/CastCastembedding_input*

SrcT0*(
_output_shapes
:џџџџџџџџџШ*

DstT0
Ц
embedding/embedding_lookupResourceGatherembedding/embeddingsembedding/Cast*
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0*,
_output_shapes
:џџџџџџџџџШ 
Ћ
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup*
T0*'
_class
loc:@embedding/embeddings*,
_output_shapes
:џџџџџџџџџШ 

%embedding/embedding_lookup/Identity_1Identity#embedding/embedding_lookup/Identity*
T0*,
_output_shapes
:џџџџџџџџџШ 

spatial_dropout1d/IdentityIdentity%embedding/embedding_lookup/Identity_1*,
_output_shapes
:џџџџџџџџџШ *
T0

,lstm/kernel/Initializer/random_uniform/shapeConst*
valueB"    Ш   *
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:

*lstm/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *.­$О*
_class
loc:@lstm/kernel

*lstm/kernel/Initializer/random_uniform/maxConst*
valueB
 *.­$>*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 
Ъ
4lstm/kernel/Initializer/random_uniform/RandomUniformRandomUniform,lstm/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:	 Ш
Ъ
*lstm/kernel/Initializer/random_uniform/subSub*lstm/kernel/Initializer/random_uniform/max*lstm/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@lstm/kernel*
_output_shapes
: 
н
*lstm/kernel/Initializer/random_uniform/mulMul4lstm/kernel/Initializer/random_uniform/RandomUniform*lstm/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш
Я
&lstm/kernel/Initializer/random_uniformAdd*lstm/kernel/Initializer/random_uniform/mul*lstm/kernel/Initializer/random_uniform/min*
_class
loc:@lstm/kernel*
_output_shapes
:	 Ш*
T0

lstm/kernelVarHandleOp*
shared_namelstm/kernel*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: *
shape:	 Ш
g
,lstm/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/kernel*
_output_shapes
: 
h
lstm/kernel/AssignAssignVariableOplstm/kernel&lstm/kernel/Initializer/random_uniform*
dtype0
l
lstm/kernel/Read/ReadVariableOpReadVariableOplstm/kernel*
dtype0*
_output_shapes
:	 Ш
А
5lstm/recurrent_kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"Ш   2   *(
_class
loc:@lstm/recurrent_kernel
Ѓ
4lstm/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
Ѕ
6lstm/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
є
Dlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5lstm/recurrent_kernel/Initializer/random_normal/shape*
T0*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:	Ш2

3lstm/recurrent_kernel/Initializer/random_normal/mulMulDlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormal6lstm/recurrent_kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
ѕ
/lstm/recurrent_kernel/Initializer/random_normalAdd3lstm/recurrent_kernel/Initializer/random_normal/mul4lstm/recurrent_kernel/Initializer/random_normal/mean*
_output_shapes
:	Ш2*
T0*(
_class
loc:@lstm/recurrent_kernel
Й
$lstm/recurrent_kernel/Initializer/QrQr/lstm/recurrent_kernel/Initializer/random_normal*
T0*(
_class
loc:@lstm/recurrent_kernel*)
_output_shapes
:	Ш2:22
­
*lstm/recurrent_kernel/Initializer/DiagPartDiagPart&lstm/recurrent_kernel/Initializer/Qr:1*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:2
Љ
&lstm/recurrent_kernel/Initializer/SignSign*lstm/recurrent_kernel/Initializer/DiagPart*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:2
Ю
%lstm/recurrent_kernel/Initializer/mulMul$lstm/recurrent_kernel/Initializer/Qr&lstm/recurrent_kernel/Initializer/Sign*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	Ш2
М
Alstm/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:

<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose%lstm/recurrent_kernel/Initializer/mulAlstm/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
_output_shapes
:	2Ш*
T0*(
_class
loc:@lstm/recurrent_kernel
Њ
/lstm/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"2   Ш   *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
ї
)lstm/recurrent_kernel/Initializer/ReshapeReshape<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose/lstm/recurrent_kernel/Initializer/Reshape/shape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш

)lstm/recurrent_kernel/Initializer/mul_1/xConst*
_output_shapes
: *
valueB
 *  ?*(
_class
loc:@lstm/recurrent_kernel*
dtype0
и
'lstm/recurrent_kernel/Initializer/mul_1Mul)lstm/recurrent_kernel/Initializer/mul_1/x)lstm/recurrent_kernel/Initializer/Reshape*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes
:	2Ш
Б
lstm/recurrent_kernelVarHandleOp*
shape:	2Ш*&
shared_namelstm/recurrent_kernel*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
{
6lstm/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
}
lstm/recurrent_kernel/AssignAssignVariableOplstm/recurrent_kernel'lstm/recurrent_kernel/Initializer/mul_1*
dtype0

)lstm/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш

lstm/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:2*
valueB2*    *
_class
loc:@lstm/bias

lstm/bias/Initializer/onesConst*
valueB2*  ?*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
:2

lstm/bias/Initializer/zeros_1Const*
dtype0*
_output_shapes
:d*
valueBd*    *
_class
loc:@lstm/bias

!lstm/bias/Initializer/concat/axisConst*
value	B : *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: 
№
lstm/bias/Initializer/concatConcatV2lstm/bias/Initializer/zeroslstm/bias/Initializer/oneslstm/bias/Initializer/zeros_1!lstm/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm/bias*
N*
_output_shapes	
:Ш

	lstm/biasVarHandleOp*
_output_shapes
: *
shape:Ш*
shared_name	lstm/bias*
_class
loc:@lstm/bias*
dtype0
c
*lstm/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	lstm/bias*
_output_shapes
: 
Z
lstm/bias/AssignAssignVariableOp	lstm/biaslstm/bias/Initializer/concat*
dtype0
d
lstm/bias/Read/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш
T

lstm/ShapeShapespatial_dropout1d/Identity*
T0*
_output_shapes
:
b
lstm/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
d
lstm/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
lstm/strided_sliceStridedSlice
lstm/Shapelstm/strided_slice/stacklstm/strided_slice/stack_1lstm/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
R
lstm/zeros/mul/yConst*
value	B :2*
dtype0*
_output_shapes
: 
\
lstm/zeros/mulMullstm/strided_slicelstm/zeros/mul/y*
T0*
_output_shapes
: 
T
lstm/zeros/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
[
lstm/zeros/LessLesslstm/zeros/mullstm/zeros/Less/y*
_output_shapes
: *
T0
U
lstm/zeros/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
p
lstm/zeros/packedPacklstm/strided_slicelstm/zeros/packed/1*
T0*
N*
_output_shapes
:
U
lstm/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i

lstm/zerosFilllstm/zeros/packedlstm/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
T
lstm/zeros_1/mul/yConst*
value	B :2*
dtype0*
_output_shapes
: 
`
lstm/zeros_1/mulMullstm/strided_slicelstm/zeros_1/mul/y*
T0*
_output_shapes
: 
V
lstm/zeros_1/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
a
lstm/zeros_1/LessLesslstm/zeros_1/mullstm/zeros_1/Less/y*
T0*
_output_shapes
: 
W
lstm/zeros_1/packed/1Const*
value	B :2*
dtype0*
_output_shapes
: 
t
lstm/zeros_1/packedPacklstm/strided_slicelstm/zeros_1/packed/1*
T0*
N*
_output_shapes
:
W
lstm/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
lstm/zeros_1Filllstm/zeros_1/packedlstm/zeros_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm/transpose	Transposespatial_dropout1d/Identitylstm/transpose/perm*,
_output_shapes
:Шџџџџџџџџџ *
T0
J
lstm/Shape_1Shapelstm/transpose*
T0*
_output_shapes
:
d
lstm/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
lstm/strided_slice_1StridedSlicelstm/Shape_1lstm/strided_slice_1/stacklstm/strided_slice_1/stack_1lstm/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
lstm/TensorArrayTensorArrayV3lstm/strided_slice_1*
identical_element_shapes(*!
tensor_array_name
input_ta_0*
dtype0*
_output_shapes

:: 
[
lstm/TensorArrayUnstack/ShapeShapelstm/transpose*
_output_shapes
:*
T0
u
+lstm/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ѕ
%lstm/TensorArrayUnstack/strided_sliceStridedSlicelstm/TensorArrayUnstack/Shape+lstm/TensorArrayUnstack/strided_slice/stack-lstm/TensorArrayUnstack/strided_slice/stack_1-lstm/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
e
#lstm/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#lstm/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
М
lstm/TensorArrayUnstack/rangeRange#lstm/TensorArrayUnstack/range/start%lstm/TensorArrayUnstack/strided_slice#lstm/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ
№
?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm/TensorArraylstm/TensorArrayUnstack/rangelstm/transposelstm/TensorArray:1*
_output_shapes
: *
T0*!
_class
loc:@lstm/transpose
d
lstm/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
у
lstm/strided_slice_2StridedSlicelstm/transposelstm/strided_slice_2/stacklstm/strided_slice_2/stack_1lstm/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ 
X
lstm/ones_like/ShapeShapelstm/strided_slice_2*
T0*
_output_shapes
:
Y
lstm/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
t
lstm/ones_likeFilllstm/ones_like/Shapelstm/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ 
P
lstm/ones_like_1/ShapeShape
lstm/zeros*
T0*
_output_shapes
:
[
lstm/ones_like_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
z
lstm/ones_like_1Filllstm/ones_like_1/Shapelstm/ones_like_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ2
g
lstm/mulMullstm/strided_slice_2lstm/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ 
i

lstm/mul_1Mullstm/strided_slice_2lstm/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ 
i

lstm/mul_2Mullstm/strided_slice_2lstm/ones_like*'
_output_shapes
:џџџџџџџџџ *
T0
i

lstm/mul_3Mullstm/strided_slice_2lstm/ones_like*'
_output_shapes
:џџџџџџџџџ *
T0
L

lstm/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
V
lstm/split/split_dimConst*
_output_shapes
: *
value	B :*
dtype0
f
lstm/split/ReadVariableOpReadVariableOplstm/kernel*
dtype0*
_output_shapes
:	 Ш


lstm/splitSplitlstm/split/split_dimlstm/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
]
lstm/MatMulMatMullstm/mul
lstm/split*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/MatMul_1MatMul
lstm/mul_1lstm/split:1*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/MatMul_2MatMul
lstm/mul_2lstm/split:2*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/MatMul_3MatMul
lstm/mul_3lstm/split:3*
T0*'
_output_shapes
:џџџџџџџџџ2
N
lstm/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
X
lstm/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm/split_1/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:Ш

lstm/split_1Splitlstm/split_1/split_dimlstm/split_1/ReadVariableOp*
T0*,
_output_shapes
:2:2:2:2*
	num_split
d
lstm/BiasAddBiasAddlstm/MatMullstm/split_1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_1BiasAddlstm/MatMul_1lstm/split_1:1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/BiasAdd_2BiasAddlstm/MatMul_2lstm/split_1:2*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/BiasAdd_3BiasAddlstm/MatMul_3lstm/split_1:3*
T0*'
_output_shapes
:џџџџџџџџџ2
a

lstm/mul_4Mul
lstm/zeroslstm/ones_like_1*'
_output_shapes
:џџџџџџџџџ2*
T0
a

lstm/mul_5Mul
lstm/zeroslstm/ones_like_1*
T0*'
_output_shapes
:џџџџџџџџџ2
a

lstm/mul_6Mul
lstm/zeroslstm/ones_like_1*
T0*'
_output_shapes
:џџџџџџџџџ2
a

lstm/mul_7Mul
lstm/zeroslstm/ones_like_1*'
_output_shapes
:џџџџџџџџџ2*
T0
j
lstm/ReadVariableOpReadVariableOplstm/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0
k
lstm/strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_1Const*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
щ
lstm/strided_slice_3StridedSlicelstm/ReadVariableOplstm/strided_slice_3/stacklstm/strided_slice_3/stack_1lstm/strided_slice_3/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:22
k
lstm/MatMul_4MatMul
lstm/mul_4lstm/strided_slice_3*
T0*'
_output_shapes
:џџџџџџџџџ2
`
lstm/addAddV2lstm/BiasAddlstm/MatMul_4*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_2Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
[

lstm/Mul_8Mullstm/addlstm/Const_2*
T0*'
_output_shapes
:џџџџџџџџџ2
]

lstm/Add_1Add
lstm/Mul_8lstm/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
a
lstm/clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

lstm/clip_by_value/MinimumMinimum
lstm/Add_1lstm/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Y
lstm/clip_by_value/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_valueMaximumlstm/clip_by_value/Minimumlstm/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_1ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_4/stackConst*
valueB"    2   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_1Const*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_4StridedSlicelstm/ReadVariableOp_1lstm/strided_slice_4/stacklstm/strided_slice_4/stack_1lstm/strided_slice_4/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:22
k
lstm/MatMul_5MatMul
lstm/mul_5lstm/strided_slice_4*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_2AddV2lstm/BiasAdd_1lstm/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Const_4Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *   ?
]

lstm/Mul_9Mul
lstm/add_2lstm/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
]

lstm/Add_3Add
lstm/Mul_9lstm/Const_5*'
_output_shapes
:џџџџџџџџџ2*
T0
c
lstm/clip_by_value_1/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

lstm/clip_by_value_1/MinimumMinimum
lstm/Add_3lstm/clip_by_value_1/Minimum/y*'
_output_shapes
:џџџџџџџџџ2*
T0
[
lstm/clip_by_value_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

lstm/clip_by_value_1Maximumlstm/clip_by_value_1/Minimumlstm/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
h
lstm/mul_10Mullstm/clip_by_value_1lstm/zeros_1*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_2ReadVariableOplstm/recurrent_kernel*
dtype0*
_output_shapes
:	2Ш
k
lstm/strided_slice_5/stackConst*
valueB"    d   *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_5StridedSlicelstm/ReadVariableOp_2lstm/strided_slice_5/stacklstm/strided_slice_5/stack_1lstm/strided_slice_5/stack_2*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes

:22
k
lstm/MatMul_6MatMul
lstm/mul_6lstm/strided_slice_5*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_4AddV2lstm/BiasAdd_2lstm/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ2
O
	lstm/TanhTanh
lstm/add_4*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/mul_11Mullstm/clip_by_value	lstm/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ2
_

lstm/add_5AddV2lstm/mul_10lstm/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2
l
lstm/ReadVariableOp_3ReadVariableOplstm/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0
k
lstm/strided_slice_6/stackConst*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
ы
lstm/strided_slice_6StridedSlicelstm/ReadVariableOp_3lstm/strided_slice_6/stacklstm/strided_slice_6/stack_1lstm/strided_slice_6/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:22
k
lstm/MatMul_7MatMul
lstm/mul_7lstm/strided_slice_6*
T0*'
_output_shapes
:џџџџџџџџџ2
d

lstm/add_6AddV2lstm/BiasAdd_3lstm/MatMul_7*'
_output_shapes
:џџџџџџџџџ2*
T0
Q
lstm/Const_6Const*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Q
lstm/Const_7Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
^
lstm/Mul_12Mul
lstm/add_6lstm/Const_6*
T0*'
_output_shapes
:џџџџџџџџџ2
^

lstm/Add_7Addlstm/Mul_12lstm/Const_7*
T0*'
_output_shapes
:џџџџџџџџџ2
c
lstm/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

lstm/clip_by_value_2/MinimumMinimum
lstm/Add_7lstm/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
[
lstm/clip_by_value_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/clip_by_value_2Maximumlstm/clip_by_value_2/Minimumlstm/clip_by_value_2/y*
T0*'
_output_shapes
:џџџџџџџџџ2
Q
lstm/Tanh_1Tanh
lstm/add_5*
T0*'
_output_shapes
:џџџџџџџџџ2
g
lstm/mul_13Mullstm/clip_by_value_2lstm/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2
Ю
lstm/TensorArray_1TensorArrayV3lstm/strided_slice_1*"
tensor_array_nameoutput_ta_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ2
K
	lstm/timeConst*
_output_shapes
: *
value	B : *
dtype0

lstm/while/EnterEnter	lstm/time*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_1Enterlstm/TensorArray_1:1*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/Enter_2Enter
lstm/zeros*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context*
T0
 
lstm/while/Enter_3Enterlstm/zeros_1*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context*
T0
q
lstm/while/MergeMergelstm/while/Enterlstm/while/NextIteration*
T0*
N*
_output_shapes
: : 
w
lstm/while/Merge_1Mergelstm/while/Enter_1lstm/while/NextIteration_1*
N*
_output_shapes
: : *
T0

lstm/while/Merge_2Mergelstm/while/Enter_2lstm/while/NextIteration_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 

lstm/while/Merge_3Mergelstm/while/Enter_3lstm/while/NextIteration_3*
T0*
N*)
_output_shapes
:џџџџџџџџџ2: 
a
lstm/while/LessLesslstm/while/Mergelstm/while/Less/Enter*
_output_shapes
: *
T0
­
lstm/while/Less/EnterEnterlstm/strided_slice_1*
_output_shapes
: *(

frame_namelstm/while/while_context*
T0*
is_constant(*
parallel_iterations 
H
lstm/while/LoopCondLoopCondlstm/while/Less*
_output_shapes
: 

lstm/while/SwitchSwitchlstm/while/Mergelstm/while/LoopCond*
_output_shapes
: : *
T0*#
_class
loc:@lstm/while/Merge

lstm/while/Switch_1Switchlstm/while/Merge_1lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_1*
_output_shapes
: : 
В
lstm/while/Switch_2Switchlstm/while/Merge_2lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_2*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2
В
lstm/while/Switch_3Switchlstm/while/Merge_3lstm/while/LoopCond*:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*
T0*%
_class
loc:@lstm/while/Merge_3
U
lstm/while/IdentityIdentitylstm/while/Switch:1*
_output_shapes
: *
T0
Y
lstm/while/Identity_1Identitylstm/while/Switch_1:1*
T0*
_output_shapes
: 
j
lstm/while/Identity_2Identitylstm/while/Switch_2:1*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Identity_3Identitylstm/while/Switch_3:1*
T0*'
_output_shapes
:џџџџџџџџџ2
Ц
lstm/while/TensorArrayReadV3TensorArrayReadV3"lstm/while/TensorArrayReadV3/Enterlstm/while/Identity$lstm/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ 
К
"lstm/while/TensorArrayReadV3/EnterEnterlstm/TensorArray*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*
is_constant(
ч
$lstm/while/TensorArrayReadV3/Enter_1Enter?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0*
is_constant(
{
lstm/while/mulMullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
З
lstm/while/mul/EnterEnterlstm/ones_like*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ *(

frame_namelstm/while/while_context*
T0
}
lstm/while/mul_1Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
}
lstm/while/mul_2Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ 
}
lstm/while/mul_3Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ *
T0
h
lstm/while/ConstConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
r
lstm/while/split/split_dimConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

lstm/while/split/ReadVariableOpReadVariableOp%lstm/while/split/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	 Ш
Д
%lstm/while/split/ReadVariableOp/EnterEnterlstm/kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Ў
lstm/while/splitSplitlstm/while/split/split_dimlstm/while/split/ReadVariableOp*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split
o
lstm/while/MatMulMatMullstm/while/mullstm/while/split*'
_output_shapes
:џџџџџџџџџ2*
T0
u
lstm/while/MatMul_1MatMullstm/while/mul_1lstm/while/split:1*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_2MatMullstm/while/mul_2lstm/while/split:2*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/MatMul_3MatMullstm/while/mul_3lstm/while/split:3*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/while/Const_1Const^lstm/while/Identity*
dtype0*
_output_shapes
: *
value	B :
t
lstm/while/split_1/split_dimConst^lstm/while/Identity*
value	B : *
dtype0*
_output_shapes
: 

!lstm/while/split_1/ReadVariableOpReadVariableOp'lstm/while/split_1/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes	
:Ш
Д
'lstm/while/split_1/ReadVariableOp/EnterEnter	lstm/bias*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Є
lstm/while/split_1Splitlstm/while/split_1/split_dim!lstm/while/split_1/ReadVariableOp*,
_output_shapes
:2:2:2:2*
	num_split*
T0
v
lstm/while/BiasAddBiasAddlstm/while/MatMullstm/while/split_1*
T0*'
_output_shapes
:џџџџџџџџџ2
|
lstm/while/BiasAdd_1BiasAddlstm/while/MatMul_1lstm/while/split_1:1*'
_output_shapes
:џџџџџџџџџ2*
T0
|
lstm/while/BiasAdd_2BiasAddlstm/while/MatMul_2lstm/while/split_1:2*'
_output_shapes
:џџџџџџџџџ2*
T0
|
lstm/while/BiasAdd_3BiasAddlstm/while/MatMul_3lstm/while/split_1:3*'
_output_shapes
:џџџџџџџџџ2*
T0
x
lstm/while/mul_4Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2
Л
lstm/while/mul_4/EnterEnterlstm/ones_like_1*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ2*(

frame_namelstm/while/while_context
x
lstm/while/mul_5Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2
x
lstm/while/mul_6Mullstm/while/Identity_2lstm/while/mul_4/Enter*'
_output_shapes
:џџџџџџџџџ2*
T0
x
lstm/while/mul_7Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOpReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш
И
lstm/while/ReadVariableOp/EnterEnterlstm/recurrent_kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context

lstm/while/strided_slice/stackConst^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

 lstm/while/strided_slice/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"    2   *
dtype0

 lstm/while/strided_slice/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
џ
lstm/while/strided_sliceStridedSlicelstm/while/ReadVariableOplstm/while/strided_slice/stack lstm/while/strided_slice/stack_1 lstm/while/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask*
_output_shapes

:22
{
lstm/while/MatMul_4MatMullstm/while/mul_4lstm/while/strided_slice*
T0*'
_output_shapes
:џџџџџџџџџ2
r
lstm/while/addAddV2lstm/while/BiasAddlstm/while/MatMul_4*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_2Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_3Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
m
lstm/while/Mul_8Mullstm/while/addlstm/while/Const_2*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_1Addlstm/while/Mul_8lstm/while/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ2
}
"lstm/while/clip_by_value/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

 lstm/while/clip_by_value/MinimumMinimumlstm/while/Add_1"lstm/while/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/clip_by_value/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_valueMaximum lstm/while/clip_by_value/Minimumlstm/while/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ2*
T0

lstm/while/ReadVariableOp_1ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_1/stackConst^lstm/while/Identity*
valueB"    2   *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_1/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"    d   *
dtype0

"lstm/while/strided_slice_1/stack_2Const^lstm/while/Identity*
_output_shapes
:*
valueB"      *
dtype0

lstm/while/strided_slice_1StridedSlicelstm/while/ReadVariableOp_1 lstm/while/strided_slice_1/stack"lstm/while/strided_slice_1/stack_1"lstm/while/strided_slice_1/stack_2*
end_mask*
_output_shapes

:22*

begin_mask*
T0*
Index0
}
lstm/while/MatMul_5MatMullstm/while/mul_5lstm/while/strided_slice_1*
T0*'
_output_shapes
:џџџџџџџџџ2
v
lstm/while/add_2AddV2lstm/while/BiasAdd_1lstm/while/MatMul_5*'
_output_shapes
:џџџџџџџџџ2*
T0
m
lstm/while/Const_4Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_5Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
lstm/while/Mul_9Mullstm/while/add_2lstm/while/Const_4*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/Add_3Addlstm/while/Mul_9lstm/while/Const_5*
T0*'
_output_shapes
:џџџџџџџџџ2

$lstm/while/clip_by_value_1/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_1/MinimumMinimumlstm/while/Add_3$lstm/while/clip_by_value_1/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
w
lstm/while/clip_by_value_1/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_1Maximum"lstm/while/clip_by_value_1/Minimumlstm/while/clip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ2
}
lstm/while/mul_10Mullstm/while/clip_by_value_1lstm/while/Identity_3*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_2ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
_output_shapes
:	2Ш*
dtype0

 lstm/while/strided_slice_2/stackConst^lstm/while/Identity*
_output_shapes
:*
valueB"    d   *
dtype0

"lstm/while/strided_slice_2/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"       *
dtype0

"lstm/while/strided_slice_2/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:

lstm/while/strided_slice_2StridedSlicelstm/while/ReadVariableOp_2 lstm/while/strided_slice_2/stack"lstm/while/strided_slice_2/stack_1"lstm/while/strided_slice_2/stack_2*
end_mask*
_output_shapes

:22*
T0*
Index0*

begin_mask
}
lstm/while/MatMul_6MatMullstm/while/mul_6lstm/while/strided_slice_2*
T0*'
_output_shapes
:џџџџџџџџџ2
v
lstm/while/add_4AddV2lstm/while/BiasAdd_2lstm/while/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ2
[
lstm/while/TanhTanhlstm/while/add_4*
T0*'
_output_shapes
:џџџџџџџџџ2
u
lstm/while/mul_11Mullstm/while/clip_by_valuelstm/while/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ2
q
lstm/while/add_5AddV2lstm/while/mul_10lstm/while/mul_11*
T0*'
_output_shapes
:џџџџџџџџџ2

lstm/while/ReadVariableOp_3ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes
:	2Ш

 lstm/while/strided_slice_3/stackConst^lstm/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_1Const^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

"lstm/while/strided_slice_3/stack_2Const^lstm/while/Identity*
dtype0*
_output_shapes
:*
valueB"      

lstm/while/strided_slice_3StridedSlicelstm/while/ReadVariableOp_3 lstm/while/strided_slice_3/stack"lstm/while/strided_slice_3/stack_1"lstm/while/strided_slice_3/stack_2*
end_mask*
_output_shapes

:22*

begin_mask*
T0*
Index0
}
lstm/while/MatMul_7MatMullstm/while/mul_7lstm/while/strided_slice_3*'
_output_shapes
:џџџџџџџџџ2*
T0
v
lstm/while/add_6AddV2lstm/while/BiasAdd_3lstm/while/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ2
m
lstm/while/Const_6Const^lstm/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_7Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
p
lstm/while/Mul_12Mullstm/while/add_6lstm/while/Const_6*'
_output_shapes
:џџџџџџџџџ2*
T0
p
lstm/while/Add_7Addlstm/while/Mul_12lstm/while/Const_7*'
_output_shapes
:џџџџџџџџџ2*
T0

$lstm/while/clip_by_value_2/Minimum/yConst^lstm/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm/while/clip_by_value_2/MinimumMinimumlstm/while/Add_7$lstm/while/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ2
w
lstm/while/clip_by_value_2/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm/while/clip_by_value_2Maximum"lstm/while/clip_by_value_2/Minimumlstm/while/clip_by_value_2/y*
T0*'
_output_shapes
:џџџџџџџџџ2
]
lstm/while/Tanh_1Tanhlstm/while/add_5*'
_output_shapes
:џџџџџџџџџ2*
T0
y
lstm/while/mul_13Mullstm/while/clip_by_value_2lstm/while/Tanh_1*
T0*'
_output_shapes
:џџџџџџџџџ2

.lstm/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV34lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm/while/Identitylstm/while/mul_13lstm/while/Identity_1*
T0*$
_class
loc:@lstm/while/mul_13*
_output_shapes
: 
є
4lstm/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm/TensorArray_1*
T0*$
_class
loc:@lstm/while/mul_13*
parallel_iterations *
is_constant(*
_output_shapes
:*(

frame_namelstm/while/while_context
j
lstm/while/add_8/yConst^lstm/while/Identity*
_output_shapes
: *
value	B :*
dtype0
c
lstm/while/add_8AddV2lstm/while/Identitylstm/while/add_8/y*
_output_shapes
: *
T0
\
lstm/while/NextIterationNextIterationlstm/while/add_8*
_output_shapes
: *
T0
|
lstm/while/NextIteration_1NextIteration.lstm/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
p
lstm/while/NextIteration_2NextIterationlstm/while/mul_13*'
_output_shapes
:џџџџџџџџџ2*
T0
o
lstm/while/NextIteration_3NextIterationlstm/while/add_5*
T0*'
_output_shapes
:џџџџџџџџџ2
K
lstm/while/ExitExitlstm/while/Switch*
T0*
_output_shapes
: 
O
lstm/while/Exit_1Exitlstm/while/Switch_1*
T0*
_output_shapes
: 
`
lstm/while/Exit_2Exitlstm/while/Switch_2*'
_output_shapes
:џџџџџџџџџ2*
T0
`
lstm/while/Exit_3Exitlstm/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ2
Ђ
'lstm/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm/TensorArray_1lstm/while/Exit_1*%
_class
loc:@lstm/TensorArray_1*
_output_shapes
: 

!lstm/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *%
_class
loc:@lstm/TensorArray_1

!lstm/TensorArrayStack/range/deltaConst*
value	B :*%
_class
loc:@lstm/TensorArray_1*
dtype0*
_output_shapes
: 
п
lstm/TensorArrayStack/rangeRange!lstm/TensorArrayStack/range/start'lstm/TensorArrayStack/TensorArraySizeV3!lstm/TensorArrayStack/range/delta*%
_class
loc:@lstm/TensorArray_1*#
_output_shapes
:џџџџџџџџџ

)lstm/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm/TensorArray_1lstm/TensorArrayStack/rangelstm/while/Exit_1*$
element_shape:џџџџџџџџџ2*%
_class
loc:@lstm/TensorArray_1*
dtype0*,
_output_shapes
:Шџџџџџџџџџ2
m
lstm/strided_slice_7/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
lstm/strided_slice_7StridedSlice)lstm/TensorArrayStack/TensorArrayGatherV3lstm/strided_slice_7/stacklstm/strided_slice_7/stack_1lstm/strided_slice_7/stack_2*
shrink_axis_mask*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2
j
lstm/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm/transpose_1	Transpose)lstm/TensorArrayStack/TensorArrayGatherV3lstm/transpose_1/perm*,
_output_shapes
:џџџџџџџџџШ2*
T0
d
dropout/IdentityIdentitylstm/strided_slice_7*
T0*'
_output_shapes
:џџџџџџџџџ2

-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"2      *
_class
loc:@dense/kernel

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *SЏО*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *SЏ>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Ь
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes

:2*
T0*
_class
loc:@dense/kernel*
dtype0
Ю
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes
: *
T0
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2
в
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:2

dense/kernelVarHandleOp*
shape
:2*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2

dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:


dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:2
w
dense/MatMulMatMuldropout/Identitydense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Y
dense/SigmoidSigmoiddense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
*
predict/group_depsNoOp^dense/Sigmoid
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
и
RestoreV2/tensor_namesConst"/device:CPU:0*ў
valueєBёB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:
Є
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
Q
AssignVariableOpAssignVariableOpembedding/embeddingsIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
T0*
_output_shapes
:
J
AssignVariableOp_1AssignVariableOp	lstm/bias
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
T0*
_output_shapes
:
L
AssignVariableOp_2AssignVariableOplstm/kernel
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
T0*
_output_shapes
:
V
AssignVariableOp_3AssignVariableOplstm/recurrent_kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
_output_shapes
:*
T0
K
AssignVariableOp_4AssignVariableOp
dense/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
T0*
_output_shapes
:
M
AssignVariableOp_5AssignVariableOpdense/kernel
Identity_5*
dtype0
K
VarIsInitializedOpVarIsInitializedOp	lstm/bias*
_output_shapes
: 
X
VarIsInitializedOp_1VarIsInitializedOpembedding/embeddings*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense/kernel*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
dense/bias*
_output_shapes
: 
Y
VarIsInitializedOp_4VarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
O
VarIsInitializedOp_5VarIsInitializedOplstm/kernel*
_output_shapes
: 

initNoOp^dense/bias/Assign^dense/kernel/Assign^embedding/embeddings/Assign^lstm/bias/Assign^lstm/kernel/Assign^lstm/recurrent_kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Ы
save/SaveV2/tensor_namesConst*ў
valueєBёB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
o
save/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0*
_output_shapes
:
Ц
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices(embedding/embeddings/Read/ReadVariableOplstm/bias/Read/ReadVariableOplstm/kernel/Read/ReadVariableOp)lstm/recurrent_kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp*
dtypes

2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
н
save/RestoreV2/tensor_namesConst"/device:CPU:0*ў
valueєBёB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:
И
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
[
save/AssignVariableOpAssignVariableOpembedding/embeddingssave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
T
save/AssignVariableOp_1AssignVariableOp	lstm/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
V
save/AssignVariableOp_2AssignVariableOplstm/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
`
save/AssignVariableOp_3AssignVariableOplstm/recurrent_kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_5*
dtype0
В
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
	variablesѓ№

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08"Ѓ$
while_context$$
$
lstm/while/while_context  *lstm/while/LoopCond:02lstm/while/Merge:0:lstm/while/Identity:0Blstm/while/Exit:0Blstm/while/Exit_1:0Blstm/while/Exit_2:0Blstm/while/Exit_3:0Jў!
lstm/TensorArray:0
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm/TensorArray_1:0
lstm/bias:0
lstm/kernel:0
lstm/ones_like:0
lstm/ones_like_1:0
lstm/recurrent_kernel:0
lstm/strided_slice_1:0
lstm/while/Add_1:0
lstm/while/Add_3:0
lstm/while/Add_7:0
lstm/while/BiasAdd:0
lstm/while/BiasAdd_1:0
lstm/while/BiasAdd_2:0
lstm/while/BiasAdd_3:0
lstm/while/Const:0
lstm/while/Const_1:0
lstm/while/Const_2:0
lstm/while/Const_3:0
lstm/while/Const_4:0
lstm/while/Const_5:0
lstm/while/Const_6:0
lstm/while/Const_7:0
lstm/while/Enter:0
lstm/while/Enter_1:0
lstm/while/Enter_2:0
lstm/while/Enter_3:0
lstm/while/Exit:0
lstm/while/Exit_1:0
lstm/while/Exit_2:0
lstm/while/Exit_3:0
lstm/while/Identity:0
lstm/while/Identity_1:0
lstm/while/Identity_2:0
lstm/while/Identity_3:0
lstm/while/Less/Enter:0
lstm/while/Less:0
lstm/while/LoopCond:0
lstm/while/MatMul:0
lstm/while/MatMul_1:0
lstm/while/MatMul_2:0
lstm/while/MatMul_3:0
lstm/while/MatMul_4:0
lstm/while/MatMul_5:0
lstm/while/MatMul_6:0
lstm/while/MatMul_7:0
lstm/while/Merge:0
lstm/while/Merge:1
lstm/while/Merge_1:0
lstm/while/Merge_1:1
lstm/while/Merge_2:0
lstm/while/Merge_2:1
lstm/while/Merge_3:0
lstm/while/Merge_3:1
lstm/while/Mul_12:0
lstm/while/Mul_8:0
lstm/while/Mul_9:0
lstm/while/NextIteration:0
lstm/while/NextIteration_1:0
lstm/while/NextIteration_2:0
lstm/while/NextIteration_3:0
!lstm/while/ReadVariableOp/Enter:0
lstm/while/ReadVariableOp:0
lstm/while/ReadVariableOp_1:0
lstm/while/ReadVariableOp_2:0
lstm/while/ReadVariableOp_3:0
lstm/while/Switch:0
lstm/while/Switch:1
lstm/while/Switch_1:0
lstm/while/Switch_1:1
lstm/while/Switch_2:0
lstm/while/Switch_2:1
lstm/while/Switch_3:0
lstm/while/Switch_3:1
lstm/while/Tanh:0
lstm/while/Tanh_1:0
$lstm/while/TensorArrayReadV3/Enter:0
&lstm/while/TensorArrayReadV3/Enter_1:0
lstm/while/TensorArrayReadV3:0
6lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
0lstm/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm/while/add:0
lstm/while/add_2:0
lstm/while/add_4:0
lstm/while/add_5:0
lstm/while/add_6:0
lstm/while/add_8/y:0
lstm/while/add_8:0
$lstm/while/clip_by_value/Minimum/y:0
"lstm/while/clip_by_value/Minimum:0
lstm/while/clip_by_value/y:0
lstm/while/clip_by_value:0
&lstm/while/clip_by_value_1/Minimum/y:0
$lstm/while/clip_by_value_1/Minimum:0
lstm/while/clip_by_value_1/y:0
lstm/while/clip_by_value_1:0
&lstm/while/clip_by_value_2/Minimum/y:0
$lstm/while/clip_by_value_2/Minimum:0
lstm/while/clip_by_value_2/y:0
lstm/while/clip_by_value_2:0
lstm/while/mul/Enter:0
lstm/while/mul:0
lstm/while/mul_10:0
lstm/while/mul_11:0
lstm/while/mul_13:0
lstm/while/mul_1:0
lstm/while/mul_2:0
lstm/while/mul_3:0
lstm/while/mul_4/Enter:0
lstm/while/mul_4:0
lstm/while/mul_5:0
lstm/while/mul_6:0
lstm/while/mul_7:0
'lstm/while/split/ReadVariableOp/Enter:0
!lstm/while/split/ReadVariableOp:0
lstm/while/split/split_dim:0
lstm/while/split:0
lstm/while/split:1
lstm/while/split:2
lstm/while/split:3
)lstm/while/split_1/ReadVariableOp/Enter:0
#lstm/while/split_1/ReadVariableOp:0
lstm/while/split_1/split_dim:0
lstm/while/split_1:0
lstm/while/split_1:1
lstm/while/split_1:2
lstm/while/split_1:3
 lstm/while/strided_slice/stack:0
"lstm/while/strided_slice/stack_1:0
"lstm/while/strided_slice/stack_2:0
lstm/while/strided_slice:0
"lstm/while/strided_slice_1/stack:0
$lstm/while/strided_slice_1/stack_1:0
$lstm/while/strided_slice_1/stack_2:0
lstm/while/strided_slice_1:0
"lstm/while/strided_slice_2/stack:0
$lstm/while/strided_slice_2/stack_1:0
$lstm/while/strided_slice_2/stack_2:0
lstm/while/strided_slice_2:0
"lstm/while/strided_slice_3/stack:0
$lstm/while/strided_slice_3/stack_1:0
$lstm/while/strided_slice_3/stack_2:0
lstm/while/strided_slice_3:0.
lstm/ones_like_1:0lstm/while/mul_4/Enter:08
lstm/kernel:0'lstm/while/split/ReadVariableOp/Enter:08
lstm/bias:0)lstm/while/split_1/ReadVariableOp/Enter:0*
lstm/ones_like:0lstm/while/mul/Enter:01
lstm/strided_slice_1:0lstm/while/Less/Enter:0:
lstm/TensorArray:0$lstm/while/TensorArrayReadV3/Enter:0<
lstm/recurrent_kernel:0!lstm/while/ReadVariableOp/Enter:0N
lstm/TensorArray_1:06lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0k
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0&lstm/while/TensorArrayReadV3/Enter_1:0Rlstm/while/Enter:0Rlstm/while/Enter_1:0Rlstm/while/Enter_2:0Rlstm/while/Enter_3:0"
trainable_variablesѓ№

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08

lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08*
serving_default
<
embedding_input)
embedding_input:0џџџџџџџџџШ/
dense&
dense/Sigmoid:0џџџџџџџџџtensorflow/serving/predict*@
__saved_model_init_op'%
__saved_model_init_op
init_1