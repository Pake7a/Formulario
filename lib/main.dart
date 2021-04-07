import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
    title: 'Formulario',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          /*InkWell(
            onTap: (){},
            child: SizedBox(
              width: 50.0,
              child: Icon(Icons.search,),),
          ),*/

          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        titleSpacing: 40.0,
        title: Text('Formulario'),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        shrinkWrap: true,
        children: <Widget>[
          ElevatedButton(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.calculator),
              title: Text('Matematica\n'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          ElevatedButton(
              child: ListTile(
                leading: Icon(FontAwesomeIcons.waveSquare),
                title: Text('Geometria\n'),
              ),
              onPressed:
                  () {} /*{
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },*/
              ),
          ElevatedButton(
              child: ListTile(
                leading: Icon(FontAwesomeIcons.atom),
                title: Text('Fisica\n'),
              ),
              onPressed:
                  () {} /*{
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },*/
              ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        titleSpacing: 40.0,
        title: Text('Formulario'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Logaritmi()),
              );
            },
            child: Text('Logaritmi'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Trigonometria'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Esponenziali'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Integrali'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Limiti'),
          ),
        ],
      ),
    );
  }
}

class Logaritmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SelectableText(
                'Definizioni di logaritmo:',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),

          //1)
          Row(
            children: <Widget>[
              SelectableText(
                ' ',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'log_{b}(a) = c',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              SelectableText(
                '    allora    ',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'b^c = a\n\n',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n\n"),
            ],
          ),

          //Fine 1)

          Row(
            children: <Widget>[
              SelectableText(
                'Proprietà dei logaritmi',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              SelectableText(
                '1)',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'a^{(log_{a}(b))} = b\n',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n"),
            ],
          ),

          Row(
            children: <Widget>[
              SelectableText(
                '2)',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'log_{a}(b*c) = log_{a}(b) + log_{a}(c)\n',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n"),
            ],
          ),

          Row(
            children: <Widget>[
              SelectableText(
                '3)',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'log_{a}(b/c) = log_{a}(b) - log_{a}(c)\n',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n"),
            ],
          ),

          Row(
            children: <Widget>[
              SelectableText(
                '4)',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'log_{a}(b) = log_{c}(b)/log_{c}(a)',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n"),
            ],
          ),

          Row(
            children: <Widget>[
              SelectableText(
                '5)',
                toolbarOptions: ToolbarOptions(copy: true),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                showCursor: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Math.tex(
                'log_{a}(b) = 1/log_{b}(a)',
                textStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                onErrorFallback: (err) => Container(
                  color: Colors.red,
                  child: Text(err.messageWithType,
                      style: TextStyle(color: Colors.yellow)),
                ),
              ),
              Text("\n"),
            ],
          ),
        ],
      ),
    );
  }
}
