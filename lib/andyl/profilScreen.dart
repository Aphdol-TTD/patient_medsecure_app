import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/customText.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.14,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(50))),
            child: Center(
                child: CustomText(
              text: "Informations du patient",
              fontSize: 16,
              color: secondaryColor,
              fontWeight: FontWeight.w700,
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Center(
                  child: CustomText(
                text: "AGO Zakarie",fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(
                height: 10,
              ),
              InfoWidget(
                title: 'Nom',
                content: 'AGO',
              ),
              InfoWidget(
                title: 'Prenom',
                content: 'Zakarie',
              ),
              InfoWidget(
                title: 'Age',
                content: '26 ans',
              ),
              InfoWidget(
                title: 'Adresse',
                content: 'Cotonou, Benin',
              ),
              InfoWidget(
                title: 'Téléphone',
                content: '+229 61 00 00 00',
              ),
              InfoWidget(
                title: 'Date de naissance',
                content: '1 Juillet 2004',
              )
            ],
          )
        ],
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final String title;
  final String content;
  const InfoWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: content,fontSize: 16,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
