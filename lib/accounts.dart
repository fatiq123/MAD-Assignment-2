import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterForgotPasswordApp());
}

class FlutterForgotPasswordApp extends StatelessWidget {
  const FlutterForgotPasswordApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // White background
        title: const Text(
          'Forgot Password Page',
          style: TextStyle(
            fontSize: 20, // Adjusted font size
            fontWeight: FontWeight.bold,
            color: Colors.black, // Black color
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 20, // Adjusted icon size
              color: Colors.black, // Black color
            ),
            onPressed: () {
              // Implement close action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center the entire content vertically
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.pink[100], // Lighter pink shade
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.lock,
                          size: 24, // Smaller lock icon
                          color: Colors.orange, // Adjusted golden color
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16, // Adjusted font size
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Black color
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16), // Increased spacing
                const Text(
                  'Enter your email that you used to register your account, so we can send you a link to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black, // Black color for "Email"
                      ),
                    ),
                    Text(
                      '*',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red, // Red color for "*"
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  height: 40, // Reduced text box height
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle sending the reset link
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12), // Adjusted button height
                  ),
                  child: const Text('Send link'),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 16),
                RichText(
                  text: const TextSpan(
                    text: 'Forgot your email? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '(Try phone number)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
