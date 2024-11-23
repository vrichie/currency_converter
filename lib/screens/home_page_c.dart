import 'package:flutter/cupertino.dart';

class ConvertCurrencyC extends StatefulWidget {
  const ConvertCurrencyC({super.key});

  @override
  State<ConvertCurrencyC> createState() => _ConvertCurrencyCState();
}

class _ConvertCurrencyCState extends State<ConvertCurrencyC> {
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
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Currency Converter'),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Center(
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
                    color: CupertinoColors.activeBlue),
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                controller: usdController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.activeBlue,
                minSize: 50,
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageC extends StatelessWidget {
  const HomePageC({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConvertCurrencyC();
  }
}
