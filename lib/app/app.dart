import 'package:api_flutter/api_session/cubit/api_cubit.dart';
import 'package:api_flutter/api_session/screens/api_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api_session/cubit/api_state.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiCubit()..getAlbumsData,
        ),
      ],
      child:  MaterialApp(
        title: 'Flutter Up Academy',
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<ApiCubit, ApiState>(builder: (context, state) {
          return const Scaffold(
            body: Column(
              children: [
                Text('data'),
              ],
            ),
          );
        }),
      ),
    );
  }
}
