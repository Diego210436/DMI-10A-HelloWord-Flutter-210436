import 'package:flutter/material.dart';

class CounterfunctionsScreen extends StatefulWidget {
  const CounterfunctionsScreen({super.key});

  @override
  State<CounterfunctionsScreen> createState() => _CounterfunctionsScreenState();
}

class _CounterfunctionsScreenState extends State<CounterfunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador-functions_210436'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
                style: TextStyle(
                    fontSize: 160, 
                    fontWeight: FontWeight.w100,
                    color: clickCounter > 0
                    ? Colors.green
                    :clickCounter < 0
                      ? Colors.red
                      :Colors.blue,
                ),
              ),
              //Para hacer que sea click o clickS
              Text(
                (clickCounter == 1 || clickCounter == -1)
                    ? 'Click'
                    : 'Clicks',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
              ),
          ],
        ),
      ),
      floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end, // Posición al final de la pantalla
  children: [
    CustomButton(
              icon: Icons.plus_one,
              color: Colors.green,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              color: Colors.red,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.refresh_rounded,
              color: Colors.blue,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            )
  ],
)

    );
  }
}


class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: color,
      child: Icon(icon),
    );
  }
}

