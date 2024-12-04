import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Navigation',
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/detail': (context) => DetailPage(),
      '/aboutus': (context) => AboutUs(),
      '/contact': (context) => ContactUs(),
      '/maps': (context) => Maps(),
    },
  );
}
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Detail Page'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage()));
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to About Us'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AboutUs()));
          },
        ),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Contact Us'),
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Maps'),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/maps');
          },
        ),
      ),
    );
  }
}

class Maps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Maps')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Back About Us'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}