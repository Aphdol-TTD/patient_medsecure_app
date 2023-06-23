import 'package:patient_medsecure/andyl/updatePassword.dart';
import 'package:patient_medsecure/constants.dart';
import 'package:patient_medsecure/widgets/customText.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                 Positioned(
                  top: 0,
                  right: 20,
                  child: Image.asset(
                    'assets/images/aphdol.jpg', // Chemin de votre image locale
                    height: 200, // Hauteur souhaitée de l'image
                    width: 200, // Largeur souhaitée de l'image
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.9,
                  width: size.height * 0.7,
                ),
                Positioned(
                  left: -size.height * 0.15,
                  top: size.height * 0.25,
                  // bottom: size.height * 0.2,
                  child: Transform.rotate(
                    angle: 180,
                    child: Container(
                        height: size.height * 0.55,
                        width: size.height * 0.55,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: size.height * 0.10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.3),
                     Container(
                          height: 50, // Hauteur souhaitée pour "Welcome to"
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CustomText(
                            text: "Welcome to",
                            fontSize: 25,
                            color: secondaryColor,
                          ),
                        ),
                        Container(
                          //height: , // Hauteur souhaitée pour "Medisecure"
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CustomText(
                            text: "Medisecure",
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            color: secondaryColor,
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter your email"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      Align(
                      alignment: Alignment.centerRight,
                      child: 
                      AppButton(onTap: (){},color: Colors.cyan,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Confirmer",
                              style: TextStyle(
                                fontSize: 22,color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.arrow_right_alt_outlined,color: Colors.white,),
                          ],
                        ),
                      ).cornerRadiusWithClipRRect(50),
                    ),
      
                      /*Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: secondaryColor),
                              onPressed: () {},
                              child: const Text("Mot de Passe Oublié ?"))),*/
                      //SizedBox(height: 40,),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    final path = Path();

    path.lineTo(0, h * 0.8);
    // path.lineTo(w, h);
    path.quadraticBezierTo(w * 0.2, h, w * 0.9, h * 0.4);
    path.quadraticBezierTo(w * 0.9, h * 0.4, w * 0.2, h * 0.4);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
