import 'package:api_flutter/api_session/cubit/api_cubit.dart';
import 'package:api_flutter/api_session/cubit/api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiSession  extends StatelessWidget {
  const ApiSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        return Scaffold(
          body: state is GetAlbumLoadingState
          ? const Center(
            child: CircularProgressIndicator(),

          )
          : ListView.builder(
            itemBuilder: (context, index){
              return ListTile(
                title: Text(BlocProvider.of<ApiCubit>(context).albums[index].userId.toString()),
                subtitle: Text(BlocProvider.of<ApiCubit>(context).albums[index].id.toString()),
              leading: Text(BlocProvider.of<ApiCubit>(context).albums[index].title),
              );
            })
        );
      },
    );
  }

