import 'package:config_bloc_sample/config/Bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: MaterialButton(
            child: Text('Log out',style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: ()=> BlocProvider.of<ConfigBloc>(context).dispatch(RestartApp()),
          ),
        ),
      ),
    );
  }
}
