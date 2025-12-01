// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'planet_dto.dart';

class PlanetDtoMapper extends ClassMapperBase<PlanetDto> {
  PlanetDtoMapper._();

  static PlanetDtoMapper? _instance;
  static PlanetDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetDtoMapper._());
      PlanetCharacterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlanetDto';

  static int _$id(PlanetDto v) => v.id;
  static const Field<PlanetDto, int> _f$id = Field('id', _$id);
  static String _$name(PlanetDto v) => v.name;
  static const Field<PlanetDto, String> _f$name = Field('name', _$name);
  static bool _$isDestroyed(PlanetDto v) => v.isDestroyed;
  static const Field<PlanetDto, bool> _f$isDestroyed = Field(
    'isDestroyed',
    _$isDestroyed,
  );
  static String _$description(PlanetDto v) => v.description;
  static const Field<PlanetDto, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$image(PlanetDto v) => v.image;
  static const Field<PlanetDto, String> _f$image = Field('image', _$image);
  static String? _$deletedAt(PlanetDto v) => v.deletedAt;
  static const Field<PlanetDto, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );
  static List<PlanetCharacter>? _$characters(PlanetDto v) => v.characters;
  static const Field<PlanetDto, List<PlanetCharacter>> _f$characters = Field(
    'characters',
    _$characters,
    opt: true,
  );

  @override
  final MappableFields<PlanetDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #isDestroyed: _f$isDestroyed,
    #description: _f$description,
    #image: _f$image,
    #deletedAt: _f$deletedAt,
    #characters: _f$characters,
  };

  static PlanetDto _instantiate(DecodingData data) {
    return PlanetDto(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      isDestroyed: data.dec(_f$isDestroyed),
      description: data.dec(_f$description),
      image: data.dec(_f$image),
      deletedAt: data.dec(_f$deletedAt),
      characters: data.dec(_f$characters),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PlanetDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlanetDto>(map);
  }

  static PlanetDto fromJson(String json) {
    return ensureInitialized().decodeJson<PlanetDto>(json);
  }
}

mixin PlanetDtoMappable {
  String toJson() {
    return PlanetDtoMapper.ensureInitialized().encodeJson<PlanetDto>(
      this as PlanetDto,
    );
  }

  Map<String, dynamic> toMap() {
    return PlanetDtoMapper.ensureInitialized().encodeMap<PlanetDto>(
      this as PlanetDto,
    );
  }

  PlanetDtoCopyWith<PlanetDto, PlanetDto, PlanetDto> get copyWith =>
      _PlanetDtoCopyWithImpl<PlanetDto, PlanetDto>(
        this as PlanetDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlanetDtoMapper.ensureInitialized().stringifyValue(
      this as PlanetDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlanetDtoMapper.ensureInitialized().equalsValue(
      this as PlanetDto,
      other,
    );
  }

  @override
  int get hashCode {
    return PlanetDtoMapper.ensureInitialized().hashValue(this as PlanetDto);
  }
}

extension PlanetDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, PlanetDto, $Out> {
  PlanetDtoCopyWith<$R, PlanetDto, $Out> get $asPlanetDto =>
      $base.as((v, t, t2) => _PlanetDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanetDtoCopyWith<$R, $In extends PlanetDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PlanetCharacter,
    PlanetCharacterCopyWith<$R, PlanetCharacter, PlanetCharacter>
  >?
  get characters;
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? image,
    String? deletedAt,
    List<PlanetCharacter>? characters,
  });
  PlanetDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlanetDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlanetDto, $Out>
    implements PlanetDtoCopyWith<$R, PlanetDto, $Out> {
  _PlanetDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlanetDto> $mapper =
      PlanetDtoMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PlanetCharacter,
    PlanetCharacterCopyWith<$R, PlanetCharacter, PlanetCharacter>
  >?
  get characters => $value.characters != null
      ? ListCopyWith(
          $value.characters!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(characters: v),
        )
      : null;
  @override
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? image,
    Object? deletedAt = $none,
    Object? characters = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (isDestroyed != null) #isDestroyed: isDestroyed,
      if (description != null) #description: description,
      if (image != null) #image: image,
      if (deletedAt != $none) #deletedAt: deletedAt,
      if (characters != $none) #characters: characters,
    }),
  );
  @override
  PlanetDto $make(CopyWithData data) => PlanetDto(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    isDestroyed: data.get(#isDestroyed, or: $value.isDestroyed),
    description: data.get(#description, or: $value.description),
    image: data.get(#image, or: $value.image),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
    characters: data.get(#characters, or: $value.characters),
  );

  @override
  PlanetDtoCopyWith<$R2, PlanetDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlanetDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PlanetCharacterMapper extends ClassMapperBase<PlanetCharacter> {
  PlanetCharacterMapper._();

  static PlanetCharacterMapper? _instance;
  static PlanetCharacterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetCharacterMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlanetCharacter';

  static int _$id(PlanetCharacter v) => v.id;
  static const Field<PlanetCharacter, int> _f$id = Field('id', _$id);
  static String _$name(PlanetCharacter v) => v.name;
  static const Field<PlanetCharacter, String> _f$name = Field('name', _$name);
  static String _$ki(PlanetCharacter v) => v.ki;
  static const Field<PlanetCharacter, String> _f$ki = Field('ki', _$ki);
  static String _$maxKi(PlanetCharacter v) => v.maxKi;
  static const Field<PlanetCharacter, String> _f$maxKi = Field(
    'maxKi',
    _$maxKi,
  );
  static String _$race(PlanetCharacter v) => v.race;
  static const Field<PlanetCharacter, String> _f$race = Field('race', _$race);
  static String _$gender(PlanetCharacter v) => v.gender;
  static const Field<PlanetCharacter, String> _f$gender = Field(
    'gender',
    _$gender,
  );
  static String _$description(PlanetCharacter v) => v.description;
  static const Field<PlanetCharacter, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$image(PlanetCharacter v) => v.image;
  static const Field<PlanetCharacter, String> _f$image = Field(
    'image',
    _$image,
  );
  static String _$affiliation(PlanetCharacter v) => v.affiliation;
  static const Field<PlanetCharacter, String> _f$affiliation = Field(
    'affiliation',
    _$affiliation,
  );
  static String? _$deletedAt(PlanetCharacter v) => v.deletedAt;
  static const Field<PlanetCharacter, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<PlanetCharacter> fields = const {
    #id: _f$id,
    #name: _f$name,
    #ki: _f$ki,
    #maxKi: _f$maxKi,
    #race: _f$race,
    #gender: _f$gender,
    #description: _f$description,
    #image: _f$image,
    #affiliation: _f$affiliation,
    #deletedAt: _f$deletedAt,
  };

  static PlanetCharacter _instantiate(DecodingData data) {
    return PlanetCharacter(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      ki: data.dec(_f$ki),
      maxKi: data.dec(_f$maxKi),
      race: data.dec(_f$race),
      gender: data.dec(_f$gender),
      description: data.dec(_f$description),
      image: data.dec(_f$image),
      affiliation: data.dec(_f$affiliation),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PlanetCharacter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlanetCharacter>(map);
  }

  static PlanetCharacter fromJson(String json) {
    return ensureInitialized().decodeJson<PlanetCharacter>(json);
  }
}

mixin PlanetCharacterMappable {
  String toJson() {
    return PlanetCharacterMapper.ensureInitialized()
        .encodeJson<PlanetCharacter>(this as PlanetCharacter);
  }

  Map<String, dynamic> toMap() {
    return PlanetCharacterMapper.ensureInitialized().encodeMap<PlanetCharacter>(
      this as PlanetCharacter,
    );
  }

  PlanetCharacterCopyWith<PlanetCharacter, PlanetCharacter, PlanetCharacter>
  get copyWith =>
      _PlanetCharacterCopyWithImpl<PlanetCharacter, PlanetCharacter>(
        this as PlanetCharacter,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlanetCharacterMapper.ensureInitialized().stringifyValue(
      this as PlanetCharacter,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlanetCharacterMapper.ensureInitialized().equalsValue(
      this as PlanetCharacter,
      other,
    );
  }

  @override
  int get hashCode {
    return PlanetCharacterMapper.ensureInitialized().hashValue(
      this as PlanetCharacter,
    );
  }
}

extension PlanetCharacterValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlanetCharacter, $Out> {
  PlanetCharacterCopyWith<$R, PlanetCharacter, $Out> get $asPlanetCharacter =>
      $base.as((v, t, t2) => _PlanetCharacterCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanetCharacterCopyWith<$R, $In extends PlanetCharacter, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? ki,
    String? maxKi,
    String? race,
    String? gender,
    String? description,
    String? image,
    String? affiliation,
    String? deletedAt,
  });
  PlanetCharacterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PlanetCharacterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlanetCharacter, $Out>
    implements PlanetCharacterCopyWith<$R, PlanetCharacter, $Out> {
  _PlanetCharacterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlanetCharacter> $mapper =
      PlanetCharacterMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? ki,
    String? maxKi,
    String? race,
    String? gender,
    String? description,
    String? image,
    String? affiliation,
    Object? deletedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (ki != null) #ki: ki,
      if (maxKi != null) #maxKi: maxKi,
      if (race != null) #race: race,
      if (gender != null) #gender: gender,
      if (description != null) #description: description,
      if (image != null) #image: image,
      if (affiliation != null) #affiliation: affiliation,
      if (deletedAt != $none) #deletedAt: deletedAt,
    }),
  );
  @override
  PlanetCharacter $make(CopyWithData data) => PlanetCharacter(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    ki: data.get(#ki, or: $value.ki),
    maxKi: data.get(#maxKi, or: $value.maxKi),
    race: data.get(#race, or: $value.race),
    gender: data.get(#gender, or: $value.gender),
    description: data.get(#description, or: $value.description),
    image: data.get(#image, or: $value.image),
    affiliation: data.get(#affiliation, or: $value.affiliation),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  PlanetCharacterCopyWith<$R2, PlanetCharacter, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlanetCharacterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PlanetResponseMapper extends ClassMapperBase<PlanetResponse> {
  PlanetResponseMapper._();

  static PlanetResponseMapper? _instance;
  static PlanetResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetResponseMapper._());
      PlanetDtoMapper.ensureInitialized();
      MetaDtoMapper.ensureInitialized();
      LinksDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlanetResponse';

  static List<PlanetDto> _$items(PlanetResponse v) => v.items;
  static const Field<PlanetResponse, List<PlanetDto>> _f$items = Field(
    'items',
    _$items,
  );
  static MetaDto _$meta(PlanetResponse v) => v.meta;
  static const Field<PlanetResponse, MetaDto> _f$meta = Field('meta', _$meta);
  static LinksDto _$links(PlanetResponse v) => v.links;
  static const Field<PlanetResponse, LinksDto> _f$links = Field(
    'links',
    _$links,
  );

  @override
  final MappableFields<PlanetResponse> fields = const {
    #items: _f$items,
    #meta: _f$meta,
    #links: _f$links,
  };

  static PlanetResponse _instantiate(DecodingData data) {
    return PlanetResponse(
      items: data.dec(_f$items),
      meta: data.dec(_f$meta),
      links: data.dec(_f$links),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PlanetResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlanetResponse>(map);
  }

  static PlanetResponse fromJson(String json) {
    return ensureInitialized().decodeJson<PlanetResponse>(json);
  }
}

mixin PlanetResponseMappable {
  String toJson() {
    return PlanetResponseMapper.ensureInitialized().encodeJson<PlanetResponse>(
      this as PlanetResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return PlanetResponseMapper.ensureInitialized().encodeMap<PlanetResponse>(
      this as PlanetResponse,
    );
  }

  PlanetResponseCopyWith<PlanetResponse, PlanetResponse, PlanetResponse>
  get copyWith => _PlanetResponseCopyWithImpl<PlanetResponse, PlanetResponse>(
    this as PlanetResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PlanetResponseMapper.ensureInitialized().stringifyValue(
      this as PlanetResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlanetResponseMapper.ensureInitialized().equalsValue(
      this as PlanetResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return PlanetResponseMapper.ensureInitialized().hashValue(
      this as PlanetResponse,
    );
  }
}

extension PlanetResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlanetResponse, $Out> {
  PlanetResponseCopyWith<$R, PlanetResponse, $Out> get $asPlanetResponse =>
      $base.as((v, t, t2) => _PlanetResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanetResponseCopyWith<$R, $In extends PlanetResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, PlanetDto, PlanetDtoCopyWith<$R, PlanetDto, PlanetDto>>
  get items;
  MetaDtoCopyWith<$R, MetaDto, MetaDto> get meta;
  LinksDtoCopyWith<$R, LinksDto, LinksDto> get links;
  $R call({List<PlanetDto>? items, MetaDto? meta, LinksDto? links});
  PlanetResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PlanetResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlanetResponse, $Out>
    implements PlanetResponseCopyWith<$R, PlanetResponse, $Out> {
  _PlanetResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlanetResponse> $mapper =
      PlanetResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, PlanetDto, PlanetDtoCopyWith<$R, PlanetDto, PlanetDto>>
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  MetaDtoCopyWith<$R, MetaDto, MetaDto> get meta =>
      $value.meta.copyWith.$chain((v) => call(meta: v));
  @override
  LinksDtoCopyWith<$R, LinksDto, LinksDto> get links =>
      $value.links.copyWith.$chain((v) => call(links: v));
  @override
  $R call({List<PlanetDto>? items, MetaDto? meta, LinksDto? links}) => $apply(
    FieldCopyWithData({
      if (items != null) #items: items,
      if (meta != null) #meta: meta,
      if (links != null) #links: links,
    }),
  );
  @override
  PlanetResponse $make(CopyWithData data) => PlanetResponse(
    items: data.get(#items, or: $value.items),
    meta: data.get(#meta, or: $value.meta),
    links: data.get(#links, or: $value.links),
  );

  @override
  PlanetResponseCopyWith<$R2, PlanetResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlanetResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

