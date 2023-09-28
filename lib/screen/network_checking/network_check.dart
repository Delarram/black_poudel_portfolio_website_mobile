import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/connection_view_model/connected_state.dart';
import '../../view_model/connection_view_model/connected_view_model.dart';


class NetworkChecking extends StatelessWidget {
  const NetworkChecking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      listener: (context, state) {
        if (state is ConnectedSucessState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Internet Connected')));
        } else if (state is ConnectedFailureState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Internet Lost')));
        }
      },
      builder: (context, state) {
        if (state is ConnectedSucessState) {
          return  Container(color: Colors.amber,);
        }
        else {
          return  Container(color: Colors.indigo,);
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // LoadingAnimationWidget.staggeredDotsWave(
            //     color: primaryColor, size: 50.0),
            // SizedBox(height: 3.h),
            Text("Connection failed! please check ur connection"),
          ],
        ),
      ),
    );
  }
}
