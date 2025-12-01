// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'characters_event.dart';

class CharactersEventMapper extends ClassMapperBase<CharactersEvent> {
  CharactersEventMapper._();

  static CharactersEventMapper? _instance;
  static CharactersEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharactersEventMapper._());
      FetchCharactersEventMapper.ensureInitialized();
      RefreshCharactersEventMapper.ensureInitialized();
      FetchMoreCharactersEventMapper.ensureInitialized();
      FetchCharacterEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharactersEvent';

  @override
  final MappableFields<CharactersEvent> fields = const {};

  static CharactersEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('CharactersEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static CharactersEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharactersEvent>(map);
  }

  static CharactersEvent fromJson(String json) {
    return ensureInitialized().decodeJson<CharactersEvent>(json);
  }
}

mixin CharactersEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CharactersEventCopyWith<CharactersEvent, CharactersEvent, CharactersEvent>
  get copyWith;
}

abstract class CharactersEventCopyWith<$R, $In extends CharactersEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  CharactersEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class FetchCharactersEventMapper extends ClassMapperBase<FetchCharactersEvent> {
  FetchCharactersEventMapper._();

  static FetchCharactersEventMapper? _instance;
  static FetchCharactersEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FetchCharactersEventMapper._());
      CharactersEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchCharactersEvent';

  @override
  final MappableFields<FetchCharactersEvent> fields = const {};

  static FetchCharactersEvent _instantiate(DecodingData data) {
    return FetchCharactersEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static FetchCharactersEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchCharactersEvent>(map);
  }

  static FetchCharactersEvent fromJson(String json) {
    return ensureInitialized().decodeJson<FetchCharactersEvent>(json);
  }
}

mixin FetchCharactersEventMappable {
  String toJson() {
    return FetchCharactersEventMapper.ensureInitialized()
        .encodeJson<FetchCharactersEvent>(this as FetchCharactersEvent);
  }

  Map<String, dynamic> toMap() {
    return FetchCharactersEventMapper.ensureInitialized()
        .encodeMap<FetchCharactersEvent>(this as FetchCharactersEvent);
  }

  FetchCharactersEventCopyWith<
    FetchCharactersEvent,
    FetchCharactersEvent,
    FetchCharactersEvent
  >
  get copyWith =>
      _FetchCharactersEventCopyWithImpl<
        FetchCharactersEvent,
        FetchCharactersEvent
      >(this as FetchCharactersEvent, $identity, $identity);
  @override
  String toString() {
    return FetchCharactersEventMapper.ensureInitialized().stringifyValue(
      this as FetchCharactersEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchCharactersEventMapper.ensureInitialized().equalsValue(
      this as FetchCharactersEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchCharactersEventMapper.ensureInitialized().hashValue(
      this as FetchCharactersEvent,
    );
  }
}

extension FetchCharactersEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchCharactersEvent, $Out> {
  FetchCharactersEventCopyWith<$R, FetchCharactersEvent, $Out>
  get $asFetchCharactersEvent => $base.as(
    (v, t, t2) => _FetchCharactersEventCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FetchCharactersEventCopyWith<
  $R,
  $In extends FetchCharactersEvent,
  $Out
>
    implements CharactersEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FetchCharactersEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FetchCharactersEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchCharactersEvent, $Out>
    implements FetchCharactersEventCopyWith<$R, FetchCharactersEvent, $Out> {
  _FetchCharactersEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchCharactersEvent> $mapper =
      FetchCharactersEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FetchCharactersEvent $make(CopyWithData data) => FetchCharactersEvent();

  @override
  FetchCharactersEventCopyWith<$R2, FetchCharactersEvent, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FetchCharactersEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RefreshCharactersEventMapper
    extends ClassMapperBase<RefreshCharactersEvent> {
  RefreshCharactersEventMapper._();

  static RefreshCharactersEventMapper? _instance;
  static RefreshCharactersEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RefreshCharactersEventMapper._());
      CharactersEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RefreshCharactersEvent';

  @override
  final MappableFields<RefreshCharactersEvent> fields = const {};

  static RefreshCharactersEvent _instantiate(DecodingData data) {
    return RefreshCharactersEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static RefreshCharactersEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RefreshCharactersEvent>(map);
  }

  static RefreshCharactersEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RefreshCharactersEvent>(json);
  }
}

mixin RefreshCharactersEventMappable {
  String toJson() {
    return RefreshCharactersEventMapper.ensureInitialized()
        .encodeJson<RefreshCharactersEvent>(this as RefreshCharactersEvent);
  }

  Map<String, dynamic> toMap() {
    return RefreshCharactersEventMapper.ensureInitialized()
        .encodeMap<RefreshCharactersEvent>(this as RefreshCharactersEvent);
  }

  RefreshCharactersEventCopyWith<
    RefreshCharactersEvent,
    RefreshCharactersEvent,
    RefreshCharactersEvent
  >
  get copyWith =>
      _RefreshCharactersEventCopyWithImpl<
        RefreshCharactersEvent,
        RefreshCharactersEvent
      >(this as RefreshCharactersEvent, $identity, $identity);
  @override
  String toString() {
    return RefreshCharactersEventMapper.ensureInitialized().stringifyValue(
      this as RefreshCharactersEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return RefreshCharactersEventMapper.ensureInitialized().equalsValue(
      this as RefreshCharactersEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return RefreshCharactersEventMapper.ensureInitialized().hashValue(
      this as RefreshCharactersEvent,
    );
  }
}

extension RefreshCharactersEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RefreshCharactersEvent, $Out> {
  RefreshCharactersEventCopyWith<$R, RefreshCharactersEvent, $Out>
  get $asRefreshCharactersEvent => $base.as(
    (v, t, t2) => _RefreshCharactersEventCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RefreshCharactersEventCopyWith<
  $R,
  $In extends RefreshCharactersEvent,
  $Out
>
    implements CharactersEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  RefreshCharactersEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RefreshCharactersEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RefreshCharactersEvent, $Out>
    implements
        RefreshCharactersEventCopyWith<$R, RefreshCharactersEvent, $Out> {
  _RefreshCharactersEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RefreshCharactersEvent> $mapper =
      RefreshCharactersEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  RefreshCharactersEvent $make(CopyWithData data) => RefreshCharactersEvent();

  @override
  RefreshCharactersEventCopyWith<$R2, RefreshCharactersEvent, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RefreshCharactersEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FetchMoreCharactersEventMapper
    extends ClassMapperBase<FetchMoreCharactersEvent> {
  FetchMoreCharactersEventMapper._();

  static FetchMoreCharactersEventMapper? _instance;
  static FetchMoreCharactersEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = FetchMoreCharactersEventMapper._(),
      );
      CharactersEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchMoreCharactersEvent';

  @override
  final MappableFields<FetchMoreCharactersEvent> fields = const {};

  static FetchMoreCharactersEvent _instantiate(DecodingData data) {
    return FetchMoreCharactersEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static FetchMoreCharactersEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchMoreCharactersEvent>(map);
  }

  static FetchMoreCharactersEvent fromJson(String json) {
    return ensureInitialized().decodeJson<FetchMoreCharactersEvent>(json);
  }
}

mixin FetchMoreCharactersEventMappable {
  String toJson() {
    return FetchMoreCharactersEventMapper.ensureInitialized()
        .encodeJson<FetchMoreCharactersEvent>(this as FetchMoreCharactersEvent);
  }

  Map<String, dynamic> toMap() {
    return FetchMoreCharactersEventMapper.ensureInitialized()
        .encodeMap<FetchMoreCharactersEvent>(this as FetchMoreCharactersEvent);
  }

  FetchMoreCharactersEventCopyWith<
    FetchMoreCharactersEvent,
    FetchMoreCharactersEvent,
    FetchMoreCharactersEvent
  >
  get copyWith =>
      _FetchMoreCharactersEventCopyWithImpl<
        FetchMoreCharactersEvent,
        FetchMoreCharactersEvent
      >(this as FetchMoreCharactersEvent, $identity, $identity);
  @override
  String toString() {
    return FetchMoreCharactersEventMapper.ensureInitialized().stringifyValue(
      this as FetchMoreCharactersEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchMoreCharactersEventMapper.ensureInitialized().equalsValue(
      this as FetchMoreCharactersEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchMoreCharactersEventMapper.ensureInitialized().hashValue(
      this as FetchMoreCharactersEvent,
    );
  }
}

extension FetchMoreCharactersEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchMoreCharactersEvent, $Out> {
  FetchMoreCharactersEventCopyWith<$R, FetchMoreCharactersEvent, $Out>
  get $asFetchMoreCharactersEvent => $base.as(
    (v, t, t2) => _FetchMoreCharactersEventCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FetchMoreCharactersEventCopyWith<
  $R,
  $In extends FetchMoreCharactersEvent,
  $Out
>
    implements CharactersEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FetchMoreCharactersEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FetchMoreCharactersEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchMoreCharactersEvent, $Out>
    implements
        FetchMoreCharactersEventCopyWith<$R, FetchMoreCharactersEvent, $Out> {
  _FetchMoreCharactersEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchMoreCharactersEvent> $mapper =
      FetchMoreCharactersEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FetchMoreCharactersEvent $make(CopyWithData data) =>
      FetchMoreCharactersEvent();

  @override
  FetchMoreCharactersEventCopyWith<$R2, FetchMoreCharactersEvent, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FetchMoreCharactersEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FetchCharacterEventMapper extends ClassMapperBase<FetchCharacterEvent> {
  FetchCharacterEventMapper._();

  static FetchCharacterEventMapper? _instance;
  static FetchCharacterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FetchCharacterEventMapper._());
      CharactersEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchCharacterEvent';

  static int _$characterId(FetchCharacterEvent v) => v.characterId;
  static const Field<FetchCharacterEvent, int> _f$characterId = Field(
    'characterId',
    _$characterId,
  );

  @override
  final MappableFields<FetchCharacterEvent> fields = const {
    #characterId: _f$characterId,
  };

  static FetchCharacterEvent _instantiate(DecodingData data) {
    return FetchCharacterEvent(data.dec(_f$characterId));
  }

  @override
  final Function instantiate = _instantiate;

  static FetchCharacterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchCharacterEvent>(map);
  }

  static FetchCharacterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<FetchCharacterEvent>(json);
  }
}

mixin FetchCharacterEventMappable {
  String toJson() {
    return FetchCharacterEventMapper.ensureInitialized()
        .encodeJson<FetchCharacterEvent>(this as FetchCharacterEvent);
  }

  Map<String, dynamic> toMap() {
    return FetchCharacterEventMapper.ensureInitialized()
        .encodeMap<FetchCharacterEvent>(this as FetchCharacterEvent);
  }

  FetchCharacterEventCopyWith<
    FetchCharacterEvent,
    FetchCharacterEvent,
    FetchCharacterEvent
  >
  get copyWith =>
      _FetchCharacterEventCopyWithImpl<
        FetchCharacterEvent,
        FetchCharacterEvent
      >(this as FetchCharacterEvent, $identity, $identity);
  @override
  String toString() {
    return FetchCharacterEventMapper.ensureInitialized().stringifyValue(
      this as FetchCharacterEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchCharacterEventMapper.ensureInitialized().equalsValue(
      this as FetchCharacterEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchCharacterEventMapper.ensureInitialized().hashValue(
      this as FetchCharacterEvent,
    );
  }
}

extension FetchCharacterEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchCharacterEvent, $Out> {
  FetchCharacterEventCopyWith<$R, FetchCharacterEvent, $Out>
  get $asFetchCharacterEvent => $base.as(
    (v, t, t2) => _FetchCharacterEventCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FetchCharacterEventCopyWith<
  $R,
  $In extends FetchCharacterEvent,
  $Out
>
    implements CharactersEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? characterId});
  FetchCharacterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FetchCharacterEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchCharacterEvent, $Out>
    implements FetchCharacterEventCopyWith<$R, FetchCharacterEvent, $Out> {
  _FetchCharacterEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchCharacterEvent> $mapper =
      FetchCharacterEventMapper.ensureInitialized();
  @override
  $R call({int? characterId}) => $apply(
    FieldCopyWithData({if (characterId != null) #characterId: characterId}),
  );
  @override
  FetchCharacterEvent $make(CopyWithData data) =>
      FetchCharacterEvent(data.get(#characterId, or: $value.characterId));

  @override
  FetchCharacterEventCopyWith<$R2, FetchCharacterEvent, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FetchCharacterEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

