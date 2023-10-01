import 'package:black_poudel_portofolio/screen/network_checking/network_check.dart';
import 'package:black_poudel_portofolio/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';


class MyWeb extends StatelessWidget {
  const MyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      ],
      child: MultiProvider(
        providers: [

        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Delarram',
              initialRoute: "/",
              routes: {"/": (context) => const NetworkChecking()},
            );
          });
        }),
      ),
    );
  }
}
