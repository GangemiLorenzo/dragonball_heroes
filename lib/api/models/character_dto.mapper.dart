// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_dto.dart';

class CharacterDtoMapper extends ClassMapperBase<CharacterDto> {
  CharacterDtoMapper._();

  static CharacterDtoMapper? _instance;
  static CharacterDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterDtoMapper._());
      OriginPlanetMapper.ensureInitialized();
      CharacterTransformationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterDto';

  static int _$id(CharacterDto v) => v.id;
  static const Field<CharacterDto, int> _f$id = Field('id', _$id);
  static String _$name(CharacterDto v) => v.name;
  static const Field<CharacterDto, String> _f$name = Field('name', _$name);
  static String _$ki(CharacterDto v) => v.ki;
  static const Field<CharacterDto, String> _f$ki = Field('ki', _$ki);
  static String _$maxKi(CharacterDto v) => v.maxKi;
  static const Field<CharacterDto, String> _f$maxKi = Field('maxKi', _$maxKi);
  static String _$race(CharacterDto v) => v.race;
  static const Field<CharacterDto, String> _f$race = Field('race', _$race);
  static String _$gender(CharacterDto v) => v.gender;
  static const Field<CharacterDto, String> _f$gender = Field(
    'gender',
    _$gender,
  );
  static String _$description(CharacterDto v) => v.description;
  static const Field<CharacterDto, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$image(CharacterDto v) => v.image;
  static const Field<CharacterDto, String> _f$image = Field('image', _$image);
  static String _$affiliation(CharacterDto v) => v.affiliation;
  static const Field<CharacterDto, String> _f$affiliation = Field(
    'affiliation',
    _$affiliation,
  );
  static String? _$deletedAt(CharacterDto v) => v.deletedAt;
  static const Field<CharacterDto, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );
  static OriginPlanet? _$originPlanet(CharacterDto v) => v.originPlanet;
  static const Field<CharacterDto, OriginPlanet> _f$originPlanet = Field(
    'originPlanet',
    _$originPlanet,
    opt: true,
  );
  static List<CharacterTransformation>? _$transformations(CharacterDto v) =>
      v.transformations;
  static const Field<CharacterDto, List<CharacterTransformation>>
  _f$transformations = Field('transformations', _$transformations, opt: true);

  @override
  final MappableFields<CharacterDto> fields = const {
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
    #originPlanet: _f$originPlanet,
    #transformations: _f$transformations,
  };

  static CharacterDto _instantiate(DecodingData data) {
    return CharacterDto(
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
      originPlanet: data.dec(_f$originPlanet),
      transformations: data.dec(_f$transformations),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterDto>(map);
  }

  static CharacterDto fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterDto>(json);
  }
}

mixin CharacterDtoMappable {
  String toJson() {
    return CharacterDtoMapper.ensureInitialized().encodeJson<CharacterDto>(
      this as CharacterDto,
    );
  }

  Map<String, dynamic> toMap() {
    return CharacterDtoMapper.ensureInitialized().encodeMap<CharacterDto>(
      this as CharacterDto,
    );
  }

  CharacterDtoCopyWith<CharacterDto, CharacterDto, CharacterDto> get copyWith =>
      _CharacterDtoCopyWithImpl<CharacterDto, CharacterDto>(
        this as CharacterDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterDtoMapper.ensureInitialized().stringifyValue(
      this as CharacterDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterDtoMapper.ensureInitialized().equalsValue(
      this as CharacterDto,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterDtoMapper.ensureInitialized().hashValue(
      this as CharacterDto,
    );
  }
}

extension CharacterDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterDto, $Out> {
  CharacterDtoCopyWith<$R, CharacterDto, $Out> get $asCharacterDto =>
      $base.as((v, t, t2) => _CharacterDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharacterDtoCopyWith<$R, $In extends CharacterDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  OriginPlanetCopyWith<$R, OriginPlanet, OriginPlanet>? get originPlanet;
  ListCopyWith<
    $R,
    CharacterTransformation,
    CharacterTransformationCopyWith<
      $R,
      CharacterTransformation,
      CharacterTransformation
    >
  >?
  get transformations;
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
    OriginPlanet? originPlanet,
    List<CharacterTransformation>? transformations,
  });
  CharacterDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CharacterDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterDto, $Out>
    implements CharacterDtoCopyWith<$R, CharacterDto, $Out> {
  _CharacterDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterDto> $mapper =
      CharacterDtoMapper.ensureInitialized();
  @override
  OriginPlanetCopyWith<$R, OriginPlanet, OriginPlanet>? get originPlanet =>
      $value.originPlanet?.copyWith.$chain((v) => call(originPlanet: v));
  @override
  ListCopyWith<
    $R,
    CharacterTransformation,
    CharacterTransformationCopyWith<
      $R,
      CharacterTransformation,
      CharacterTransformation
    >
  >?
  get transformations => $value.transformations != null
      ? ListCopyWith(
          $value.transformations!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(transformations: v),
        )
      : null;
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
    Object? originPlanet = $none,
    Object? transformations = $none,
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
      if (originPlanet != $none) #originPlanet: originPlanet,
      if (transformations != $none) #transformations: transformations,
    }),
  );
  @override
  CharacterDto $make(CopyWithData data) => CharacterDto(
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
    originPlanet: data.get(#originPlanet, or: $value.originPlanet),
    transformations: data.get(#transformations, or: $value.transformations),
  );

  @override
  CharacterDtoCopyWith<$R2, CharacterDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OriginPlanetMapper extends ClassMapperBase<OriginPlanet> {
  OriginPlanetMapper._();

  static OriginPlanetMapper? _instance;
  static OriginPlanetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OriginPlanetMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OriginPlanet';

  static int _$id(OriginPlanet v) => v.id;
  static const Field<OriginPlanet, int> _f$id = Field('id', _$id);
  static String _$name(OriginPlanet v) => v.name;
  static const Field<OriginPlanet, String> _f$name = Field('name', _$name);
  static bool _$isDestroyed(OriginPlanet v) => v.isDestroyed;
  static const Field<OriginPlanet, bool> _f$isDestroyed = Field(
    'isDestroyed',
    _$isDestroyed,
  );
  static String _$description(OriginPlanet v) => v.description;
  static const Field<OriginPlanet, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$image(OriginPlanet v) => v.image;
  static const Field<OriginPlanet, String> _f$image = Field('image', _$image);
  static String? _$deletedAt(OriginPlanet v) => v.deletedAt;
  static const Field<OriginPlanet, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<OriginPlanet> fields = const {
    #id: _f$id,
    #name: _f$name,
    #isDestroyed: _f$isDestroyed,
    #description: _f$description,
    #image: _f$image,
    #deletedAt: _f$deletedAt,
  };

  static OriginPlanet _instantiate(DecodingData data) {
    return OriginPlanet(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      isDestroyed: data.dec(_f$isDestroyed),
      description: data.dec(_f$description),
      image: data.dec(_f$image),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OriginPlanet fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OriginPlanet>(map);
  }

  static OriginPlanet fromJson(String json) {
    return ensureInitialized().decodeJson<OriginPlanet>(json);
  }
}

mixin OriginPlanetMappable {
  String toJson() {
    return OriginPlanetMapper.ensureInitialized().encodeJson<OriginPlanet>(
      this as OriginPlanet,
    );
  }

  Map<String, dynamic> toMap() {
    return OriginPlanetMapper.ensureInitialized().encodeMap<OriginPlanet>(
      this as OriginPlanet,
    );
  }

  OriginPlanetCopyWith<OriginPlanet, OriginPlanet, OriginPlanet> get copyWith =>
      _OriginPlanetCopyWithImpl<OriginPlanet, OriginPlanet>(
        this as OriginPlanet,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OriginPlanetMapper.ensureInitialized().stringifyValue(
      this as OriginPlanet,
    );
  }

  @override
  bool operator ==(Object other) {
    return OriginPlanetMapper.ensureInitialized().equalsValue(
      this as OriginPlanet,
      other,
    );
  }

  @override
  int get hashCode {
    return OriginPlanetMapper.ensureInitialized().hashValue(
      this as OriginPlanet,
    );
  }
}

extension OriginPlanetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OriginPlanet, $Out> {
  OriginPlanetCopyWith<$R, OriginPlanet, $Out> get $asOriginPlanet =>
      $base.as((v, t, t2) => _OriginPlanetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OriginPlanetCopyWith<$R, $In extends OriginPlanet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? image,
    String? deletedAt,
  });
  OriginPlanetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OriginPlanetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OriginPlanet, $Out>
    implements OriginPlanetCopyWith<$R, OriginPlanet, $Out> {
  _OriginPlanetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OriginPlanet> $mapper =
      OriginPlanetMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? image,
    Object? deletedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (isDestroyed != null) #isDestroyed: isDestroyed,
      if (description != null) #description: description,
      if (image != null) #image: image,
      if (deletedAt != $none) #deletedAt: deletedAt,
    }),
  );
  @override
  OriginPlanet $make(CopyWithData data) => OriginPlanet(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    isDestroyed: data.get(#isDestroyed, or: $value.isDestroyed),
    description: data.get(#description, or: $value.description),
    image: data.get(#image, or: $value.image),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  OriginPlanetCopyWith<$R2, OriginPlanet, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OriginPlanetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterTransformationMapper
    extends ClassMapperBase<CharacterTransformation> {
  CharacterTransformationMapper._();

  static CharacterTransformationMapper? _instance;
  static CharacterTransformationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = CharacterTransformationMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterTransformation';

  static int _$id(CharacterTransformation v) => v.id;
  static const Field<CharacterTransformation, int> _f$id = Field('id', _$id);
  static String _$name(CharacterTransformation v) => v.name;
  static const Field<CharacterTransformation, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$image(CharacterTransformation v) => v.image;
  static const Field<CharacterTransformation, String> _f$image = Field(
    'image',
    _$image,
  );
  static String _$ki(CharacterTransformation v) => v.ki;
  static const Field<CharacterTransformation, String> _f$ki = Field('ki', _$ki);
  static String? _$deletedAt(CharacterTransformation v) => v.deletedAt;
  static const Field<CharacterTransformation, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<CharacterTransformation> fields = const {
    #id: _f$id,
    #name: _f$name,
    #image: _f$image,
    #ki: _f$ki,
    #deletedAt: _f$deletedAt,
  };

  static CharacterTransformation _instantiate(DecodingData data) {
    return CharacterTransformation(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      image: data.dec(_f$image),
      ki: data.dec(_f$ki),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterTransformation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterTransformation>(map);
  }

  static CharacterTransformation fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterTransformation>(json);
  }
}

mixin CharacterTransformationMappable {
  String toJson() {
    return CharacterTransformationMapper.ensureInitialized()
        .encodeJson<CharacterTransformation>(this as CharacterTransformation);
  }

  Map<String, dynamic> toMap() {
    return CharacterTransformationMapper.ensureInitialized()
        .encodeMap<CharacterTransformation>(this as CharacterTransformation);
  }

  CharacterTransformationCopyWith<
    CharacterTransformation,
    CharacterTransformation,
    CharacterTransformation
  >
  get copyWith =>
      _CharacterTransformationCopyWithImpl<
        CharacterTransformation,
        CharacterTransformation
      >(this as CharacterTransformation, $identity, $identity);
  @override
  String toString() {
    return CharacterTransformationMapper.ensureInitialized().stringifyValue(
      this as CharacterTransformation,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterTransformationMapper.ensureInitialized().equalsValue(
      this as CharacterTransformation,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterTransformationMapper.ensureInitialized().hashValue(
      this as CharacterTransformation,
    );
  }
}

extension CharacterTransformationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterTransformation, $Out> {
  CharacterTransformationCopyWith<$R, CharacterTransformation, $Out>
  get $asCharacterTransformation => $base.as(
    (v, t, t2) => _CharacterTransformationCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterTransformationCopyWith<
  $R,
  $In extends CharacterTransformation,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? image,
    String? ki,
    String? deletedAt,
  });
  CharacterTransformationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterTransformationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterTransformation, $Out>
    implements
        CharacterTransformationCopyWith<$R, CharacterTransformation, $Out> {
  _CharacterTransformationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterTransformation> $mapper =
      CharacterTransformationMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? image,
    String? ki,
    Object? deletedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (image != null) #image: image,
      if (ki != null) #ki: ki,
      if (deletedAt != $none) #deletedAt: deletedAt,
    }),
  );
  @override
  CharacterTransformation $make(CopyWithData data) => CharacterTransformation(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    image: data.get(#image, or: $value.image),
    ki: data.get(#ki, or: $value.ki),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  CharacterTransformationCopyWith<$R2, CharacterTransformation, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterTransformationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterResponseMapper extends ClassMapperBase<CharacterResponse> {
  CharacterResponseMapper._();

  static CharacterResponseMapper? _instance;
  static CharacterResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterResponseMapper._());
      CharacterDtoMapper.ensureInitialized();
      MetaDtoMapper.ensureInitialized();
      LinksDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterResponse';

  static List<CharacterDto> _$items(CharacterResponse v) => v.items;
  static const Field<CharacterResponse, List<CharacterDto>> _f$items = Field(
    'items',
    _$items,
  );
  static MetaDto _$meta(CharacterResponse v) => v.meta;
  static const Field<CharacterResponse, MetaDto> _f$meta = Field(
    'meta',
    _$meta,
  );
  static LinksDto _$links(CharacterResponse v) => v.links;
  static const Field<CharacterResponse, LinksDto> _f$links = Field(
    'links',
    _$links,
  );

  @override
  final MappableFields<CharacterResponse> fields = const {
    #items: _f$items,
    #meta: _f$meta,
    #links: _f$links,
  };

  static CharacterResponse _instantiate(DecodingData data) {
    return CharacterResponse(
      items: data.dec(_f$items),
      meta: data.dec(_f$meta),
      links: data.dec(_f$links),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterResponse>(map);
  }

  static CharacterResponse fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterResponse>(json);
  }
}

mixin CharacterResponseMappable {
  String toJson() {
    return CharacterResponseMapper.ensureInitialized()
        .encodeJson<CharacterResponse>(this as CharacterResponse);
  }

  Map<String, dynamic> toMap() {
    return CharacterResponseMapper.ensureInitialized()
        .encodeMap<CharacterResponse>(this as CharacterResponse);
  }

  CharacterResponseCopyWith<
    CharacterResponse,
    CharacterResponse,
    CharacterResponse
  >
  get copyWith =>
      _CharacterResponseCopyWithImpl<CharacterResponse, CharacterResponse>(
        this as CharacterResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterResponseMapper.ensureInitialized().stringifyValue(
      this as CharacterResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterResponseMapper.ensureInitialized().equalsValue(
      this as CharacterResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterResponseMapper.ensureInitialized().hashValue(
      this as CharacterResponse,
    );
  }
}

extension CharacterResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterResponse, $Out> {
  CharacterResponseCopyWith<$R, CharacterResponse, $Out>
  get $asCharacterResponse => $base.as(
    (v, t, t2) => _CharacterResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterResponseCopyWith<
  $R,
  $In extends CharacterResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CharacterDto,
    CharacterDtoCopyWith<$R, CharacterDto, CharacterDto>
  >
  get items;
  MetaDtoCopyWith<$R, MetaDto, MetaDto> get meta;
  LinksDtoCopyWith<$R, LinksDto, LinksDto> get links;
  $R call({List<CharacterDto>? items, MetaDto? meta, LinksDto? links});
  CharacterResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterResponse, $Out>
    implements CharacterResponseCopyWith<$R, CharacterResponse, $Out> {
  _CharacterResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterResponse> $mapper =
      CharacterResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CharacterDto,
    CharacterDtoCopyWith<$R, CharacterDto, CharacterDto>
  >
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
  $R call({List<CharacterDto>? items, MetaDto? meta, LinksDto? links}) =>
      $apply(
        FieldCopyWithData({
          if (items != null) #items: items,
          if (meta != null) #meta: meta,
          if (links != null) #links: links,
        }),
      );
  @override
  CharacterResponse $make(CopyWithData data) => CharacterResponse(
    items: data.get(#items, or: $value.items),
    meta: data.get(#meta, or: $value.meta),
    links: data.get(#links, or: $value.links),
  );

  @override
  CharacterResponseCopyWith<$R2, CharacterResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

