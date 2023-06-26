import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constants.dart';
import '../widgets/InputFormWidget.dart';
import '../widgets/customText.dart';
import 'LogInScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _specialiteController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _sexeController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  final String _selectedSexe = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var padding2;
    var padding3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
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
                  text: "Sign Up",fontSize: 16,
                  color: secondaryColor,
                  fontWeight: FontWeight.w700, padding: padding3,
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _nomController,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Nom',
                                  labelStyle: TextStyle(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.green,
                                  ),
                                  contentPadding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre nom';
                                  }
                                  return null;
                                },
                              ),
              
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _prenomController,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Prénom',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.green,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre prénom';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _specialiteController,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Spécialité',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre spécialité';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.email,
                                      size: 18.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre email';
                                  }
                                  // Autres validations de l'email si nécessaire
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _sexeController,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Sexe',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  contentPadding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez sélectionner votre sexe';
                                  }
                                  return null;
                                },
                                
                              ),
              
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _telephoneController,
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: 'Téléphone',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.green,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre téléphone';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10.0),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: !_isPasswordVisible,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelText: 'Mot de passe',
                                  labelStyle: const TextStyle(color: Colors.black),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.lock,
                                      size: 18.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPasswordVisible = !_isPasswordVisible;
                                      });
                                    },
                                    child: Icon(
                                      _isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez saisir votre mot de passe';
                                  }
                                  // Autres validations du mot de passe si nécessaire
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        ),
              ),
              AppButton(onTap: (){},
                child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                                margin: const EdgeInsets.symmetric(horizontal: 30),
                                width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: CustomText(
                                text: "S'inscrire",
                                color: secondaryColor,fontWeight: FontWeight.bold, padding: padding2,
                              ),
                              
                            ),
                          ),
              ),
                        const SizedBox(height: 20,)
                        ,TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Vous êtes déjà inscrit(e) ? Connectez-vous',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                        

            ],
          ),
        )
        ,
      ),
    );
  }
}
