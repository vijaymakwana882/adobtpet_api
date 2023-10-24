import 'package:flutter/material.dart';
import 'api_helper.dart';

void main() {
  runApp(Adobtpet());
}

class Adobtpet extends StatefulWidget {
  const Adobtpet({super.key});

  @override
  State<Adobtpet> createState() => _AdobtpetState();
}

class _AdobtpetState extends State<Adobtpet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  var data;

  @override
  void initState() {
    super.initState();
    callingData();
  }

  callingData() async {
    data = await ApiHelper.apiHelper.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('${data}'),
        ),
      ),
    );
  }
}
