import 'package:flutter/material.dart';
import 'package:messenger_redesign/services/authentication_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Home Screen'),
              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 130,
                child: TextButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signOut();
                  },
                  child: const Text('Sign Out'),
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    backgroundColor: Colors.lightBlue,
                    primary: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
