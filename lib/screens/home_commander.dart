import 'package:flutter/material.dart';
import 'package:process_run/shell.dart';

class HomeCommander extends StatelessWidget {
  const HomeCommander({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var flutterExecutable = whichSync('flutter');
    TextEditingController textResult = TextEditingController();
    TextEditingController textEnter = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: textEnter,
                onFieldSubmitted: (value) async {
                  var shell = Shell();
                  await shell.run('''
                  
                  echo $flutterExecutable
                  
                  c:/windows/system32/diskmgmt.msc 
                                
                  ''');
                },
                decoration: const InputDecoration(
                  labelText: "Digite o comando...",
                ),
              ),
              TextField(
                controller: textResult,
              ),
            ],
          ),
      ),
    );
  }
}