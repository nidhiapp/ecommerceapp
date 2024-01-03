import 'package:ecommerce/bloc/wishlist/wishlist_bloc.dart';
import 'package:ecommerce/bloc/wishlist/wishlist_event.dart';
import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:ecommerce/utils/routes/routes.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:[
      BlocProvider(create: (context) => WishListBloc(),) ],
     child:   MaterialApp(
     title: 'Flutter Demo',
     initialRoute: RoutesName.home,
     onGenerateRoute: Routes.generateRoute,
    ));
 
  }
}




