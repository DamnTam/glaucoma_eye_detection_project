import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Glaucoma Detection App",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            Text(
              "By:\n",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            Text(
              "Supervisor: \n",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const profile(
              name: """Mr.Md.Ishtiaq Iqbal
Lecturer and Course Coordinator
Department of Information Technology
""",
              image: "assets/pic/sir.jpeg",
            ),
            Text(
              "Team Member: \n",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.end,
            ),
            const profile(

              name: """Mosharof Hossain
Email : mosharof.it.uits@gmail.com
ID : 1844455011
Dept : Information Technology (IT).
University of Information Technology and Sciences(UITS)
""",
              image: "assets/pic/mosharof.jpeg",
            ),
            const profile(
              name: """Nur Hasnat Tanzil
Email : tanzilhasnat321@gmail.com
ID : 1844455015
Dept : Information Technology (IT).
University of Information Technology and Sciences(UITS)
""",
              image: "assets/pic/tanjil.jpeg",
            ),
            Text(
              "Mosarof Hossain and Nur Hasnat Tanzil are developed machine learning algorithm to detect Glaucoma.\n",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const profile(
              name: """Tanvir Ahmed Moon
Email : Tanvirmoon33@gmail.com
ID : 1844455014
Dept : Information Technology (IT).
University of Information Technology and Sciences(UITS)
""",
              image: "assets/pic/moon.jpeg",
            ),
            const profile(
              name: """Sumona Akter
Email : sumona4349@gmail.com
ID : 1844455008
Dept : Information Technology (IT).
University of Information Technology and Sciences(UITS)
""",
              image: "assets/pic/sumona.jpeg",
            ),
            Text(
              "Tanvir Ahmed and Sumona Akter created a user-friendly interface by using Flutter framework.\n",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Result : The collaboration resulted in a powerful solution that enables early detection and improves patient outcomes.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ).paddingAll(10),
      ),
    );
  }
}

class profile extends StatelessWidget {
  const profile({super.key, this.name, this.image});
  final name;
  final image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
