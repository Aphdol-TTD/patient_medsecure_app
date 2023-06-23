import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/customText.dart';

class MenuScreenPage extends StatefulWidget {
  const MenuScreenPage({Key? key});

  @override
  _MenuScreenPageState createState() => _MenuScreenPageState();
}

class _MenuScreenPageState extends State<MenuScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AccueilPage(),
        '/profil': (context) => ProfilPage(),
        '/mondossier': (context) => MonDossierMedicalPage(),
        '/codeQR': (context) => CodeQRPage(),
        '/seDeconnecter': (context) => SeDeconnecterPage(),
      },
    );
  }
}

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: size.height * 0.14,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: borderColor,
                        child: const Icon(
                          Icons.person_2_sharp,
                          //color: secondaryColor,
                        ),
                      ),
                      CustomText(
                        text: "Médecin TETEDE Aphdol",
                        fontSize: 16,
                        color: secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text("Accueil"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_2),
                  title: const Text("Profil"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/profil');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_2),
                  title: const Text("Mon Dossier"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/mondossier');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.qr_code_scanner_outlined),
                  title: const Text("Mon code QR"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/codeQR');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Déconnexion"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/seDeconnecter');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Contenu de la page d\'accueil'),
      ),
    );
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text('Contenu de la page de profil'),
      ),
    );
  }
}

class MonDossierMedicalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text('Contenu de Dossier médical'),
      ),
    );
  }
}


class CodeQRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code QR'),
      ),
      body: const Center(
        child: Text('Contenu de la page du scannage de code QR'),
      ),
    );
  }
}


class SeDeconnecterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Se déconnecter'),
      ),
      body: const Center(
        child: Text('Contenu de la page de déconnexion'),
      ),
    );
  }
}
