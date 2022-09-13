£
{C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Infra.CrossCutting.Identity\ApiIdentityConfig.cs
	namespace 	
Equinox
 
. 
Infra 
. 
CrossCutting $
.$ %
Identity% -
{ 
public		 

static		 
class		 
ApiIdentityConfig		 )
{

 
public 
static 
void '
AddApiIdentityConfiguration 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
,W X
IConfigurationY g
configurationh u
)u v
{ 	
services 
. :
.AddIdentityEntityFrameworkContextConfiguration C
(C D
optionsD K
=>L N
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
,[ \
b 
=> 
b 
. 
MigrationsAssembly -
(- .
$str. S
)S T
)T U
)U V
;V W
services 
. $
AddIdentityConfiguration -
(- .
). /
;/ 0
services 
. 
AddJwtConfiguration (
(( )
configuration) 6
,6 7
$str8 E
)E F
;F G
} 	
} 
} À
~C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Infra.CrossCutting.Identity\WebAppIdentityConfig.cs
	namespace 	
Equinox
 
. 
Infra 
. 
CrossCutting $
.$ %
Identity% -
{ 
public 

static 
class  
WebAppIdentityConfig ,
{		 
public

 
static

 
void

 *
AddWebAppIdentityConfiguration

 9
(

9 :
this

: >
IServiceCollection

? Q
services

R Z
,

Z [
IConfiguration

\ j
configuration

k x
)

x y
{ 	
services 
. :
.AddIdentityEntityFrameworkContextConfiguration C
(C D
optionsD K
=>L N/
#SqlServerDbContextOptionsExtensions 3
.3 4
UseSqlServer4 @
(@ A
optionsA H
,H I
configurationJ W
.W X
GetConnectionStringX k
(k l
$strl 
)	 €
,
€ 
b 
=> 
b 
. 
MigrationsAssembly -
(- .
$str. S
)S T
)T U
)U V
;V W
services 
. $
AddIdentityConfiguration -
(- .
). /
;/ 0
} 	
} 
} 