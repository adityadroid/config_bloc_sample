import 'dart:async';
import 'package:bloc/bloc.dart';

import 'Bloc.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {

  @override
  ConfigState get initialState => UnConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    print('Event is $event');
    if (event is RestartApp){
      yield RestartedAppState();
    }
  }
}
