import 'package:flutter/material.dart';
import 'package:test_slash/core/routing/app_routers.dart';
class SlashApp extends StatelessWidget{
  const SlashApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,


    );
  }



}