
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'PageTwo.dart';
import 'config/Bloc.dart';

void main() async {
   runApp(
      BlocProvider<ConfigBloc>(
        builder: (context) => ConfigBloc(),
       child: Messio(),
      ));
}



class Messio extends StatefulWidget {
  @override
  _MessioState createState() => _MessioState();
}

class _MessioState extends State<Messio> {
  Key key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigBloc, ConfigState>(builder: (context, state) {
      print('Received state $state');
      if(state is RestartedAppState){
        key = UniqueKey();
      }
      return MaterialApp(
        title: 'Sample App',
        key: key,
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (ctx) {
            return SafeArea(
              child: Scaffold(
                body:
                Center(
                  child: MaterialButton(
                    child: Text('Login',style: TextStyle(color: Colors.white),),
                    color: Colors.blue,
                    onPressed: ()=> Navigator.push(ctx, MaterialPageRoute(builder: (ctx)=>PageTwo())),
                  ),
                ),
              ),
            );
          }
        )
      );
    });
  }
}
