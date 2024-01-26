import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../about_app.dart';
import '../about_glucoma.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              onTap: () => Get.back(),
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              leading: Icon(
                Icons.home_outlined,
                color: Color(0xffB6EADA),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Glucoma());
              },
              child: ListTile(
                title: Text(
                  "About glaucoma",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                leading: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xffB6EADA),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const About());
              },
              child: ListTile(
                title: Text(
                  "About App",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                leading: Icon(
                  Icons.android_outlined,
                  color: Color(0xffB6EADA),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
