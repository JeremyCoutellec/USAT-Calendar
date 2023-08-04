import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usat_calendar/src/features/order/logic/order_bloc.dart';

@RoutePage(name: 'OrderRoute')
class OrderWrapperView extends StatelessWidget {
  const OrderWrapperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderBloc(),
      child: Scaffold(
        body: AutoRouter(),
      ),
    );
  }
}
