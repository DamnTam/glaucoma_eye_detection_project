import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Glucoma extends StatelessWidget {
  const Glucoma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Glaucoma"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "What is Glaucoma",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              """Glaucoma is a group of eye diseases that result in damage to the optic nerve, which is responsible for transmitting visual information from the eye to the brain. This damage leads to a gradual loss of vision, starting with peripheral vision, and can ultimately result in blindness if left untreated. The primary cause of glaucoma is typically elevated pressure within the eye, known as intraocular pressure, although other factors such as genetics, age, and health conditions can also play a role. There are several types of glaucoma, including open-angle glaucoma, angle-closure glaucoma, and normal-tension glaucoma, each with its own specific symptoms and treatment options. Early detection and treatment is important to prevent vision loss from glaucoma.""",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Why does Glaucoma occur?",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              """Glaucoma occurs when the optic nerve, which carries visual information from the eye to the brain, is damaged. This damage is usually caused by increased pressure within the eye, known as intraocular pressure. The increased pressure can cause the optic nerve to degrade over time, leading to vision loss.
      
      However, not all cases of glaucoma are caused by elevated intraocular pressure. Some people with normal intraocular pressure can also develop glaucoma, and this is known as normal-tension glaucoma. Other factors that can increase the risk of developing glaucoma include genetics, age, eye injury, and certain health conditions such as diabetes and high blood pressure.
      
      In some cases, glaucoma can develop suddenly and rapidly, which is known as acute angle-closure glaucoma. This type of glaucoma is caused by a sudden blockage of the drainage channels in the eye, leading to a rapid increase in intraocular pressure.
      
      It is important to have regular eye exams to detect glaucoma early and to ensure appropriate treatment to prevent vision loss.""",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "How to stay safe from glaucoma?",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              """Here are some ways to reduce the risk of developing glaucoma:
      
      Regular eye exams: Have comprehensive eye exams at least once every two years, or more frequently if you are at a higher risk of developing glaucoma.
      
      Control underlying health conditions: If you have high blood pressure or diabetes, it is important to control these conditions to reduce the risk of developing glaucoma.
      
      Wear protective eyewear: Wear protective eyewear during activities that may result in eye injury.
      
      Family history: If you have a family history of glaucoma, it is important to have your eyes checked more frequently and to inform your eye doctor about your family history.
      
      Healthy lifestyle: Maintaining a healthy lifestyle, including a balanced diet, regular exercise, and not smoking, can help reduce the risk of developing glaucoma.
      
      Reduce eye strain: Taking breaks from prolonged screen time and avoiding reading in low light can help reduce eye strain and reduce the risk of developing glaucoma.
      
      It is important to note that some people with no known risk factors can still develop glaucoma. Regular eye exams are crucial for early detection and effective treatment.""",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Primary treatment of glaucoma:",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              """Have regular comprehensive eye exams
Control risk factors such as high blood pressure and diabetes
If you are over the age of 40, have your eyes checked every 2-4 years
If you have a family history of glaucoma, have your eyes checked more frequently
Wear protective eyewear during activities that may result in eye injury.""",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ).paddingAll(10),
      ),
    );
  }
}
