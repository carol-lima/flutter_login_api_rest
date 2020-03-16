import 'package:flutter_login_api_rest/app/login/login_bloc.dart';
import 'package:flutter_login_api_rest/app/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginBloc()),
      ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<LoginModule>.of();
}
