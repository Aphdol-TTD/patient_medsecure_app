import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/InputFormWidget.dart';

class CustomerRegistrationScreen extends StatelessWidget {
  const CustomerRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backgroundColor,
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Icon(Icons.access_alarm, size: 50,),
        const InputFormWidget(label: "Nom",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Prénom(s)",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Date de naissance",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Adresse",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Téléphone",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Sexe",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Email",),
        const SizedBox(height: 10,),
        const InputFormWidget(label: "Profession",),
        const SizedBox(height: 10,),
        // ButtonWidget(tap: () {  },text: "Modifier",),
        const SizedBox(height: 12,),
        Row(children: [
            const Text("Vous avez déjà un compte ? "),
            TextButton(onPressed: (){}, child: const Text("Se connecter"))
          ],)
      ])
    );
  }
}