# flutter_template

A new Flutter project.

## How to Use?

### Add new views
1. Create new view at `lib/views/`
2. Put annotaion

```
@RoutePage()    
class HomeScreen extends StatefulWidget {}    
```
3. run builder to build route

```shell
dart run build_runner build --delete-conflicting-outputs
```
4. Go to `lib/routes/app_router.dart` and add newly generated view to the list
```
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')      
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => [      
   //HomeScreen is generated as HomeRoute because     
   //of the replaceInRouteName property    
   AutoRoute(HomeRoute.page),    
  ]    
}    
```
5 use `context.router.pushNamed(SplashView.name);` for navigation

### Responsive APP
2 

type Device so that the auto import suggestion would show up:
```
import 'package:responsive_sizer/responsive_sizer.dart';
```

### Change logo of the app

1. put `logo.jpg` at `aasets/images/`
2. run following command in root directory of app

```shell
Dart run flutter_launcher_icons
```
