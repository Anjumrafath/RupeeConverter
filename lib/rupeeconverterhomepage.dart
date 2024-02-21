import 'package:flutter/material.dart';

class RupeeConverterHomePage extends StatefulWidget {
  @override
  _RupeeConverterHomePageState createState() => _RupeeConverterHomePageState();
}

class _RupeeConverterHomePageState extends State<RupeeConverterHomePage> {
  double _rupeeAmount = 0;
  double _dollarAmount = 0;
  static const double conversionRate = 0.012; // 1 INR = 0.014 USD

  void _convertRupeeToDollar(double rupee) {
    setState(() {
      _rupeeAmount = rupee;
      _dollarAmount = rupee * conversionRate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Rupee Converter')),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                iconColor: Colors.blueGrey,
                labelText: 'Enter Rupees (INR)',
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  _convertRupeeToDollar(double.parse(value));
                } else {
                  setState(() {
                    _dollarAmount = 0;
                  });
                }
              },
            ),
            SizedBox(height: 20.0),
            Text(
              '$_rupeeAmount INR = $_dollarAmount USD',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
