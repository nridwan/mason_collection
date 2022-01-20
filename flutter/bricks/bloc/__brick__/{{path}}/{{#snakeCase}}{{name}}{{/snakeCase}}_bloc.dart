import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_event.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Bloc extends Bloc<{{#pascalCase}}{{name}}{{/pascalCase}}Event, {{#pascalCase}}{{name}}{{/pascalCase}}State> {
  {{#pascalCase}}{{name}}{{/pascalCase}}Bloc() : super({{#pascalCase}}{{name}}{{/pascalCase}}Initial());

  @override
  Stream<{{#pascalCase}}{{name}}{{/pascalCase}}State> mapEventToState(
    {{#pascalCase}}{{name}}{{/pascalCase}}Event event,
  ) async* {
    {{#events}}
    switch (event.runtimeType) {
      case {{#pascalCase}}{{name}}{{/pascalCase}}Event{{#pascalCase}}{{str}}{{/pascalCase}}:
        yield* action{{#pascalCase}}{{str}}{{/pascalCase}}();
    }
    {{/events}}
  }
  {{#events}}
  Stream<HomeState> action{{#pascalCase}}{{str}}{{/pascalCase}}() async* {}
  {{/events}}
}
