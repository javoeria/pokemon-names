import 'package:pokemon/pokemon.dart';

void main() {
  print(Pokemon.all());
  //=> ['Bulbasaur', …]

  print(Pokemon.random());
  //=> 'Snorlax'

  print(Pokemon.getName(147));
  //=> 'Dratini'

  print(Pokemon.getId('Dratini'));
  //=> 147
}
