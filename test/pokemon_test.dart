import 'package:pokemon/pokemon.dart';
import 'package:test/test.dart';

void main() {
  test('default', () {
    expect(Pokemon.all(), isNotEmpty);
    expect(Pokemon.random(), isNotNull);
    expect(Pokemon.random(), isNot(Pokemon.random()));
    expect(Pokemon.getName(143), 'Snorlax');
    expect(Pokemon.getId('Snorlax'), 143);
  });

  test('get all languages', () {
    expect(Pokemon.languages.contains('en'), isTrue);
    expect(Pokemon.languages.contains('de'), isTrue);
    expect(Pokemon.languages.contains('es'), isTrue);
    expect(Pokemon.languages.contains('th'), isTrue);
  });

  test('get all names', () {
    expect(Pokemon.all('en').length, 1025);
    expect(Pokemon.all('de').length, 1025);
    expect(Pokemon.all('es').length, 1025);
    expect(Pokemon.all('th').length, 1025);
  });

  test('get English name by ID', () {
    expect(Pokemon.getName(1, 'en'), 'Bulbasaur');
    expect(Pokemon.getName(400, 'en'), 'Bibarel');
    expect(Pokemon.getName(721, 'en'), 'Volcanion');
  });

  test('get ID by English name', () {
    expect(Pokemon.getId('Bulbasaur', 'en'), 1);
    expect(Pokemon.getId('Bibarel', 'en'), 400);
    expect(Pokemon.getId('Volcanion', 'en'), 721);
  });

  test('get English random name', () {
    final name = Pokemon.random('en');
    expect(Pokemon.all('en').indexOf(name), isNonNegative);
  });
}
