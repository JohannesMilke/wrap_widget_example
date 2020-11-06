import 'package:flutter/material.dart';
import 'package:wrap_widget_example/widget/area_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Wrap Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: AreaWidget(
                color: Colors.green,
                title: 'ROW',
                child: buildRowArea(),
              ),
            ),
            Expanded(
              child: AreaWidget(
                color: Colors.blue,
                title: 'COLUMN',
                child: buildColumnArea(),
              ),
            ),
          ],
        ),
      );

  Widget buildRowArea() => Wrap(
        //spacing: 50,
        //runSpacing: 10,
        //alignment: WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.spaceAround,

        children: [
          buildButton('Button 1'),
          buildButton('Button 2'),
          buildButton('Button 3'),
          buildButton('Button 4'),
          buildButton('Button 5'),
          buildButton('Button 6'),
          buildButton('Button 7'),
          buildButton('Button 8'),
          buildButton('Button 9'),
          buildButton('Button 10'),
          buildButton('Button 11'),
          buildButton('Button 12'),
          buildButton('Button 13'),
          buildButton('Button 14'),
        ],
      );

  Widget buildColumnArea() => Wrap(
        direction: Axis.vertical,
        //spacing: 10,
        //runSpacing: 50,
        alignment: WrapAlignment.end,
        runAlignment: WrapAlignment.end,
        children: [
          buildButton('Button 1'),
          buildButton('Button 2'),
          buildButton('Button 3'),
          buildButton('Button 4'),
          buildButton('Button 5'),
          buildButton('Button 6'),
          buildButton('Button 7'),
          buildButton('Button 8'),
          buildButton('Button 9'),
          buildButton('Button 10'),
          buildButton('Button 11'),
          buildButton('Button 12'),
          buildButton('Button 13'),
          buildButton('Button 14'),
        ],
      );

  Widget buildButton(String text) => RaisedButton(
        child: Text(text),
        color: Colors.white,
        shape: StadiumBorder(),
        onPressed: () {},
      );
}
