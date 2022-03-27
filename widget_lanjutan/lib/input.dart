import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  @override
  _Input createState() => _Input();
}

class _Input extends State<InputScreen> {
  String _name = '';
  bool lightOn = false;
  String language = '';
  bool agree = false;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Text'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Write your text here',
                        labelText: "Your Name....."),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Switch(
                      value: lightOn,
                      onChanged: (bool value) {
                        setState(() {
                          lightOn = value;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(lightOn ? 'Light On' : 'Light Off'),
                          duration: Duration(seconds: 1),
                        ));
                      }),
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Hello ${_controller.text}'),
                              );
                            });
                      },
                      child: Text('Submit')),
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Text('Dart'),
                  leading: Radio<String>(
                    value: 'Dart',
                    groupValue: language,
                    onChanged: (value) {
                      setState(() {
                        language = value!;
                        showSnackbar();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Kotlin'),
                  leading: Radio<String>(
                    value: 'Kotlin',
                    groupValue: language,
                    onChanged: (value) {
                      setState(() {
                        language = value!;
                        showSnackbar();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Swift'),
                  leading: Radio<String>(
                    value: 'Swift',
                    groupValue: language,
                    onChanged: (value) {
                      setState(() {
                        language = value!;
                        showSnackbar();
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Checkbox(
                    onChanged: (value) {
                      setState(() {
                        agree = value!;
                      });
                    },
                    value: agree,
                  ),
                  title: Text('Agree / Disagree'),
                )
              ],
            ),
          ),
        ),
      ),
    );

    // // TODO: implement build
    // throw UnimplementedError();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
