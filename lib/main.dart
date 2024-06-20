import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/simple_bloc_observer.dart';
import 'package:test_slash/slash_app.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SlashApp());
}

