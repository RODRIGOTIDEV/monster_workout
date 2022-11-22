import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_fitness/app/core.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                backgroundImage(),
                titleSubtitle(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formForget(),
                  const SizedBox(height: 20),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: kFirstColor,
                            ),
                            child: const Center(
                              child: Text(
                                "Registrar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.WELCOME),
                          child: Container(
                            height: 50,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kThirdColor,
                                border:
                                    Border.all(width: 1, color: kFirstColor)),
                            child: const Center(
                              child: Text(
                                "Cancelar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column formForget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextField(
          decoration: InputDecoration(
            labelText: "Nome",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "E-mail",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Telefone",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Senha",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "confirmar senha",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container titleSubtitle() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              kThirdColor,
              Colors.transparent,
            ]),
      ),
      height: Get.height * 0.55,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  children: [
                    TextSpan(
                      text: 'MONSTRO',
                      style: TextStyle(
                        color: kFirstColor,
                      ),
                    )
                  ]),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Escreva-se",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Treine e viva a nova experiência de \n exercitar"
                    " em casa",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.50,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/black/2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
