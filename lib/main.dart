import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _rememberMe = false; // Variable to track the checkbox state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App',
            style: TextStyle(color: Colors.white), // Set text color for AppBar
          ),
          backgroundColor: Colors.indigo, // Set AppBar background color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Added padding for better layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hi, Welcome Back!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Please Sign in to continue',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email or mobile number',
                  hintText: 'Enter email or mobile number',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: (value) {
                  return value!.isEmpty ? 'Please enter email' : null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-in with OTP action
                },
                child: const Text('Sign In With OTP'),
              ),
              SizedBox(height: 30),
              Text(
                'Password',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: (value) {
                  return value!.isEmpty ? 'Please enter password' : null;
                },
              ),
              SizedBox(height: 30),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  // Handle form submission
                },
                child: const Text('Submit'),
                color: Colors.indigo,
                textColor: Colors.white,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!; // Update the checkbox state
                      });
                    },
                  ),
                  const Text('Remember Me'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
