import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpageState();
}

class _CurrencyConverterMaterialpageState
    extends State<CurrencyConverterMaterialpage> {
  double result = 0;
  final TextEditingController tc = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.all(Radius.circular(23)));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(("Currency coverter")),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result.toString(),
            style: const TextStyle(
                fontFamily: "Arial", fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 2),
            child: TextField(
              controller: tc,
              decoration: InputDecoration(
                  hintText: 'enter the amonut in usd',
                  suffixIcon: Icon(Icons.monetization_on),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (double.parse(tc.text) * 81);
                });
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize:
                      WidgetStatePropertyAll(Size(double.infinity, 50))),
              child: const Text("convert"),
            ),
          )
        ],
      )),
    );
  }
}
