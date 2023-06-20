import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/user_details/details_label.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        leading: const Icon(
          CupertinoIcons.profile_circled,
          color: Colors.white,
          size: 25,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.profile_circled,
                  size: 150,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 50),
                const MyLabel(
                  icon: CupertinoIcons.profile_circled,
                  str: 'Name',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),
                const MyLabel(
                  icon: CupertinoIcons.calendar,
                  str: 'Birthday',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),
                const MyLabel(
                  icon: Icons.phone_android,
                  str: '9876543210',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),
                const MyLabel(
                  icon: Icons.email_outlined,
                  str: 'example@email.com',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),
                const MyLabel(
                  icon: Icons.password,
                  str: 'Password',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        color: Colors.deepPurple,
                        height: 60,
                        width: 250,
                        child: const Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        )
                    ),
                  ),
                ),
                const MyPopButton(),
              ]
          )
      ),
    );
  }
}

class MyPopButton extends StatelessWidget {
  const MyPopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Text(
        'Home Page',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}