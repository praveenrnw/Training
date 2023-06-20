import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyForm> {
  final formKey = GlobalKey<FormState>();
  final nameTextField = TextEditingController();
  final gmailTextField = TextEditingController();
  final numberTextField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        leading: const Icon(
          Icons.newspaper_sharp,
          color: Colors.white,
          size: 25,
        ),
        title: const Text(
            'FORM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            )
        ),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.redAccent[400],
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: nameTextField,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent, width: 1.8),
                    ),
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(color: Colors.redAccent),
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                      return 'Enter the correct name';
                    }else{
                      return null;
                    }
                  }, //validator
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: gmailTextField,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent, width: 1.8),
                    ),
                    hintText: 'Enter your gmail',
                    hintStyle: TextStyle(color: Colors.redAccent),
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'[a-z0-9]+@[a-z]+\.[a-z]{2,3}').hasMatch(value!)){
                      return 'Enter the correct gmail id';
                    }else{
                      return null;
                    }
                  }, //validator
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: numberTextField,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent, width: 1.8),
                    ),
                    hintText: 'Enter your number',
                    hintStyle: TextStyle(color: Colors.redAccent),
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(value!)){
                      return 'Enter the correct number';
                    }else{
                      return null;
                    }
                  }, //validator
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Divider(
                  color: Colors.redAccent[400],
                  thickness: 1,
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      nameTextField.clear();
                      gmailTextField.clear();
                      numberTextField.clear();
                      const snackbar = SnackBar(
                        content: Text(
                          'Form Submitted',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(5),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent[400],
                  ),
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
              const MyPopButton(),
            ],
          ),
        ),
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
