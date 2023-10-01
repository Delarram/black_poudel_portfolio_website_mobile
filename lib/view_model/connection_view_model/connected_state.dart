

import 'package:flutter/cupertino.dart';

@immutable
abstract class ConnectedState {}

class ConnectedInitial extends ConnectedState {}

class ConnectedInitialState extends ConnectedState {}

class ConnectedSucessState extends ConnectedState {}

class ConnectedFailureState extends ConnectedState {}
