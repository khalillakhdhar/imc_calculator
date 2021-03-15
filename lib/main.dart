import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tester votre age',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final poid = TextEditingController();
  final taille = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    poid.dispose();
    taille.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lecture de valeur'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Column(children: <Widget>[
          TextField(
            controller: poid,
            decoration: const InputDecoration(
              hintText: 'votre poid ici',
            ),
          ),
          TextField(
            controller: taille,
            decoration: const InputDecoration(
              hintText: 'votre taille ici',
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(""),
              );
            },
          );
        },
        tooltip: 'tester mon age !',
        child: Icon(Icons.text_fields),
      ),
    );
  }

  int indice() {
    return 0;
  }
}
