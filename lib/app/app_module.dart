import 'package:flutter_login_api_rest/app/app_bloc.dart';
import 'package:flutter_login_api_rest/app/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_api_rest/app/app_widget.dart';
import 'package:flutter_login_api_rest/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
