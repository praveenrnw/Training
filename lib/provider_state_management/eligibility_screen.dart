import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'eligibility_screen_provider.dart';

class EligiblityScreen extends StatelessWidget {
  const EligiblityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyContainer();
  }
}

class MyContainer extends StatelessWidget {
  final ageController = TextEditingController();
  MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityScreenProvider>(
        create: (context) => EligibilityScreenProvider(),
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: const Text(
                'Provider State Management',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(16),
              child: Form(child: Consumer<EligibilityScreenProvider>(
                builder: (context, provider, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            //if isEligible is null then set orange color else if it is true then set green else red
                            color: (provider.isEligible == null)
                                ? Colors.orangeAccent
                                : (provider.isEligible ?? true)
                                    ? Colors.green
                                    : Colors.redAccent),
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: ageController,
                        decoration: const InputDecoration(
                          hintText: "Give your age",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            final int age =
                                int.parse(ageController.text.trim());
                            provider.checkEligibility(age);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Check',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(provider.eligibilityMessage)
                    ],
                  );
                },
              )),
            ),
          );
        }));
  }
}
