import 'package:dart_mappable/dart_mappable.dart';

part 'characters_event.mapper.dart';

@MappableClass()
abstract class CharactersEvent with CharactersEventMappable {
  const CharactersEvent();
}

@MappableClass()
class FetchCharactersEvent extends CharactersEvent
    with FetchCharactersEventMappable {
  const FetchCharactersEvent();
}

@MappableClass()
class RefreshCharactersEvent extends CharactersEvent
    with RefreshCharactersEventMappable {
  const RefreshCharactersEvent();
}

@MappableClass()
class FetchMoreCharactersEvent extends CharactersEvent
    with FetchMoreCharactersEventMappable {
  const FetchMoreCharactersEvent();
}

@MappableClass()
class FetchCharacterEvent extends CharactersEvent
    with FetchCharacterEventMappable {
  const FetchCharacterEvent(this.characterId);

  final int characterId;
}
