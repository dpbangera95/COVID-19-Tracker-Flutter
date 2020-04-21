import 'package:covidtrackerflutter/data_source.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ\'s'),
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Text(
                    DataSource.questionAnswers[index]['answer'],
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            );
          }),
    );
  }
}