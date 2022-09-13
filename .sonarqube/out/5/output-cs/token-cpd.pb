”
ÑC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\AutoMapper\DomainToViewModelMappingProfile.cs
	namespace 	
Equinox
 
. 
Application 
. 

AutoMapper (
{ 
public 

class +
DomainToViewModelMappingProfile 0
:1 2
Profile3 :
{ 
public		 +
DomainToViewModelMappingProfile		 .
(		. /
)		/ 0
{

 	
	CreateMap 
< 
Customer 
, 
CustomerViewModel  1
>1 2
(2 3
)3 4
;4 5
} 	
} 
} ∂
ÑC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\AutoMapper\ViewModelToDomainMappingProfile.cs
	namespace 	
Equinox
 
. 
Application 
. 

AutoMapper (
{ 
public 

class +
ViewModelToDomainMappingProfile 0
:1 2
Profile3 :
{ 
public		 +
ViewModelToDomainMappingProfile		 .
(		. /
)		/ 0
{

 	
	CreateMap 
< 
CustomerViewModel '
,' (&
RegisterNewCustomerCommand) C
>C D
(D E
)E F
. 
ConstructUsing 
(  
c  !
=>" $
new% (&
RegisterNewCustomerCommand) C
(C D
cD E
.E F
NameF J
,J K
cL M
.M N
EmailN S
,S T
cU V
.V W
	BirthDateW `
)` a
)a b
;b c
	CreateMap 
< 
CustomerViewModel '
,' (!
UpdateCustomerCommand) >
>> ?
(? @
)@ A
. 
ConstructUsing 
(  
c  !
=>" $
new% (!
UpdateCustomerCommand) >
(> ?
c? @
.@ A
IdA C
,C D
cE F
.F G
NameG K
,K L
cM N
.N O
EmailO T
,T U
cV W
.W X
	BirthDateX a
)a b
)b c
;c d
} 	
} 
} Å:
ÅC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\EventSourcedNormalizers\CustomerHistory.cs
	namespace 	
Equinox
 
. 
Application 
. #
EventSourcedNormalizers 5
{ 
public		 

static		 
class		 
CustomerHistory		 '
{

 
public 
static 
IList 
< 
CustomerHistoryData /
>/ 0
HistoryData1 <
{= >
get? B
;B C
setD G
;G H
}I J
public 
static 
IList 
< 
CustomerHistoryData /
>/ 0'
ToJavaScriptCustomerHistory1 L
(L M
IListM R
<R S
StoredEventS ^
>^ _
storedEvents` l
)l m
{ 	
HistoryData 
= 
new 
List "
<" #
CustomerHistoryData# 6
>6 7
(7 8
)8 9
;9 :'
CustomerHistoryDeserializer '
(' (
storedEvents( 4
)4 5
;5 6
var 
sorted 
= 
HistoryData $
.$ %
OrderBy% ,
(, -
c- .
=>/ 1
c2 3
.3 4
	Timestamp4 =
)= >
;> ?
var 
list 
= 
new 
List 
<  
CustomerHistoryData  3
>3 4
(4 5
)5 6
;6 7
var 
last 
= 
new 
CustomerHistoryData .
(. /
)/ 0
;0 1
foreach 
( 
var 
change 
in  "
sorted# )
)) *
{ 
var 
jsSlot 
= 
new  
CustomerHistoryData! 4
{ 
Id 
= 
change 
.  
Id  "
==# %
Guid& *
.* +
Empty+ 0
.0 1
ToString1 9
(9 :
): ;
||< >
change? E
.E F
IdF H
==I K
lastL P
.P Q
IdQ S
? 
$str 
: 
change  
.  !
Id! #
,# $
Name 
= 
string !
.! "
IsNullOrWhiteSpace" 4
(4 5
change5 ;
.; <
Name< @
)@ A
||B D
changeE K
.K L
NameL P
==Q S
lastT X
.X Y
NameY ]
? 
$str 
: 
change  
.  !
Name! %
,% &
Email   
=   
string   "
.  " #
IsNullOrWhiteSpace  # 5
(  5 6
change  6 <
.  < =
Email  = B
)  B C
||  D F
change  G M
.  M N
Email  N S
==  T V
last  W [
.  [ \
Email  \ a
?!! 
$str!! 
:"" 
change""  
.""  !
Email""! &
,""& '
	BirthDate## 
=## 
string##  &
.##& '
IsNullOrWhiteSpace##' 9
(##9 :
change##: @
.##@ A
	BirthDate##A J
)##J K
||##L N
change##O U
.##U V
	BirthDate##V _
==##` b
last##c g
.##g h
	BirthDate##h q
?$$ 
$str$$ 
:%% 
change%%  
.%%  !
	BirthDate%%! *
.%%* +
	Substring%%+ 4
(%%4 5
$num%%5 6
,%%6 7
$num%%7 9
)%%9 :
,%%: ;
Action&& 
=&& 
string&& #
.&&# $
IsNullOrWhiteSpace&&$ 6
(&&6 7
change&&7 =
.&&= >
Action&&> D
)&&D E
?&&F G
$str&&H J
:&&K L
change&&M S
.&&S T
Action&&T Z
,&&Z [
	Timestamp'' 
='' 
change''  &
.''& '
	Timestamp''' 0
,''0 1
Who(( 
=(( 
change((  
.((  !
Who((! $
})) 
;)) 
list++ 
.++ 
Add++ 
(++ 
jsSlot++ 
)++  
;++  !
last,, 
=,, 
change,, 
;,, 
}-- 
return.. 
list.. 
;.. 
}// 	
private11 
static11 
void11 '
CustomerHistoryDeserializer11 7
(117 8
IEnumerable118 C
<11C D
StoredEvent11D O
>11O P
storedEvents11Q ]
)11] ^
{22 	
foreach33 
(33 
var33 
e33 
in33 
storedEvents33 *
)33* +
{44 
var55 
historyData55 
=55  !
JsonSerializer55" 0
.550 1
Deserialize551 <
<55< =
CustomerHistoryData55= P
>55P Q
(55Q R
e55R S
.55S T
Data55T X
)55X Y
;55Y Z
historyData66 
.66 
	Timestamp66 %
=66& '
DateTime66( 0
.660 1
Parse661 6
(666 7
historyData667 B
.66B C
	Timestamp66C L
)66L M
.66M N
ToString66N V
(66V W
$str66W x
)66x y
;66y z
switch88 
(88 
e88 
.88 
MessageType88 %
)88% &
{99 
case:: 
$str:: 2
:::2 3
historyData;; #
.;;# $
Action;;$ *
=;;+ ,
$str;;- 9
;;;9 :
historyData<< #
.<<# $
Who<<$ '
=<<( )
e<<* +
.<<+ ,
User<<, 0
;<<0 1
break== 
;== 
case>> 
$str>> /
:>>/ 0
historyData?? #
.??# $
Action??$ *
=??+ ,
$str??- 6
;??6 7
historyData@@ #
.@@# $
Who@@$ '
=@@( )
e@@* +
.@@+ ,
User@@, 0
;@@0 1
breakAA 
;AA 
caseBB 
$strBB /
:BB/ 0
historyDataCC #
.CC# $
ActionCC$ *
=CC+ ,
$strCC- 6
;CC6 7
historyDataDD #
.DD# $
WhoDD$ '
=DD( )
eDD* +
.DD+ ,
UserDD, 0
;DD0 1
breakEE 
;EE 
defaultFF 
:FF 
historyDataGG #
.GG# $
ActionGG$ *
=GG+ ,
$strGG- ;
;GG; <
historyDataHH #
.HH# $
WhoHH$ '
=HH( )
eHH* +
.HH+ ,
UserHH, 0
??HH1 3
$strHH4 ?
;HH? @
breakII 
;II 
}KK 
HistoryDataLL 
.LL 
AddLL 
(LL  
historyDataLL  +
)LL+ ,
;LL, -
}MM 
}NN 	
}OO 
}PP ¿
ÖC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\EventSourcedNormalizers\CustomerHistoryData.cs
	namespace 	
Equinox
 
. 
Application 
. #
EventSourcedNormalizers 5
{ 
public 

class 
CustomerHistoryData $
{ 
public 
string 
Action 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
	BirthDate		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
	Timestamp

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
Who 
{ 
get 
;  
set! $
;$ %
}& '
} 
} “
xC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\Interfaces\ICustomerAppService.cs
	namespace 	
Equinox
 
. 
Application 
. 

Interfaces (
{		 
public

 

	interface

 
ICustomerAppService

 (
:

) *
IDisposable

+ 6
{ 
Task 
< 
IEnumerable 
< 
CustomerViewModel *
>* +
>+ ,
GetAll- 3
(3 4
)4 5
;5 6
Task 
< 
CustomerViewModel 
> 
GetById  '
(' (
Guid( ,
id- /
)/ 0
;0 1
Task 
< 
ValidationResult 
> 
Register '
(' (
CustomerViewModel( 9
customerViewModel: K
)K L
;L M
Task 
< 
ValidationResult 
> 
Update %
(% &
CustomerViewModel& 7
customerViewModel8 I
)I J
;J K
Task 
< 
ValidationResult 
> 
Remove %
(% &
Guid& *
id+ -
)- .
;. /
Task 
< 
IList 
< 
CustomerHistoryData &
>& '
>' (
GetAllHistory) 6
(6 7
Guid7 ;
id< >
)> ?
;? @
} 
} ï+
uC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\Services\CustomerAppService.cs
	namespace 	
Equinox
 
. 
Application 
. 
Services &
{ 
public 

class 
CustomerAppService #
:$ %
ICustomerAppService& 9
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
ICustomerRepository ,
_customerRepository- @
;@ A
private 
readonly !
IEventStoreRepository .!
_eventStoreRepository/ D
;D E
private 
readonly 
IMediatorHandler )
	_mediator* 3
;3 4
public 
CustomerAppService !
(! "
IMapper" )
mapper* 0
,0 1
ICustomerRepository" 5
customerRepository6 H
,H I
IMediatorHandler" 2
mediator3 ;
,; <!
IEventStoreRepository" 7 
eventStoreRepository8 L
)L M
{ 	
_mapper 
= 
mapper 
; 
_customerRepository 
=  !
customerRepository" 4
;4 5
	_mediator 
= 
mediator  
;  !!
_eventStoreRepository !
=" # 
eventStoreRepository$ 8
;8 9
}   	
public"" 
async"" 
Task"" 
<"" 
IEnumerable"" %
<""% &
CustomerViewModel""& 7
>""7 8
>""8 9
GetAll"": @
(""@ A
)""A B
{## 	
return$$ 
_mapper$$ 
.$$ 
Map$$ 
<$$ 
IEnumerable$$ *
<$$* +
CustomerViewModel$$+ <
>$$< =
>$$= >
($$> ?
await$$? D
_customerRepository$$E X
.$$X Y
GetAll$$Y _
($$_ `
)$$` a
)$$a b
;$$b c
}%% 	
public'' 
async'' 
Task'' 
<'' 
CustomerViewModel'' +
>''+ ,
GetById''- 4
(''4 5
Guid''5 9
id'': <
)''< =
{(( 	
return)) 
_mapper)) 
.)) 
Map)) 
<)) 
CustomerViewModel)) 0
>))0 1
())1 2
await))2 7
_customerRepository))8 K
.))K L
GetById))L S
())S T
id))T V
)))V W
)))W X
;))X Y
}** 	
public,, 
async,, 
Task,, 
<,, 
ValidationResult,, *
>,,* +
Register,,, 4
(,,4 5
CustomerViewModel,,5 F
customerViewModel,,G X
),,X Y
{-- 	
var.. 
registerCommand.. 
=..  !
_mapper.." )
...) *
Map..* -
<..- .&
RegisterNewCustomerCommand... H
>..H I
(..I J
customerViewModel..J [
)..[ \
;..\ ]
return// 
await// 
	_mediator// "
.//" #
SendCommand//# .
(//. /
registerCommand/// >
)//> ?
;//? @
}00 	
public22 
async22 
Task22 
<22 
ValidationResult22 *
>22* +
Update22, 2
(222 3
CustomerViewModel223 D
customerViewModel22E V
)22V W
{33 	
var44 
updateCommand44 
=44 
_mapper44  '
.44' (
Map44( +
<44+ ,!
UpdateCustomerCommand44, A
>44A B
(44B C
customerViewModel44C T
)44T U
;44U V
return55 
await55 
	_mediator55 "
.55" #
SendCommand55# .
(55. /
updateCommand55/ <
)55< =
;55= >
}66 	
public88 
async88 
Task88 
<88 
ValidationResult88 *
>88* +
Remove88, 2
(882 3
Guid883 7
id888 :
)88: ;
{99 	
var:: 
removeCommand:: 
=:: 
new::  #!
RemoveCustomerCommand::$ 9
(::9 :
id::: <
)::< =
;::= >
return;; 
await;; 
	_mediator;; "
.;;" #
SendCommand;;# .
(;;. /
removeCommand;;/ <
);;< =
;;;= >
}<< 	
public>> 
async>> 
Task>> 
<>> 
IList>> 
<>>  
CustomerHistoryData>>  3
>>>3 4
>>>4 5
GetAllHistory>>6 C
(>>C D
Guid>>D H
id>>I K
)>>K L
{?? 	
return@@ 
CustomerHistory@@ "
.@@" #'
ToJavaScriptCustomerHistory@@# >
(@@> ?
await@@? D!
_eventStoreRepository@@E Z
.@@Z [
All@@[ ^
(@@^ _
id@@_ a
)@@a b
)@@b c
;@@c d
}AA 	
publicCC 
voidCC 
DisposeCC 
(CC 
)CC 
{DD 	
GCEE 
.EE 
SuppressFinalizeEE 
(EE  
thisEE  $
)EE$ %
;EE% &
}FF 	
}GG 
}HH ú
vC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Application\ViewModels\CustomerViewModel.cs
	namespace 	
Equinox
 
. 
Application 
. 

ViewModels (
{ 
public 

class 
CustomerViewModel "
{ 
[		 	
Key			 
]		 
public

 
Guid

 
Id

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
	MinLength	 
( 
$num 
) 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
DisplayName	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
EmailAddress	 
] 
[ 	
DisplayName	 
( 
$str 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
[ 	
DisplayFormat	 
( !
ApplyFormatInEditMode ,
=- .
true/ 3
,3 4
DataFormatString5 E
=F G
$strH X
)X Y
]Y Z
[ 	
DataType	 
( 
DataType 
. 
Date 
,  
ErrorMessage! -
=. /
$str0 J
)J K
]K L
[ 	
DisplayName	 
( 
$str !
)! "
]" #
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 