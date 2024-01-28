import 'package:go_router/go_router.dart';

void customNavigate(context, String routeName) {
  GoRouter.of(context).push(routeName);
}

void customReplacementNavigate(context, String routeName) {
  GoRouter.of(context).pushReplacement(routeName);
}
