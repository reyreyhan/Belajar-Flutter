import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'City Home Regency',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'Sukolilo, Surabaya, Jawa Timur, Indonesia',
                  style: TextStyle(
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('5')
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE')

        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the "
            "industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled "
            "it to make a type specimen book. It has survived not only five centuries, "
            "but also the leap into electronic typesetting, remaining essentially unchanged. "
            "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
            "and more recently with desktop publishing software like Aldus PageMaker including versions of "
            "Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the "
            "industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled "
            "it to make a type specimen book. It has survived not only five centuries, "
            "but also the leap into electronic typesetting, remaining essentially unchanged. "
            "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
            "and more recently with desktop publishing software like Aldus PageMaker including versions of "
            "Lorem Ipsum.",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget imageSection = Container(
      child: Image.asset(
        'images/gambar.png',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI'),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

}