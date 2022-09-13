˜	
zC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Areas\Identity\IdentityHostingStartup.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !
Equinox! (
.( )
UI) +
.+ ,
Web, /
./ 0
Areas0 5
.5 6
Identity6 >
.> ?"
IdentityHostingStartup? U
)U V
)V W
]W X
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Areas 
. 
Identity '
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{		 	
builder

 
.

 
ConfigureServices

 %
(

% &
(

& '
context

' .
,

. /
services

0 8
)

8 9
=>

: <
{

= >
}

> ?
)

? @
;

@ A
} 	
} 
} ˆN
ÅC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender 
emailSender $
)$ %
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_signInManager"" 
="" 
signInManager"" *
;""* +
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
ExternalLogins,,+ 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
[22 
Display22 
(22 
Name22 
=22 
$str22 #
)22# $
]22$ %
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
[55 
Required55 
]55 
[66 
StringLength66 
(66 
$num66 
,66 
ErrorMessage66 +
=66, -
$str66. l
,66l m
MinimumLength66n {
=66| }
$num66~ 
)	66 Ä
]
66Ä Å
[77 
DataType77 
(77 
DataType77 
.77 
Password77 '
)77' (
]77( )
[88 
Display88 
(88 
Name88 
=88 
$str88 &
)88& '
]88' (
public99 
string99 
Password99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
DataType;; 
(;; 
DataType;; 
.;; 
Password;; '
);;' (
];;( )
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< .
)<<. /
]<</ 0
[== 
Compare== 
(== 
$str== 
,==  
ErrorMessage==! -
===. /
$str==0 f
)==f g
]==g h
public>> 
string>> 
ConfirmPassword>> )
{>>* +
get>>, /
;>>/ 0
set>>1 4
;>>4 5
}>>6 7
}?? 	
publicAA 
asyncAA 
TaskAA 

OnGetAsyncAA $
(AA$ %
stringAA% +
	returnUrlAA, 5
=AA6 7
nullAA8 <
)AA< =
{BB 	
	ReturnUrlCC 
=CC 
	returnUrlCC !
;CC! "
ExternalLoginsDD 
=DD 
(DD 
awaitDD #
_signInManagerDD$ 2
.DD2 31
%GetExternalAuthenticationSchemesAsyncDD3 X
(DDX Y
)DDY Z
)DDZ [
.DD[ \
ToListDD\ b
(DDb c
)DDc d
;DDd e
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
stringGG5 ;
	returnUrlGG< E
=GGF G
nullGGH L
)GGL M
{HH 	
	returnUrlII 
=II 
	returnUrlII !
??II" $
UrlII% (
.II( )
ContentII) 0
(II0 1
$strII1 5
)II5 6
;II6 7
ExternalLoginsJJ 
=JJ 
(JJ 
awaitJJ #
_signInManagerJJ$ 2
.JJ2 31
%GetExternalAuthenticationSchemesAsyncJJ3 X
(JJX Y
)JJY Z
)JJZ [
.JJ[ \
ToListJJ\ b
(JJb c
)JJc d
;JJd e
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
userMM 
=MM 
newMM 
IdentityUserMM +
{MM, -
UserNameMM. 6
=MM7 8
InputMM9 >
.MM> ?
EmailMM? D
,MMD E
EmailMMF K
=MML M
InputMMN S
.MMS T
EmailMMT Y
}MMZ [
;MM[ \
varNN 
resultNN 
=NN 
awaitNN "
_userManagerNN# /
.NN/ 0
CreateAsyncNN0 ;
(NN; <
userNN< @
,NN@ A
InputNNB G
.NNG H
PasswordNNH P
)NNP Q
;NNQ R
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
_loggerQQ 
.QQ 
LogInformationQQ *
(QQ* +
$strQQ+ V
)QQV W
;QQW X
awaitTT 
_userManagerTT &
.TT& '
AddClaimAsyncTT' 4
(TT4 5
userTT5 9
,TT9 :
newTT; >
ClaimTT? D
(TTD E
$strTTE P
,TTP Q
$strTTR Y
)TTY Z
)TTZ [
;TT[ \
varVV 
codeVV 
=VV 
awaitVV $
_userManagerVV% 1
.VV1 2/
#GenerateEmailConfirmationTokenAsyncVV2 U
(VVU V
userVVV Z
)VVZ [
;VV[ \
codeWW 
=WW 
WebEncodersWW &
.WW& '
Base64UrlEncodeWW' 6
(WW6 7
EncodingWW7 ?
.WW? @
UTF8WW@ D
.WWD E
GetBytesWWE M
(WWM N
codeWWN R
)WWR S
)WWS T
;WWT U
varXX 
callbackUrlXX #
=XX$ %
UrlXX& )
.XX) *
PageXX* .
(XX. /
$strYY /
,YY/ 0
pageHandlerZZ #
:ZZ# $
nullZZ% )
,ZZ) *
values[[ 
:[[ 
new[[  #
{[[$ %
area[[& *
=[[+ ,
$str[[- 7
,[[7 8
userId[[9 ?
=[[@ A
user[[B F
.[[F G
Id[[G I
,[[I J
code[[K O
}[[P Q
,[[Q R
protocol\\  
:\\  !
Request\\" )
.\\) *
Scheme\\* 0
)\\0 1
;\\1 2
await^^ 
_emailSender^^ &
.^^& '
SendEmailAsync^^' 5
(^^5 6
Input^^6 ;
.^^; <
Email^^< A
,^^A B
$str^^C W
,^^W X
$"__ 
$str__ B
{__B C
HtmlEncoder__C N
.__N O
Default__O V
.__V W
Encode__W ]
(__] ^
callbackUrl__^ i
)__i j
}__j k
$str__k 
"	__ Ä
)
__Ä Å
;
__Å Ç
ifaa 
(aa 
_userManageraa $
.aa$ %
Optionsaa% ,
.aa, -
SignInaa- 3
.aa3 4#
RequireConfirmedAccountaa4 K
)aaK L
{bb 
returncc 
RedirectToPagecc -
(cc- .
$strcc. D
,ccD E
newccF I
{ccJ K
emailccL Q
=ccR S
InputccT Y
.ccY Z
EmailccZ _
}cc` a
)cca b
;ccb c
}dd 
elseee 
{ff 
awaitgg 
_signInManagergg ,
.gg, -
SignInAsyncgg- 8
(gg8 9
usergg9 =
,gg= >
isPersistentgg? K
:ggK L
falseggM R
)ggR S
;ggS T
returnhh 
LocalRedirecthh ,
(hh, -
	returnUrlhh- 6
)hh6 7
;hh7 8
}ii 
}jj 
foreachkk 
(kk 
varkk 
errorkk "
inkk# %
resultkk& ,
.kk, -
Errorskk- 3
)kk3 4
{ll 

ModelStatemm 
.mm 
AddModelErrormm ,
(mm, -
stringmm- 3
.mm3 4
Emptymm4 9
,mm9 :
errormm; @
.mm@ A
DescriptionmmA L
)mmL M
;mmM N
}nn 
}oo 
returnrr 
Pagerr 
(rr 
)rr 
;rr 
}ss 	
}tt 
}uu ›	
tC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Configurations\AutoMapperConfig.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Configurations '
{ 
public 

static 
class 
AutoMapperConfig (
{		 
public

 
static

 
void

 &
AddAutoMapperConfiguration

 5
(

5 6
this

6 :
IServiceCollection

; M
services

N V
)

V W
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddAutoMapper "
(" #
typeof# )
() *+
DomainToViewModelMappingProfile* I
)I J
,J K
typeofL R
(R S+
ViewModelToDomainMappingProfileS r
)r s
)s t
;t u
} 	
} 
} ≠
rC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Configurations\DatabaseConfig.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Configurations '
{ 
public		 

static		 
class		 
DatabaseConfig		 &
{

 
public 
static 
void $
AddDatabaseConfiguration 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
,T U
IConfigurationV d
configuratione r
)r s
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddDbContext !
<! "
EquinoxContext" 0
>0 1
(1 2
options2 9
=>: <
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
)[ \
)\ ]
;] ^
services 
. 
AddDbContext !
<! " 
EventStoreSqlContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
)[ \
)\ ]
;] ^
} 	
} 
} ÷
}C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Configurations\DependencyInjectionConfig.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Configurations '
{ 
public 

static 
class %
DependencyInjectionConfig 1
{ 
public		 
static		 
void		 /
#AddDependencyInjectionConfiguration		 >
(		> ?
this		? C
IServiceCollection		D V
services		W _
)		_ `
{

 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T&
NativeInjectorBootStrapper &
.& '
RegisterServices' 7
(7 8
services8 @
)@ A
;A B
} 	
} 
} ˛
rC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Configurations\IdentityConfig.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Configurations '
{ 
public 

static 
class 
IdentityConfig &
{ 
public

 
static

 
void

 0
$AddSocialAuthenticationConfiguration

 ?
(

? @
this

@ D
IServiceCollection

E W
services

X `
,

` a
IConfiguration

b p
configuration

q ~
)

~ 
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddAuthentication &
(& '
)' (
. 
AddFacebook 
( 
o 
=> !
{ 
o 
. 
AppId 
= 
configuration +
[+ ,
$str, K
]K L
;L M
o 
. 
	AppSecret 
=  !
configuration" /
[/ 0
$str0 S
]S T
;T U
} 
) 
. 
	AddGoogle 
( 
googleOptions (
=>) +
{ 
googleOptions !
.! "
ClientId" *
=+ ,
configuration- :
[: ;
$str; [
][ \
;\ ]
googleOptions !
.! "
ClientSecret" .
=/ 0
configuration1 >
[> ?
$str? c
]c d
;d e
} 
) 
; 
} 	
} 
} ⁄
oC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Controllers\BaseController.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Controllers $
{ 
public 

class 
BaseController 
:  !

Controller" ,
{		 
private

 
readonly

 
ICollection

 $
<

$ %
string

% +
>

+ ,
_errors

- 4
=

5 6
new

7 :
List

; ?
<

? @
string

@ F
>

F G
(

G H
)

H I
;

I J
	protected 
bool 
ResponseHasErrors (
(( )
ValidationResult) 9
result: @
)@ A
{ 	
if 
( 
result 
== 
null 
|| !
result" (
.( )
IsValid) 0
)0 1
return2 8
false9 >
;> ?
foreach 
( 
var 
error 
in !
result" (
.( )
Errors) /
)/ 0
{ 

ModelState 
. 
AddModelError (
(( )
string) /
./ 0
Empty0 5
,5 6
error7 <
.< =
ErrorMessage= I
)I J
;J K
} 
return 
true 
; 
} 	
	protected 
void 
AddProcessError &
(& '
string' -
erro. 2
)2 3
{ 	
_errors 
. 
Add 
( 
erro 
) 
; 
} 	
public 
bool 
IsValidOperation $
($ %
)% &
{ 	
return 
! 
_errors 
. 
Any 
(  
)  !
;! "
}   	
}!! 
}"" ŒN
sC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Controllers\CustomerController.cs
	namespace		 	
Equinox		
 
.		 
UI		 
.		 
Web		 
.		 
Controllers		 $
{

 
[ 
	Authorize 
] 
public 

class 
CustomerController #
:$ %
BaseController& 4
{ 
private 
readonly 
ICustomerAppService ,
_customerAppService- @
;@ A
public 
CustomerController !
(! "
ICustomerAppService" 5
customerAppService6 H
)H I
{ 	
_customerAppService 
=  !
customerAppService" 4
;4 5
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpGet	 
( 
$str /
)/ 0
]0 1
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
return 
View 
( 
await 
_customerAppService 1
.1 2
GetAll2 8
(8 9
)9 :
): ;
;; <
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpGet	 
( 
$str A
)A B
]B C
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
Guid1 5
?5 6
id7 9
)9 :
{ 	
if 
( 
id 
== 
null 
) 
return "
NotFound# +
(+ ,
), -
;- .
var!! 
customerViewModel!! !
=!!" #
await!!$ )
_customerAppService!!* =
.!!= >
GetById!!> E
(!!E F
id!!F H
.!!H I
Value!!I N
)!!N O
;!!O P
if## 
(## 
customerViewModel## !
==##" $
null##% )
)##) *
return##+ 1
NotFound##2 :
(##: ;
)##; <
;##< =
return%% 
View%% 
(%% 
customerViewModel%% )
)%%) *
;%%* +
}&& 	
[(( 	
CustomAuthorize((	 
((( 
$str(( $
,(($ %
$str((& -
)((- .
]((. /
[)) 	
HttpGet))	 
()) 
$str)) 3
)))3 4
]))4 5
public** 
IActionResult** 
Create** #
(**# $
)**$ %
{++ 	
return,, 
View,, 
(,, 
),, 
;,, 
}-- 	
[// 	
CustomAuthorize//	 
(// 
$str// $
,//$ %
$str//& -
)//- .
]//. /
[00 	
HttpPost00	 
(00 
$str00 4
)004 5
]005 6
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Create11) /
(11/ 0
CustomerViewModel110 A
customerViewModel11B S
)11S T
{22 	
if33 
(33 
!33 

ModelState33 
.33 
IsValid33 #
)33# $
return33% +
View33, 0
(330 1
customerViewModel331 B
)33B C
;33C D
if55 
(55 
ResponseHasErrors55 !
(55! "
await55" '
_customerAppService55( ;
.55; <
Register55< D
(55D E
customerViewModel55E V
)55V W
)55W X
)55X Y
return66 
View66 
(66 
customerViewModel66 -
)66- .
;66. /
ViewBag88 
.88 
Sucesso88 
=88 
$str88 4
;884 5
return:: 
View:: 
(:: 
customerViewModel:: )
)::) *
;::* +
};; 	
[== 	
CustomAuthorize==	 
(== 
$str== $
,==$ %
$str==& -
)==- .
]==. /
[>> 	
HttpGet>>	 
(>> 
$str>> >
)>>> ?
]>>? @
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Edit??) -
(??- .
Guid??. 2
???2 3
id??4 6
)??6 7
{@@ 	
ifAA 
(AA 
idAA 
==AA 
nullAA 
)AA 
returnAA "
NotFoundAA# +
(AA+ ,
)AA, -
;AA- .
varCC 
customerViewModelCC !
=CC" #
awaitCC$ )
_customerAppServiceCC* =
.CC= >
GetByIdCC> E
(CCE F
idCCF H
.CCH I
ValueCCI N
)CCN O
;CCO P
ifEE 
(EE 
customerViewModelEE !
==EE" $
nullEE% )
)EE) *
returnEE+ 1
NotFoundEE2 :
(EE: ;
)EE; <
;EE< =
returnGG 
ViewGG 
(GG 
customerViewModelGG )
)GG) *
;GG* +
}HH 	
[JJ 	
CustomAuthorizeJJ	 
(JJ 
$strJJ $
,JJ$ %
$strJJ& -
)JJ- .
]JJ. /
[KK 	
HttpPostKK	 
(KK 
$strKK ?
)KK? @
]KK@ A
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
EditLL) -
(LL- .
CustomerViewModelLL. ?
customerViewModelLL@ Q
)LLQ R
{MM 	
ifNN 
(NN 
!NN 

ModelStateNN 
.NN 
IsValidNN #
)NN# $
returnNN% +
ViewNN, 0
(NN0 1
customerViewModelNN1 B
)NNB C
;NNC D
ifPP 
(PP 
ResponseHasErrorsPP !
(PP! "
awaitPP" '
_customerAppServicePP( ;
.PP; <
UpdatePP< B
(PPB C
customerViewModelPPC T
)PPT U
)PPU V
)PPV W
returnQQ 
ViewQQ 
(QQ 
customerViewModelQQ -
)QQ- .
;QQ. /
ViewBagSS 
.SS 
SucessoSS 
=SS 
$strSS 1
;SS1 2
returnUU 
ViewUU 
(UU 
customerViewModelUU )
)UU) *
;UU* +
}VV 	
[XX 	
CustomAuthorizeXX	 
(XX 
$strXX $
,XX$ %
$strXX& .
)XX. /
]XX/ 0
[YY 	
HttpGetYY	 
(YY 
$strYY @
)YY@ A
]YYA B
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
DeleteZZ) /
(ZZ/ 0
GuidZZ0 4
?ZZ4 5
idZZ6 8
)ZZ8 9
{[[ 	
if\\ 
(\\ 
id\\ 
==\\ 
null\\ 
)\\ 
return\\ "
NotFound\\# +
(\\+ ,
)\\, -
;\\- .
var^^ 
customerViewModel^^ !
=^^" #
await^^$ )
_customerAppService^^* =
.^^= >
GetById^^> E
(^^E F
id^^F H
.^^H I
Value^^I N
)^^N O
;^^O P
if`` 
(`` 
customerViewModel`` !
==``" $
null``% )
)``) *
return``+ 1
NotFound``2 :
(``: ;
)``; <
;``< =
returnbb 
Viewbb 
(bb 
customerViewModelbb )
)bb) *
;bb* +
}cc 	
[ee 	
CustomAuthorizeee	 
(ee 
$stree $
,ee$ %
$stree& .
)ee. /
]ee/ 0
[ff 	
HttpPostff	 
(ff 
$strff A
)ffA B
,ffB C

ActionNameffD N
(ffN O
$strffO W
)ffW X
]ffX Y
publicgg 
asyncgg 
Taskgg 
<gg 
IActionResultgg '
>gg' (
DeleteConfirmedgg) 8
(gg8 9
Guidgg9 =
idgg> @
)gg@ A
{hh 	
ifii 
(ii 
ResponseHasErrorsii !
(ii! "
awaitii" '
_customerAppServiceii( ;
.ii; <
Removeii< B
(iiB C
idiiC E
)iiE F
)iiF G
)iiG H
returnjj 
Viewjj 
(jj 
awaitjj !
_customerAppServicejj" 5
.jj5 6
GetByIdjj6 =
(jj= >
idjj> @
)jj@ A
)jjA B
;jjB C
ViewBagll 
.ll 
Sucessoll 
=ll 
$strll 1
;ll1 2
returnmm 
RedirectToActionmm #
(mm# $
$strmm$ +
)mm+ ,
;mm, -
}nn 	
[pp 	
AllowAnonymouspp	 
]pp 
[qq 	
HttpGetqq	 
(qq 
$strqq A
)qqA B
]qqB C
publicrr 
asyncrr 
Taskrr 
<rr 

JsonResultrr $
>rr$ %
Historyrr& -
(rr- .
Guidrr. 2
idrr3 5
)rr5 6
{ss 	
vartt 
customerHistoryDatatt #
=tt$ %
awaittt& +
_customerAppServicett, ?
.tt? @
GetAllHistorytt@ M
(ttM N
idttN P
)ttP Q
;ttQ R
returnuu 
Jsonuu 
(uu 
customerHistoryDatauu +
)uu+ ,
;uu, -
}vv 	
}ww 
}xx ã
oC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Controllers\HomeController.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Controllers $
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{		 	
return

 
View

 
(

 
)

 
;

 
} 	
[ 	
Route	 
( 
$str '
)' (
]( )
public 
IActionResult 
Errors #
(# $
int$ '
id( *
)* +
{ 	
var 
	modelErro 
= 
new 
ErrorViewModel  .
(. /
)/ 0
;0 1
if 
( 
id 
== 
$num 
) 
{ 
	modelErro 
. 
Message !
=" #
$str$ k
;k l
	modelErro 
. 
Title 
=  !
$str" :
;: ;
	modelErro 
. 
	ErrorCode #
=$ %
id& (
;( )
} 
else 
if 
( 
id 
== 
$num 
) 
{ 
	modelErro 
. 
Message !
=" #
$str	$ é
;
é è
	modelErro 
. 
Title 
=  !
$str" 9
;9 :
	modelErro 
. 
	ErrorCode #
=$ %
id& (
;( )
} 
else 
if 
( 
id 
== 
$num 
) 
{ 
	modelErro   
.   
Message   !
=  " #
$str  $ E
;  E F
	modelErro!! 
.!! 
Title!! 
=!!  !
$str!!" 1
;!!1 2
	modelErro"" 
."" 
	ErrorCode"" #
=""$ %
id""& (
;""( )
}## 
else$$ 
{%% 
return&& 

StatusCode&& !
(&&! "
$num&&" %
)&&% &
;&&& '
}'' 
return)) 
View)) 
()) 
$str)) 
,))  
	modelErro))! *
)))* +
;))+ ,
}** 	
}++ 
},, ¡
jC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Models\ErrorViewModel.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
int 
	ErrorCode 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 Ñ
\C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Program.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
{ 
public 

static 
class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Á+
\C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\Startup.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
{ 
public 

class 
Startup 
{ 
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
Startup 
( 
IHostEnvironment '
env( +
)+ ,
{ 	
var 
builder 
= 
new  
ConfigurationBuilder 2
(2 3
)3 4
. 
SetBasePath 
( 
env  
.  !
ContentRootPath! 0
)0 1
. 
AddJsonFile 
( 
$str /
,/ 0
true1 5
,5 6
true7 ;
); <
. 
AddJsonFile 
( 
$" 
$str +
{+ ,
env, /
./ 0
EnvironmentName0 ?
}? @
$str@ E
"E F
,F G
trueH L
)L M
;M N
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
builder 
. 
AddUserSecrets &
<& '
Startup' .
>. /
(/ 0
)0 1
;1 2
} 
builder   
.   #
AddEnvironmentVariables   +
(  + ,
)  , -
;  - .
Configuration!! 
=!! 
builder!! #
.!!# $
Build!!$ )
(!!) *
)!!* +
;!!+ ,
}"" 	
public$$ 
void$$ 
ConfigureServices$$ %
($$% &
IServiceCollection$$& 8
services$$9 A
)$$A B
{%% 	
services'' 
.'' #
AddControllersWithViews'' ,
('', -
options''- 4
=>''5 7
{(( 
options)) 
.)) 
Filters)) 
.))  
Add))  #
())# $
new))$ '1
%AutoValidateAntiforgeryTokenAttribute))( M
())M N
)))N O
)))O P
;))P Q
}** 
)** 
;** 
services++ 
.++ 
AddRazorPages++ "
(++" #
)++# $
;++$ %
services.. 
... $
AddDatabaseConfiguration.. -
(..- .
Configuration... ;
)..; <
;..< =
services11 
.11 *
AddWebAppIdentityConfiguration11 3
(113 4
Configuration114 A
)11A B
;11B C
services44 
.44 0
$AddSocialAuthenticationConfiguration44 9
(449 :
Configuration44: G
)44G H
;44H I
services77 
.77 &
AddAspNetUserConfiguration77 /
(77/ 0
)770 1
;771 2
services:: 
.:: &
AddAutoMapperConfiguration:: /
(::/ 0
)::0 1
;::1 2
services== 
.== 

AddMediatR== 
(==  
typeof==  &
(==& '
Startup==' .
)==. /
)==/ 0
;==0 1
services@@ 
.@@ /
#AddDependencyInjectionConfiguration@@ 8
(@@8 9
)@@9 :
;@@: ;
}AA 	
publicCC 
staticCC 
voidCC 
	ConfigureCC $
(CC$ %
IApplicationBuilderCC% 8
appCC9 <
,CC< =
IWebHostEnvironmentCC> Q
envCCR U
)CCU V
{DD 	
ifEE 
(EE 
envEE 
.EE 
IsDevelopmentEE !
(EE! "
)EE" #
)EE# $
{FF 
appGG 
.GG %
UseDeveloperExceptionPageGG -
(GG- .
)GG. /
;GG/ 0
appHH 
.HH  
UseDatabaseErrorPageHH (
(HH( )
)HH) *
;HH* +
}II 
elseJJ 
{KK 
appLL 
.LL 
UseExceptionHandlerLL '
(LL' (
$strLL( 4
)LL4 5
;LL5 6
appMM 
.MM +
UseStatusCodePagesWithRedirectsMM 3
(MM3 4
$strMM4 @
)MM@ A
;MMA B
appNN 
.NN 
UseHstsNN 
(NN 
)NN 
;NN 
}OO 
appQQ 
.QQ 
UseHttpsRedirectionQQ #
(QQ# $
)QQ$ %
;QQ% &
appRR 
.RR 
UseStaticFilesRR 
(RR 
)RR  
;RR  !
appTT 
.TT 

UseRoutingTT 
(TT 
)TT 
;TT 
appVV 
.VV  
UseAuthConfigurationVV $
(VV$ %
)VV% &
;VV& '
appXX 
.XX 
UseEndpointsXX 
(XX 
	endpointsXX &
=>XX' )
{YY 
	endpointsZZ 
.ZZ 
MapControllerRouteZZ ,
(ZZ, -
name[[ 
:[[ 
$str[[ #
,[[# $
pattern\\ 
:\\ 
$str\\ E
)\\E F
;\\F G
	endpoints]] 
.]] 
MapRazorPages]] '
(]]' (
)]]( )
;]]) *
}^^ 
)^^ 
;^^ 
}__ 	
}`` 
}aa §
xC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.UI.Web\ViewComponents\SummaryViewComponent.cs
	namespace 	
Equinox
 
. 
UI 
. 
Web 
. 
ViewComponents '
{ 
public 

class  
SummaryViewComponent %
:& '
ViewComponent( 5
{ 
public  
IViewComponentResult #
Invoke$ *
(* +
)+ ,
{ 	
return		 
View		 
(		 
$str		 !
)		! "
;		" #
}

 	
} 
} 