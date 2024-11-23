import 'package:flutter/material.dart';

class ConvertCurrencyM extends StatefulWidget {
  const ConvertCurrencyM({super.key});

  @override
  State<ConvertCurrencyM> createState() => _ConvertCurrencyMState();
}

class _ConvertCurrencyMState extends State<ConvertCurrencyM> {
  double result = 0;
  final TextEditingController usdController = TextEditingController();
  static double rate = 130.0;
  void convert() {
    final double usd = double.parse(usdController.text);
    setState(() {
      result = usd * rate;
    });
  }

  @override
  void dispose() {
    usdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ksh ${result != 0 ? result.toStringAsFixed(2) : result}',
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: usdController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  labelText: 'USD',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: convert,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageM extends StatelessWidget {
  const HomePageM({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConvertCurrencyM();
  }
}
