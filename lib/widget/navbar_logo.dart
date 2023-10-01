
import 'package:black_poudel_portofolio/theme/app_theme.dart';
import 'package:flutter/material.dart';



class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,

    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textSty),
        Text("Black Poudel", style: textSty),

      ],
    );
  }
}
