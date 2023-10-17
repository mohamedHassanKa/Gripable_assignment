import 'package:flutter/material.dart';
import 'package:grippable_reddit/router/app_router.dart';
import 'package:grippable_reddit/theme/variables.dart';

enum ToastType { success, error, neutral }

class ToastService {
  static void showToast(String message,
      {ToastType toastType = ToastType.neutral}) {
    // FToast fToast = FToast();
    // fToast.init(appRouter!.routerDelegate.navigatorKey.currentContext!);

    var bgColor = kBlack1Color;
    var icon = Icons.info;

    switch (toastType) {
      case ToastType.error:
        bgColor = Colors.red;
        icon = Icons.priority_high;
        break;
      case ToastType.success:
        bgColor = Colors.green;
        icon = Icons.check;
        break;
      default:
        bgColor = kBlack1Color;
        icon = Icons.info_outline_rounded;
    }

    final snackBar = SnackBar(
        backgroundColor: kDarkPrimaryColor,
        showCloseIcon: true,
        closeIconColor: Colors.white.withOpacity(0.5),
        content: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: bgColor,
              ),
              child: Icon(
                icon,
                size: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                message,
                softWrap: true,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
    ScaffoldMessenger.of(appRouter.routerDelegate.navigatorKey.currentContext!)
        .showSnackBar(snackBar);
  }
}
