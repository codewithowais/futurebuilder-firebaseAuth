import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<String> futureCall() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Codewithowais";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: FutureBuilder(
          future: futureCall(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 30),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
