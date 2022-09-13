
C:\Users\user\Desktop\SonarQube_Learning\EquinoxProject-master\src\Equinox.Infra.CrossCutting.IoC\NativeInjectorBootStrapper.cs
	namespace 	
Equinox
 
. 
Infra 
. 
CrossCutting $
.$ %
IoC% (
{ 
public 

static 
class &
NativeInjectorBootStrapper 2
{ 
public 
static 
void 
RegisterServices +
(+ ,
IServiceCollection, >
services? G
)G H
{ 	
services 
. 
	AddScoped 
< 
IMediatorHandler /
,/ 0
InMemoryBus1 <
>< =
(= >
)> ?
;? @
services 
. 
	AddScoped 
< 
ICustomerAppService 2
,2 3
CustomerAppService4 F
>F G
(G H
)H I
;I J
services 
. 
	AddScoped 
<  
INotificationHandler 3
<3 4#
CustomerRegisteredEvent4 K
>K L
,L M 
CustomerEventHandlerN b
>b c
(c d
)d e
;e f
services 
. 
	AddScoped 
<  
INotificationHandler 3
<3 4 
CustomerUpdatedEvent4 H
>H I
,I J 
CustomerEventHandlerK _
>_ `
(` a
)a b
;b c
services   
.   
	AddScoped   
<    
INotificationHandler   3
<  3 4 
CustomerRemovedEvent  4 H
>  H I
,  I J 
CustomerEventHandler  K _
>  _ `
(  ` a
)  a b
;  b c
services## 
.## 
	AddScoped## 
<## 
IRequestHandler## .
<##. /&
RegisterNewCustomerCommand##/ I
,##I J
ValidationResult##K [
>##[ \
,##\ ]"
CustomerCommandHandler##^ t
>##t u
(##u v
)##v w
;##w x
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
IRequestHandler$$ .
<$$. /!
UpdateCustomerCommand$$/ D
,$$D E
ValidationResult$$F V
>$$V W
,$$W X"
CustomerCommandHandler$$Y o
>$$o p
($$p q
)$$q r
;$$r s
services%% 
.%% 
	AddScoped%% 
<%% 
IRequestHandler%% .
<%%. /!
RemoveCustomerCommand%%/ D
,%%D E
ValidationResult%%F V
>%%V W
,%%W X"
CustomerCommandHandler%%Y o
>%%o p
(%%p q
)%%q r
;%%r s
services(( 
.(( 
	AddScoped(( 
<(( 
ICustomerRepository(( 2
,((2 3
CustomerRepository((4 F
>((F G
(((G H
)((H I
;((I J
services)) 
.)) 
	AddScoped)) 
<)) 
EquinoxContext)) -
>))- .
()). /
)))/ 0
;))0 1
services,, 
.,, 
	AddScoped,, 
<,, !
IEventStoreRepository,, 4
,,,4 5#
EventStoreSqlRepository,,6 M
>,,M N
(,,N O
),,O P
;,,P Q
services-- 
.-- 
	AddScoped-- 
<-- 
IEventStore-- *
,--* +
SqlEventStore--, 9
>--9 :
(--: ;
)--; <
;--< =
services.. 
... 
	AddScoped.. 
<..  
EventStoreSqlContext.. 3
>..3 4
(..4 5
)..5 6
;..6 7
}// 	
}00 
}11 