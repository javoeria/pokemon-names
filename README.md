# pokemon

Get a random name from [Pokémon](https://en.wikipedia.org/wiki/Pok%C3%A9mon) creatures.

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

### languages

```dart
Pokemon.languages.contains('ja');
//=> true
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
