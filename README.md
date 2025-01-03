# pokemon

Get a random name from [Pokémon](https://en.wikipedia.org/wiki/Pok%C3%A9mon) creatures.

[![Build Status](https://github.com/javoeria/pokemon-names/actions/workflows/dart.yml/badge.svg)](https://github.com/javoeria/pokemon-names/actions/workflows/dart.yml)
[![Pub Package](https://img.shields.io/pub/v/pokemon.svg)](https://pub.dev/packages/pokemon)

![](header.jpg)

## Usage

### all(language)

Get all Pokémon names as a `List<String>`.

```dart
Pokemon.all();
//=> ['Bulbasaur', …]
Pokemon.all('de');
//=> ['Bisasam', …]
```

### random(language)

Get random Pokémon name.

```dart
Pokemon.random();
//=> 'Vigoroth'
Pokemon.random('de');
//=> 'Muntier'
```

### getName(id, language)

Get Pokémon name from ID.

```dart
Pokemon.getName(100);
//=> 'Voltorb'
Pokemon.getName(100, 'de');
//=> 'Voltobal'
```

### getId(name, language)

Get Pokémon ID from name.

```dart
Pokemon.getId('Snorlax');
//=> 143
Pokemon.getId('Relaxo', 'de');
//=> 143
```

### getImageUrl(id)

Get URL of Pokémon artwork from ID, all images are hosted on [PokéAPI](https://github.com/PokeAPI/sprites).

```dart
Pokemon.getImageUrl(235);
//=> https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/235.png
```

## Supported languages

Pokémon names are available for the following languages:

- `de` (German)
- `en` (English)
- `fr` (French)
- `es` (Spanish)
- `ja` (Japanese)
- `ko` (Korean)
- `ru` (Russian)
- `th` (Thai)
- `zh-Hans` (Simplified Chinese)
- `zh-Hant` (Traditional Chinese)

## Known issues

- `ru` (Russian)
	- Does not include Pokemon 1009-1025 (Future Paradox Pokemon, and Pokemon released in Gen 9 Expansions - The Teal Mask, and The Indigo Disk). Cannot find credible source for translation.
