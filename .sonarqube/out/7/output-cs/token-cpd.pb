È	
zC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Configurations\AutoMapperConfig.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Configurations -
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
} π
xC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Configurations\DatabaseConfig.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Configurations -
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
} „
ÉC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Configurations\DependencyInjectionConfig.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Configurations -
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
} ¥#
wC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Configurations\SwaggerConfig.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Configurations -
{ 
public 

static 
class 
SwaggerConfig %
{		 
public

 
static

 
void

 #
AddSwaggerConfiguration

 2
(

2 3
this

3 7
IServiceCollection

8 J
services

K S
)

S T
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
AddSwaggerGen "
(" #
s# $
=>% '
{ 
s 
. 

SwaggerDoc 
( 
$str !
,! "
new# &
OpenApiInfo' 2
{ 
Version 
= 
$str "
," #
Title 
= 
$str -
,- .
Description 
=  !
$str" ?
,? @
Contact 
= 
new !
OpenApiContact" 0
{1 2
Name3 7
=8 9
$str: I
,I J
EmailK P
=Q R
$strS p
,p q
Urlr u
=v w
newx {
Uri| 
(	 Ä
$str
Ä †
)
† °
}
¢ £
,
£ §
License 
= 
new !
OpenApiLicense" 0
{1 2
Name3 7
=8 9
$str: ?
,? @
UrlA D
=E F
newG J
UriK N
(N O
$str	O ì
)
ì î
}
ï ñ
} 
) 
; 
s 
. !
AddSecurityDefinition '
(' (
$str( 0
,0 1
new2 5!
OpenApiSecurityScheme6 K
{ 
Description 
=  !
$str" K
,K L
Name 
= 
$str *
,* +
Scheme 
= 
$str %
,% &
BearerFormat  
=! "
$str# (
,( )
In 
= 
ParameterLocation *
.* +
Header+ 1
,1 2
Type   
=   
SecuritySchemeType   -
.  - .
ApiKey  . 4
}!! 
)!! 
;!! 
s## 
.## "
AddSecurityRequirement## (
(##( )
new##) ,&
OpenApiSecurityRequirement##- G
{$$ 
{%% 
new&& !
OpenApiSecurityScheme&& 1
{'' 
	Reference(( %
=((& '
new((( +
OpenApiReference((, <
{)) 
Type**  $
=**% &
ReferenceType**' 4
.**4 5
SecurityScheme**5 C
,**C D
Id++  "
=++# $
$str++% -
},, 
}-- 
,-- 
new.. 
string.. "
[.." #
]..# $
{..% &
}..& '
}// 
}00 
)00 
;00 
}22 
)22 
;22 
}33 	
public55 
static55 
void55 
UseSwaggerSetup55 *
(55* +
this55+ /
IApplicationBuilder550 C
app55D G
)55G H
{66 	
if77 
(77 
app77 
==77 
null77 
)77 
throw77 "
new77# &!
ArgumentNullException77' <
(77< =
nameof77= C
(77C D
app77D G
)77G H
)77H I
;77I J
app99 
.99 

UseSwagger99 
(99 
)99 
;99 
app:: 
.:: 
UseSwaggerUI:: 
(:: 
c:: 
=>:: !
{;; 
c<< 
.<< 
SwaggerEndpoint<< !
(<<! "
$str<<" <
,<<< =
$str<<> B
)<<B C
;<<C D
}== 
)== 
;== 
}>> 	
}?? 
}@@ ˙3
xC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Controllers\AccountController.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Controllers *
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
AccountController "
:# $
ApiController% 2
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
AppJwtSettings '
_appJwtSettings( 7
;7 8
public 
AccountController  
(  !
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
IOptions 
< 
AppJwtSettings #
># $
appJwtSettings% 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_appJwtSettings 
= 
appJwtSettings ,
., -
Value- 2
;2 3
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
>& '
Register( 0
(0 1
RegisterUser1 =
registerUser> J
)J K
{ 	
if   
(   
!   

ModelState   
.   
IsValid   #
)  # $
return  % +
CustomResponse  , :
(  : ;

ModelState  ; E
)  E F
;  F G
var"" 
user"" 
="" 
new"" 
IdentityUser"" '
{## 
UserName$$ 
=$$ 
registerUser$$ '
.$$' (
Email$$( -
,$$- .
Email%% 
=%% 
registerUser%% $
.%%$ %
Email%%% *
,%%* +
EmailConfirmed&& 
=&&  
true&&! %
}'' 
;'' 
var)) 
result)) 
=)) 
await)) 
_userManager)) +
.))+ ,
CreateAsync)), 7
())7 8
user))8 <
,))< =
registerUser))> J
.))J K
Password))K S
)))S T
;))T U
if++ 
(++ 
result++ 
.++ 
	Succeeded++  
)++  !
{,, 
return-- 
CustomResponse-- %
(--% &

GetFullJwt--& 0
(--0 1
user--1 5
.--5 6
Email--6 ;
)--; <
)--< =
;--= >
}.. 
foreach00 
(00 
var00 
error00 
in00 !
result00" (
.00( )
Errors00) /
)00/ 0
{11 
AddError22 
(22 
error22 
.22 
Description22 *
)22* +
;22+ ,
}33 
return55 
CustomResponse55 !
(55! "
)55" #
;55# $
}66 	
[88 	
HttpPost88	 
]88 
[99 	
Route99	 
(99 
$str99 
)99 
]99 
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
Login::) .
(::. /
	LoginUser::/ 8
	loginUser::9 B
)::B C
{;; 	
if<< 
(<< 
!<< 

ModelState<< 
.<< 
IsValid<< #
)<<# $
return<<% +
CustomResponse<<, :
(<<: ;

ModelState<<; E
)<<E F
;<<F G
var>> 
result>> 
=>> 
await>> 
_signInManager>> -
.>>- .
PasswordSignInAsync>>. A
(>>A B
	loginUser>>B K
.>>K L
Email>>L Q
,>>Q R
	loginUser>>S \
.>>\ ]
Password>>] e
,>>e f
false>>g l
,>>l m
true>>n r
)>>r s
;>>s t
if@@ 
(@@ 
result@@ 
.@@ 
	Succeeded@@  
)@@  !
{AA 
varBB 
fullJwtBB 
=BB 

GetFullJwtBB (
(BB( )
	loginUserBB) 2
.BB2 3
EmailBB3 8
)BB8 9
;BB9 :
returnCC 
CustomResponseCC %
(CC% &
fullJwtCC& -
)CC- .
;CC. /
}DD 
ifFF 
(FF 
resultFF 
.FF 
IsLockedOutFF "
)FF" #
{GG 
AddErrorHH 
(HH 
$strHH ;
)HH; <
;HH< =
returnII 
CustomResponseII %
(II% &
)II& '
;II' (
}JJ 
AddErrorLL 
(LL 
$strLL 1
)LL1 2
;LL2 3
returnMM 
CustomResponseMM !
(MM! "
)MM" #
;MM# $
}NN 	
privatePP 
stringPP 

GetFullJwtPP !
(PP! "
stringPP" (
emailPP) .
)PP. /
{QQ 	
returnRR 
newRR 

JwtBuilderRR !
(RR! "
)RR" #
.SS 
WithUserManagerSS  
(SS  !
_userManagerSS! -
)SS- .
.TT 
WithJwtSettingsTT  
(TT  !
_appJwtSettingsTT! 0
)TT0 1
.UU 
	WithEmailUU 
(UU 
emailUU  
)UU  !
.VV 
WithJwtClaimsVV 
(VV 
)VV  
.WW 
WithUserClaimsWW 
(WW  
)WW  !
.XX 
WithUserRolesXX 
(XX 
)XX  
.YY 

BuildTokenYY 
(YY 
)YY 
;YY 
}ZZ 	
}[[ 
}\\ å
tC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Controllers\ApiController.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Controllers *
{ 
[		 
ApiController		 
]		 
public

 

abstract

 
class

 
ApiController

 '
:

( )
ControllerBase

* 8
{ 
private 
readonly 
ICollection $
<$ %
string% +
>+ ,
_errors- 4
=5 6
new7 :
List; ?
<? @
string@ F
>F G
(G H
)H I
;I J
	protected 
ActionResult 
CustomResponse -
(- .
object. 4
result5 ;
=< =
null> B
)B C
{ 	
if 
( 
IsOperationValid  
(  !
)! "
)" #
{ 
return 
Ok 
( 
result  
)  !
;! "
} 
return 

BadRequest 
( 
new !$
ValidationProblemDetails" :
(: ;
new; >

Dictionary? I
<I J
stringJ P
,P Q
stringR X
[X Y
]Y Z
>Z [
{ 
{ 
$str 
, 
_errors %
.% &
ToArray& -
(- .
). /
}0 1
} 
) 
) 
; 
} 	
	protected 
ActionResult 
CustomResponse -
(- . 
ModelStateDictionary. B

modelStateC M
)M N
{ 	
var 
errors 
= 

modelState #
.# $
Values$ *
.* +

SelectMany+ 5
(5 6
e6 7
=>8 :
e; <
.< =
Errors= C
)C D
;D E
foreach 
( 
var 
error 
in !
errors" (
)( )
{ 
AddError   
(   
error   
.   
ErrorMessage   +
)  + ,
;  , -
}!! 
return## 
CustomResponse## !
(##! "
)##" #
;### $
}$$ 	
	protected&& 
ActionResult&& 
CustomResponse&& -
(&&- .
ValidationResult&&. >
validationResult&&? O
)&&O P
{'' 	
foreach(( 
((( 
var(( 
error(( 
in(( !
validationResult((" 2
.((2 3
Errors((3 9
)((9 :
{)) 
AddError** 
(** 
error** 
.** 
ErrorMessage** +
)**+ ,
;**, -
}++ 
return-- 
CustomResponse-- !
(--! "
)--" #
;--# $
}.. 	
	protected00 
bool00 
IsOperationValid00 '
(00' (
)00( )
{11 	
return22 
!22 
_errors22 
.22 
Any22 
(22  
)22  !
;22! "
}33 	
	protected55 
void55 
AddError55 
(55  
string55  &
erro55' +
)55+ ,
{66 	
_errors77 
.77 
Add77 
(77 
erro77 
)77 
;77 
}88 	
	protected:: 
void:: 
ClearErrors:: "
(::" #
)::# $
{;; 	
_errors<< 
.<< 
Clear<< 
(<< 
)<< 
;<< 
}== 	
}>> 
}?? †)
yC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Controllers\CustomerController.cs
	namespace 	
Equinox
 
. 
Services 
. 
Api 
. 
Controllers *
{ 
[ 
	Authorize 
] 
public 

class 
CustomerController #
:$ %
ApiController& 3
{ 
private 
readonly 
ICustomerAppService ,
_customerAppService- @
;@ A
public 
CustomerController !
(! "
ICustomerAppService" 5
customerAppService6 H
)H I
{ 	
_customerAppService 
=  !
customerAppService" 4
;4 5
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpGet	 
( 
$str &
)& '
]' (
public 
async 
Task 
< 
IEnumerable %
<% &
CustomerViewModel& 7
>7 8
>8 9
Get: =
(= >
)> ?
{ 	
return 
await 
_customerAppService ,
., -
GetAll- 3
(3 4
)4 5
;5 6
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpGet	 
( 
$str 0
)0 1
]1 2
public   
async   
Task   
<   
CustomerViewModel   +
>  + ,
Get  - 0
(  0 1
Guid  1 5
id  6 8
)  8 9
{!! 	
return"" 
await"" 
_customerAppService"" ,
."", -
GetById""- 4
(""4 5
id""5 7
)""7 8
;""8 9
}## 	
[%% 	
CustomAuthorize%%	 
(%% 
$str%% $
,%%$ %
$str%%& -
)%%- .
]%%. /
[&& 	
HttpPost&&	 
(&& 
$str&& '
)&&' (
]&&( )
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
Post'') -
(''- .
[''. /
FromBody''/ 7
]''7 8
CustomerViewModel''8 I
customerViewModel''J [
)''[ \
{(( 	
return)) 
!)) 

ModelState)) 
.)) 
IsValid)) &
?))' (
CustomResponse))) 7
())7 8

ModelState))8 B
)))B C
:))D E
CustomResponse))F T
())T U
await))U Z
_customerAppService))[ n
.))n o
Register))o w
())w x
customerViewModel	))x â
)
))â ä
)
))ä ã
;
))ã å
}** 	
[,, 	
CustomAuthorize,,	 
(,, 
$str,, $
,,,$ %
$str,,& -
),,- .
],,. /
[-- 	
HttpPut--	 
(-- 
$str-- &
)--& '
]--' (
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
Put..) ,
(.., -
[..- .
FromBody... 6
]..6 7
CustomerViewModel..7 H
customerViewModel..I Z
)..Z [
{// 	
return00 
!00 

ModelState00 
.00 
IsValid00 &
?00' (
CustomResponse00) 7
(007 8

ModelState008 B
)00B C
:00D E
CustomResponse00F T
(00T U
await00U Z
_customerAppService00[ n
.00n o
Update00o u
(00u v
customerViewModel	00v á
)
00á à
)
00à â
;
00â ä
}11 	
[33 	
CustomAuthorize33	 
(33 
$str33 $
,33$ %
$str33& .
)33. /
]33/ 0
[44 	

HttpDelete44	 
(44 
$str44 )
)44) *
]44* +
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Delete55) /
(55/ 0
Guid550 4
id555 7
)557 8
{66 	
return77 
CustomResponse77 !
(77! "
await77" '
_customerAppService77( ;
.77; <
Remove77< B
(77B C
id77C E
)77E F
)77F G
;77G H
}88 	
[:: 	
AllowAnonymous::	 
]:: 
[;; 	
HttpGet;;	 
(;; 
$str;; 8
);;8 9
];;9 :
public<< 
async<< 
Task<< 
<<< 
IList<< 
<<<  
CustomerHistoryData<<  3
><<3 4
><<4 5
History<<6 =
(<<= >
Guid<<> B
id<<C E
)<<E F
{== 	
return>> 
await>> 
_customerAppService>> ,
.>>, -
GetAllHistory>>- :
(>>: ;
id>>; =
)>>= >
;>>> ?
}?? 	
}@@ 
}AA ê
bC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Program.cs
	namespace 	
Equinox
 
. 
Services 
. 
API 
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
} Ö&
bC:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Services.Api\Startup.cs
	namespace 	
Equinox
 
. 
Services 
. 
API 
{ 
public 

class 
Startup 
{ 
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
Startup 
( 
IHostEnvironment '
env( +
)+ ,
{ 	
var 
builder 
= 
new  
ConfigurationBuilder 2
(2 3
)3 4
. 
SetBasePath 
( 
env  
.  !
ContentRootPath! 0
)0 1
. 
AddJsonFile 
( 
$str /
,/ 0
true1 5
,5 6
true7 ;
); <
. 
AddJsonFile 
( 
$" 
$str +
{+ ,
env, /
./ 0
EnvironmentName0 ?
}? @
$str@ E
"E F
,F G
trueH L
)L M
;M N
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
builder 
. 
AddUserSecrets &
<& '
Startup' .
>. /
(/ 0
)0 1
;1 2
} 
builder 
. #
AddEnvironmentVariables +
(+ ,
), -
;- .
Configuration 
= 
builder #
.# $
Build$ )
() *
)* +
;+ ,
}   	
public"" 
void"" 
ConfigureServices"" %
(""% &
IServiceCollection""& 8
services""9 A
)""A B
{## 	
services%% 
.%% 
AddControllers%% #
(%%# $
)%%$ %
;%%% &
services(( 
.(( $
AddDatabaseConfiguration(( -
(((- .
Configuration((. ;
)((; <
;((< =
services++ 
.++ '
AddApiIdentityConfiguration++ 0
(++0 1
Configuration++1 >
)++> ?
;++? @
services.. 
... &
AddAspNetUserConfiguration.. /
(../ 0
)..0 1
;..1 2
services11 
.11 &
AddAutoMapperConfiguration11 /
(11/ 0
)110 1
;111 2
services44 
.44 #
AddSwaggerConfiguration44 ,
(44, -
)44- .
;44. /
services77 
.77 

AddMediatR77 
(77  
typeof77  &
(77& '
Startup77' .
)77. /
)77/ 0
;770 1
services:: 
.:: /
#AddDependencyInjectionConfiguration:: 8
(::8 9
)::9 :
;::: ;
};; 	
public== 
static== 
void== 
	Configure== $
(==$ %
IApplicationBuilder==% 8
app==9 <
,==< =
IWebHostEnvironment==> Q
env==R U
)==U V
{>> 	
if?? 
(?? 
env?? 
.?? 
IsDevelopment?? !
(??! "
)??" #
)??# $
{@@ 
appAA 
.AA %
UseDeveloperExceptionPageAA -
(AA- .
)AA. /
;AA/ 0
}BB 
appDD 
.DD 
UseHttpsRedirectionDD #
(DD# $
)DD$ %
;DD% &
appFF 
.FF 

UseRoutingFF 
(FF 
)FF 
;FF 
appHH 
.HH 
UseCorsHH 
(HH 
cHH 
=>HH 
{II 
cJJ 
.JJ 
AllowAnyHeaderJJ  
(JJ  !
)JJ! "
;JJ" #
cKK 
.KK 
AllowAnyMethodKK  
(KK  !
)KK! "
;KK" #
cLL 
.LL 
AllowAnyOriginLL  
(LL  !
)LL! "
;LL" #
}MM 
)MM 
;MM 
appOO 
.OO  
UseAuthConfigurationOO $
(OO$ %
)OO% &
;OO& '
appQQ 
.QQ 
UseEndpointsQQ 
(QQ 
	endpointsQQ &
=>QQ' )
{RR 
	endpointsSS 
.SS 
MapControllersSS (
(SS( )
)SS) *
;SS* +
}TT 
)TT 
;TT 
appVV 
.VV 
UseSwaggerSetupVV 
(VV  
)VV  !
;VV! "
}WW 	
}XX 
}YY 