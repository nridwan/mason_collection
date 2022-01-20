part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}Event extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Event();

  @override
  {{#pascalCase}}{{str}}{{/pascalCase}}<Object?> get props => [];
}
{{#events}}
class {{#pascalCase}}{{name}}{{/pascalCase}}Event{{#pascalCase}}{{str}}{{/pascalCase}} extends {{#pascalCase}}{{name}}{{/pascalCase}}Event {
  {{#pascalCase}}{{name}}{{/pascalCase}}Event{{#pascalCase}}{{str}}{{/pascalCase}}();
}
{{/events}}