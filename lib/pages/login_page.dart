import 'package:flutter/material.dart';
import 'package:manage_expenses_app/widgets/custom_button_widget.dart';
import 'package:manage_expenses_app/widgets/logo_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          bottom: 24.0,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          constraints: const BoxConstraints(minHeight: 600.0),
          alignment: Alignment.center,
          child: Wrap(
            spacing: 48.0,
            runSpacing: 48.0,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    LogoWidget(),
                    SizedBox(height: 36.0),
                    Flexible(
                      child: Text(
                        'Get your Money Under Control',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Flexible(
                      child: Text(
                        'Manage your expenses.',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Flexible(
                      child: Text(
                        'Seamlessly.',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomButtonWidget(
                      label: 'Sign Up with Email ID',
                      labelColor: Colors.white,
                      backgroundColor: Color(0XFF5C5DE0),
                    ),
                    const SizedBox(height: 16.0),
                    CustomButtonWidget(
                      leadinIcon: Image.asset('assets/logos/google_logo.png'),
                      label: 'Sign Up with Google',
                      labelColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(height: 32.0),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
