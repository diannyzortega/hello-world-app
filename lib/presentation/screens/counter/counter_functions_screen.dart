import 'package:flutter/material.dart';

class CounterFuctionsScreen extends StatefulWidget {
  const CounterFuctionsScreen({super.key});

  @override
  State<CounterFuctionsScreen> createState() => _CounterFuctionsScreenState();
}

class _CounterFuctionsScreenState extends State<CounterFuctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Counter Functions'), actions: [
          IconButton(
            icon: const Icon(Icons.refresh_outlined),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ]),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )

            //    if ( clickCounter == 1)
            //   const Text('Click', style: TextStyle( fontSize: 25),)
            //     else
            // const Text('Clicks', style: TextStyle( fontSize: 25),)
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.refresh_rounded),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.exposure_minus_1_outlined),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.plus_one),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  const CustomButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
