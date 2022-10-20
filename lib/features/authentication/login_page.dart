import 'package:first_app/design_system/my_images.dart';
import 'package:first_app/shared/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  void onPressed() {
    print('outrooo clicou');
  }

  void outro() {
    print('kaioo legal');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: kToolbarHeight),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const LogoWidget(
                    logoHeight: 50,
                    innerHeight: 25,
                    fontSize: 25.0,
                    signal: '\$',
                  ),
                  const SizedBox(width: 8),
                  Text('MONETA ACTION',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: "Usuário",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('Recuperar senha',
                        style: Theme.of(context).textTheme.subtitle1),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // OutlinedButton(
              //   onPressed: () {},
              //   child: const Text('Ola'),
              // ),
              // const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                      child: Divider(color: Color.fromARGB(255, 34, 32, 32))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('ou',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Expanded(
                      child: Divider(color: Color.fromARGB(255, 34, 32, 32))),
                ],
              ),
              const SizedBox(height: 16),
              SocialButton(
                imagePath: google,
                text: 'Login with Google',
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        fixedSize: const Size.fromHeight(50),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            color: const Color(0xFFFFC82C),
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFFC82C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
