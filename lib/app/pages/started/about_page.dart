import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_fitness/app/routes/app_pages.dart';
import 'package:workout_fitness/app/shared/styles/colors.dart';
import 'package:workout_fitness/app/shared/widgets/option_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: Get.size.width,
            height: Get.size.height,
            color: kThirdColor.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(
                      text: 'TREINO ',
                      style: TextStyle(
                          fontFamily: "Bebas",
                          fontSize: 30,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'MONSTRO',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sobre você",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Queremos saber mais sobre você, siga os próximos \npassos para completar as informações",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: "Sou \niniciante",
                          detail: "Ja treinei algumas vezes",
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 10),
                        OptionWidget(
                          state: "Sou\nveterano",
                          detail: "Eu treino a ",
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
            ),
            child: const Center(
              child: Text(
                "Voltar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => Get.toNamed(Routes.REGISTRATION),
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kFirstColor,
            ),
            child: const Center(
              child: Text(
                "Proximo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
