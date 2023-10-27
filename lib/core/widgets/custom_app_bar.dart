 import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({required final String title}) {
    return AppBar(
      leading: Center(
        child: SvgPicture.asset(
          'assets/images/arrow_back.svg',
          height: 24,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:  Text(
        title,
        textAlign: TextAlign.center,
        style: Styles.style25,
      ),
    );
  }