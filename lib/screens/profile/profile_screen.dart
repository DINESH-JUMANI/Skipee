import 'package:assignment/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void logout() async {
    var pref = await SharedPreferences.getInstance();
    pref.setBool("login", false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip
                .none, // Allows overflow of children outside the parent stack
            alignment: Alignment.topCenter,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFF1eb953),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              const Positioned(
                top: 100, // Positioning it to overlap half of the circle avatar
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/icon.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 90),
          Card(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name:',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey)),
                  Text('Holly',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('User Name:',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey)),
                  Text('holly232h',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone Number:',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey)),
                  Text('989898989',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: InkWell(
              onTap: logout,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFF1eb953)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SIGN OUT',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Color(0xFF1eb953)),
                    ),
                    Icon(
                      Icons.exit_to_app,
                      color: Color(0xFF1eb953),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
