×
mC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\CustomerCommand.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
{ 
public 

abstract 
class 
CustomerCommand )
:* +
Command, 3
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public

 
string

 
Name

 
{

 
get

  
;

  !
	protected

" +
set

, /
;

/ 0
}

1 2
public 
string 
Email 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
} 
} é>
tC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\CustomerCommandHandler.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
{ 
public 

class "
CustomerCommandHandler '
:( )
CommandHandler* 8
,8 9
IRequestHandler 
< &
RegisterNewCustomerCommand 2
,2 3
ValidationResult4 D
>D E
,E F
IRequestHandler 
< !
UpdateCustomerCommand -
,- .
ValidationResult/ ?
>? @
,@ A
IRequestHandler 
< !
RemoveCustomerCommand -
,- .
ValidationResult/ ?
>? @
{ 
private 
readonly 
ICustomerRepository ,
_customerRepository- @
;@ A
public "
CustomerCommandHandler %
(% &
ICustomerRepository& 9
customerRepository: L
)L M
{ 	
_customerRepository 
=  !
customerRepository" 4
;4 5
} 	
public 
async 
Task 
< 
ValidationResult *
>* +
Handle, 2
(2 3&
RegisterNewCustomerCommand3 M
messageN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	
if 
( 
! 
message 
. 
IsValid  
(  !
)! "
)" #
return$ *
message+ 2
.2 3
ValidationResult3 C
;C D
var 
customer 
= 
new 
Customer '
(' (
Guid( ,
., -
NewGuid- 4
(4 5
)5 6
,6 7
message8 ?
.? @
Name@ D
,D E
messageF M
.M N
EmailN S
,S T
messageU \
.\ ]
	BirthDate] f
)f g
;g h
if 
( 
await 
_customerRepository )
.) *

GetByEmail* 4
(4 5
customer5 =
.= >
Email> C
)C D
!=E G
nullH L
)L M
{   
AddError!! 
(!! 
$str!! F
)!!F G
;!!G H
return"" 
ValidationResult"" '
;""' (
}## 
customer%% 
.%% 
AddDomainEvent%% #
(%%# $
new%%$ '#
CustomerRegisteredEvent%%( ?
(%%? @
customer%%@ H
.%%H I
Id%%I K
,%%K L
customer%%M U
.%%U V
Name%%V Z
,%%Z [
customer%%\ d
.%%d e
Email%%e j
,%%j k
customer%%l t
.%%t u
	BirthDate%%u ~
)%%~ 
)	%% €
;
%%€ 
_customerRepository'' 
.''  
Add''  #
(''# $
customer''$ ,
)'', -
;''- .
return)) 
await)) 
Commit)) 
())  
_customerRepository))  3
.))3 4

UnitOfWork))4 >
)))> ?
;))? @
}** 	
public,, 
async,, 
Task,, 
<,, 
ValidationResult,, *
>,,* +
Handle,,, 2
(,,2 3!
UpdateCustomerCommand,,3 H
message,,I P
,,,P Q
CancellationToken,,R c
cancellationToken,,d u
),,u v
{-- 	
if.. 
(.. 
!.. 
message.. 
... 
IsValid..  
(..  !
)..! "
).." #
return..$ *
message..+ 2
...2 3
ValidationResult..3 C
;..C D
var00 
customer00 
=00 
new00 
Customer00 '
(00' (
message00( /
.00/ 0
Id000 2
,002 3
message004 ;
.00; <
Name00< @
,00@ A
message00B I
.00I J
Email00J O
,00O P
message00Q X
.00X Y
	BirthDate00Y b
)00b c
;00c d
var11 
existingCustomer11  
=11! "
await11# (
_customerRepository11) <
.11< =

GetByEmail11= G
(11G H
customer11H P
.11P Q
Email11Q V
)11V W
;11W X
if33 
(33 
existingCustomer33  
!=33! #
null33$ (
&&33) +
existingCustomer33, <
.33< =
Id33= ?
!=33@ B
customer33C K
.33K L
Id33L N
)33N O
{44 
if55 
(55 
!55 
existingCustomer55 %
.55% &
Equals55& ,
(55, -
customer55- 5
)555 6
)556 7
{66 
AddError77 
(77 
$str77 J
)77J K
;77K L
return88 
ValidationResult88 +
;88+ ,
}99 
}:: 
customer<< 
.<< 
AddDomainEvent<< #
(<<# $
new<<$ ' 
CustomerUpdatedEvent<<( <
(<<< =
customer<<= E
.<<E F
Id<<F H
,<<H I
customer<<J R
.<<R S
Name<<S W
,<<W X
customer<<Y a
.<<a b
Email<<b g
,<<g h
customer<<i q
.<<q r
	BirthDate<<r {
)<<{ |
)<<| }
;<<} ~
_customerRepository>> 
.>>  
Update>>  &
(>>& '
customer>>' /
)>>/ 0
;>>0 1
return@@ 
await@@ 
Commit@@ 
(@@  
_customerRepository@@  3
.@@3 4

UnitOfWork@@4 >
)@@> ?
;@@? @
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
ValidationResultCC *
>CC* +
HandleCC, 2
(CC2 3!
RemoveCustomerCommandCC3 H
messageCCI P
,CCP Q
CancellationTokenCCR c
cancellationTokenCCd u
)CCu v
{DD 	
ifEE 
(EE 
!EE 
messageEE 
.EE 
IsValidEE  
(EE  !
)EE! "
)EE" #
returnEE$ *
messageEE+ 2
.EE2 3
ValidationResultEE3 C
;EEC D
varGG 
customerGG 
=GG 
awaitGG  
_customerRepositoryGG! 4
.GG4 5
GetByIdGG5 <
(GG< =
messageGG= D
.GGD E
IdGGE G
)GGG H
;GGH I
ifII 
(II 
customerII 
isII 
nullII  
)II  !
{JJ 
AddErrorKK 
(KK 
$strKK 7
)KK7 8
;KK8 9
returnLL 
ValidationResultLL '
;LL' (
}MM 
customerOO 
.OO 
AddDomainEventOO #
(OO# $
newOO$ ' 
CustomerRemovedEventOO( <
(OO< =
messageOO= D
.OOD E
IdOOE G
)OOG H
)OOH I
;OOI J
_customerRepositoryQQ 
.QQ  
RemoveQQ  &
(QQ& '
customerQQ' /
)QQ/ 0
;QQ0 1
returnSS 
awaitSS 
CommitSS 
(SS  
_customerRepositorySS  3
.SS3 4

UnitOfWorkSS4 >
)SS> ?
;SS? @
}TT 	
publicVV 
voidVV 
DisposeVV 
(VV 
)VV 
{WW 	
_customerRepositoryXX 
.XX  
DisposeXX  '
(XX' (
)XX( )
;XX) *
}YY 	
}ZZ 
}[[ å

xC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\RegisterNewCustomerCommand.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
{ 
public 

class &
RegisterNewCustomerCommand +
:, -
CustomerCommand. =
{ 
public &
RegisterNewCustomerCommand )
() *
string* 0
name1 5
,5 6
string7 =
email> C
,C D
DateTimeE M
	birthDateN W
)W X
{		 	
Name

 
=

 
name

 
;

 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new "0
$RegisterNewCustomerCommandValidation# G
(G H
)H I
.I J
ValidateJ R
(R S
thisS W
)W X
;X Y
return 
ValidationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} Ž	
sC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\RemoveCustomerCommand.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
{ 
public 

class !
RemoveCustomerCommand &
:' (
CustomerCommand) 8
{ 
public !
RemoveCustomerCommand $
($ %
Guid% )
id* ,
), -
{		 	
Id

 
=

 
id

 
;

 
AggregateId 
= 
id 
; 
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new "+
RemoveCustomerCommandValidation# B
(B C
)C D
.D E
ValidateE M
(M N
thisN R
)R S
;S T
return 
ValidationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} À
sC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\UpdateCustomerCommand.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
{ 
public 

class !
UpdateCustomerCommand &
:' (
CustomerCommand) 8
{ 
public !
UpdateCustomerCommand $
($ %
Guid% )
id* ,
,, -
string. 4
name5 9
,9 :
string; A
emailB G
,G H
DateTimeI Q
	birthDateR [
)[ \
{		 	
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new "+
UpdateCustomerCommandValidation# B
(B C
)C D
.D E
ValidateE M
(M N
thisN R
)R S
;S T
return 
ValidationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} Ï
|C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\Validations\CustomerValidation.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
.! "
Validations" -
{ 
public 

abstract 
class 
CustomerValidation ,
<, -
T- .
>. /
:0 1
AbstractValidator2 C
<C D
TD E
>E F
whereG L
TM N
:O P
CustomerCommandQ `
{ 
	protected 
void 
ValidateName #
(# $
)$ %
{		 	
RuleFor

 
(

 
c

 
=>

 
c

 
.

 
Name

 
)

  
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( Q
)Q R
. 
Length 
( 
$num 
, 
$num 
) 
.  
WithMessage  +
(+ ,
$str, ]
)] ^
;^ _
} 	
	protected 
void 
ValidateBirthDate (
(( )
)) *
{ 	
RuleFor 
( 
c 
=> 
c 
. 
	BirthDate $
)$ %
. 
NotEmpty 
( 
) 
. 
Must 
( 
HaveMinimumAge $
)$ %
. 
WithMessage 
( 
$str F
)F G
;G H
} 	
	protected 
void 
ValidateEmail $
($ %
)% &
{ 	
RuleFor 
( 
c 
=> 
c 
. 
Email  
)  !
. 
NotEmpty 
( 
) 
. 
EmailAddress 
( 
) 
;  
} 	
	protected 
void 

ValidateId !
(! "
)" #
{ 	
RuleFor   
(   
c   
=>   
c   
.   
Id   
)   
.!! 
NotEqual!! 
(!! 
Guid!! 
.!! 
Empty!! $
)!!$ %
;!!% &
}"" 	
	protected$$ 
static$$ 
bool$$ 
HaveMinimumAge$$ ,
($$, -
DateTime$$- 5
	birthDate$$6 ?
)$$? @
{%% 	
return&& 
	birthDate&& 
<=&& 
DateTime&&  (
.&&( )
Now&&) ,
.&&, -
AddYears&&- 5
(&&5 6
-&&6 7
$num&&7 9
)&&9 :
;&&: ;
}'' 	
}(( 
})) Ž
ŽC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\Validations\RegisterNewCustomerCommandValidation.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
.! "
Validations" -
{ 
public 

class 0
$RegisterNewCustomerCommandValidation 5
:6 7
CustomerValidation8 J
<J K&
RegisterNewCustomerCommandK e
>e f
{ 
public 0
$RegisterNewCustomerCommandValidation 3
(3 4
)4 5
{ 	
ValidateName 
( 
) 
; 
ValidateBirthDate 
( 
) 
;  
ValidateEmail		 
(		 
)		 
;		 
}

 	
} 
} ä
‰C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\Validations\RemoveCustomerCommandValidation.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
.! "
Validations" -
{ 
public 

class +
RemoveCustomerCommandValidation 0
:1 2
CustomerValidation3 E
<E F!
RemoveCustomerCommandF [
>[ \
{ 
public +
RemoveCustomerCommandValidation .
(. /
)/ 0
{ 	

ValidateId 
( 
) 
; 
} 	
}		 
}

 ¿
‰C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Commands\Validations\UpdateCustomerCommandValidation.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Commands !
.! "
Validations" -
{ 
public 

class +
UpdateCustomerCommandValidation 0
:1 2
CustomerValidation3 E
<E F!
UpdateCustomerCommandF [
>[ \
{ 
public +
UpdateCustomerCommandValidation .
(. /
)/ 0
{ 	

ValidateId 
( 
) 
; 
ValidateName 
( 
) 
; 
ValidateBirthDate		 
(		 
)		 
;		  
ValidateEmail

 
(

 
)

 
;

 
} 	
} 
} Ç
pC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Events\CustomerEventHandler.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerEventHandler %
:& ' 
INotificationHandler 
< #
CustomerRegisteredEvent 4
>4 5
,5 6 
INotificationHandler		 
<		  
CustomerUpdatedEvent		 1
>		1 2
,		2 3 
INotificationHandler

 
<

  
CustomerRemovedEvent

 1
>

1 2
{ 
public 
Task 
Handle 
(  
CustomerUpdatedEvent /
message0 7
,7 8
CancellationToken9 J
cancellationTokenK \
)\ ]
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( #
CustomerRegisteredEvent 2
message3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
(  
CustomerRemovedEvent /
message0 7
,7 8
CancellationToken9 J
cancellationTokenK \
)\ ]
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
}   
}!! Ã
sC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Events\CustomerRegisteredEvent.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Events 
{ 
public 

class #
CustomerRegisteredEvent (
:) *
Event+ 0
{ 
public #
CustomerRegisteredEvent &
(& '
Guid' +
id, .
,. /
string0 6
name7 ;
,; <
string= C
emailD I
,I J
DateTimeK S
	birthDateT ]
)] ^
{		 	
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Email 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} ²
pC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Events\CustomerRemovedEvent.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerRemovedEvent %
:& '
Event( -
{ 
public  
CustomerRemovedEvent #
(# $
Guid$ (
id) +
)+ ,
{		 	
Id

 
=

 
id

 
;

 
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
} 
} º
pC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Events\CustomerUpdatedEvent.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerUpdatedEvent %
:& '
Event( -
{ 
public  
CustomerUpdatedEvent #
(# $
Guid$ (
id) +
,+ ,
string- 3
name4 8
,8 9
string: @
emailA F
,F G
DateTimeH P
	birthDateQ Z
)Z [
{		 	
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Email 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} Ý

sC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Interfaces\ICustomerRepository.cs
	namespace 	
Equinox
 
. 
Domain 
. 

Interfaces #
{ 
public		 

	interface		 
ICustomerRepository		 (
:		) *
IRepository		+ 6
<		6 7
Customer		7 ?
>		? @
{

 
Task 
< 
Customer 
> 
GetById 
( 
Guid #
id$ &
)& '
;' (
Task 
< 
Customer 
> 

GetByEmail !
(! "
string" (
email) .
). /
;/ 0
Task 
< 
IEnumerable 
< 
Customer !
>! "
>" #
GetAll$ *
(* +
)+ ,
;, -
void 
Add 
( 
Customer 
customer "
)" #
;# $
void 
Update 
( 
Customer 
customer %
)% &
;& '
void 
Remove 
( 
Customer 
customer %
)% &
;& '
} 
} Ð
dC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Domain\Models\Customer.cs
	namespace 	
Equinox
 
. 
Domain 
. 
Models 
{ 
public 

class 
Customer 
: 
Entity "
," #
IAggregateRoot$ 2
{ 
public 
Customer 
( 
Guid 
id 
,  
string! '
name( ,
,, -
string. 4
email5 :
,: ;
DateTime< D
	birthDateE N
)N O
{		 	
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
} 	
	protected 
Customer 
( 
) 
{ 
}  
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Email 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} 