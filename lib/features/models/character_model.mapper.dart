// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_model.dart';

class CharacterModelMapper extends ClassMapperBase<CharacterModel> {
  CharacterModelMapper._();

  static CharacterModelMapper? _instance;
  static CharacterModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterModelMapper._());
      PlanetModelMapper.ensureInitialized();
      TransformationModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterModel';

  static int _$id(CharacterModel v) => v.id;
  static const Field<CharacterModel, int> _f$id = Field('id', _$id);
  static String _$name(CharacterModel v) => v.name;
  static const Field<CharacterModel, String> _f$name = Field('name', _$name);
  static String _$ki(CharacterModel v) => v.ki;
  static const Field<CharacterModel, String> _f$ki = Field('ki', _$ki);
  static String _$maxKi(CharacterModel v) => v.maxKi;
  static const Field<CharacterModel, String> _f$maxKi = Field('maxKi', _$maxKi);
  static String _$race(CharacterModel v) => v.race;
  static const Field<CharacterModel, String> _f$race = Field('race', _$race);
  static String _$gender(CharacterModel v) => v.gender;
  static const Field<CharacterModel, String> _f$gender = Field(
    'gender',
    _$gender,
  );
  static String _$description(CharacterModel v) => v.description;
  static const Field<CharacterModel, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imageUrl(CharacterModel v) => v.imageUrl;
  static const Field<CharacterModel, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
  );
  static String _$affiliation(CharacterModel v) => v.affiliation;
  static const Field<CharacterModel, String> _f$affiliation = Field(
    'affiliation',
    _$affiliation,
  );
  static String? _$deletedAt(CharacterModel v) => v.deletedAt;
  static const Field<CharacterModel, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );
  static PlanetModel? _$originPlanet(CharacterModel v) => v.originPlanet;
  static const Field<CharacterModel, PlanetModel> _f$originPlanet = Field(
    'originPlanet',
    _$originPlanet,
    opt: true,
  );
  static List<TransformationModel>? _$transformations(CharacterModel v) =>
      v.transformations;
  static const Field<CharacterModel, List<TransformationModel>>
  _f$transformations = Field('transformations', _$transformations, opt: true);

  @override
  final MappableFields<CharacterModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #ki: _f$ki,
    #maxKi: _f$maxKi,
    #race: _f$race,
    #gender: _f$gender,
    #description: _f$description,
    #imageUrl: _f$imageUrl,
    #affiliation: _f$affiliation,
    #deletedAt: _f$deletedAt,
    #originPlanet: _f$originPlanet,
    #transformations: _f$transformations,
  };

  static CharacterModel _instantiate(DecodingData data) {
    return CharacterModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      ki: data.dec(_f$ki),
      maxKi: data.dec(_f$maxKi),
      race: data.dec(_f$race),
      gender: data.dec(_f$gender),
      description: data.dec(_f$description),
      imageUrl: data.dec(_f$imageUrl),
      affiliation: data.dec(_f$affiliation),
      deletedAt: data.dec(_f$deletedAt),
      originPlanet: data.dec(_f$originPlanet),
      transformations: data.dec(_f$transformations),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterModel>(map);
  }

  static CharacterModel fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterModel>(json);
  }
}

mixin CharacterModelMappable {
  String toJson() {
    return CharacterModelMapper.ensureInitialized().encodeJson<CharacterModel>(
      this as CharacterModel,
    );
  }

  Map<String, dynamic> toMap() {
    return CharacterModelMapper.ensureInitialized().encodeMap<CharacterModel>(
      this as CharacterModel,
    );
  }

  CharacterModelCopyWith<CharacterModel, CharacterModel, CharacterModel>
  get copyWith => _CharacterModelCopyWithImpl<CharacterModel, CharacterModel>(
    this as CharacterModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CharacterModelMapper.ensureInitialized().stringifyValue(
      this as CharacterModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterModelMapper.ensureInitialized().equalsValue(
      this as CharacterModel,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterModelMapper.ensureInitialized().hashValue(
      this as CharacterModel,
    );
  }
}

extension CharacterModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterModel, $Out> {
  CharacterModelCopyWith<$R, CharacterModel, $Out> get $asCharacterModel =>
      $base.as((v, t, t2) => _CharacterModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharacterModelCopyWith<$R, $In extends CharacterModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PlanetModelCopyWith<$R, PlanetModel, PlanetModel>? get originPlanet;
  ListCopyWith<
    $R,
    TransformationModel,
    TransformationModelCopyWith<$R, TransformationModel, TransformationModel>
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
    String? imageUrl,
    String? affiliation,
    String? deletedAt,
    PlanetModel? originPlanet,
    List<TransformationModel>? transformations,
  });
  CharacterModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterModel, $Out>
    implements CharacterModelCopyWith<$R, CharacterModel, $Out> {
  _CharacterModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterModel> $mapper =
      CharacterModelMapper.ensureInitialized();
  @override
  PlanetModelCopyWith<$R, PlanetModel, PlanetModel>? get originPlanet =>
      $value.originPlanet?.copyWith.$chain((v) => call(originPlanet: v));
  @override
  ListCopyWith<
    $R,
    TransformationModel,
    TransformationModelCopyWith<$R, TransformationModel, TransformationModel>
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
    String? imageUrl,
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
      if (imageUrl != null) #imageUrl: imageUrl,
      if (affiliation != null) #affiliation: affiliation,
      if (deletedAt != $none) #deletedAt: deletedAt,
      if (originPlanet != $none) #originPlanet: originPlanet,
      if (transformations != $none) #transformations: transformations,
    }),
  );
  @override
  CharacterModel $make(CopyWithData data) => CharacterModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    ki: data.get(#ki, or: $value.ki),
    maxKi: data.get(#maxKi, or: $value.maxKi),
    race: data.get(#race, or: $value.race),
    gender: data.get(#gender, or: $value.gender),
    description: data.get(#description, or: $value.description),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
    affiliation: data.get(#affiliation, or: $value.affiliation),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
    originPlanet: data.get(#originPlanet, or: $value.originPlanet),
    transformations: data.get(#transformations, or: $value.transformations),
  );

  @override
  CharacterModelCopyWith<$R2, CharacterModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

