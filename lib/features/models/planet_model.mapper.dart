// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'planet_model.dart';

class PlanetModelMapper extends ClassMapperBase<PlanetModel> {
  PlanetModelMapper._();

  static PlanetModelMapper? _instance;
  static PlanetModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlanetModel';

  static int _$id(PlanetModel v) => v.id;
  static const Field<PlanetModel, int> _f$id = Field('id', _$id);
  static String _$name(PlanetModel v) => v.name;
  static const Field<PlanetModel, String> _f$name = Field('name', _$name);
  static bool _$isDestroyed(PlanetModel v) => v.isDestroyed;
  static const Field<PlanetModel, bool> _f$isDestroyed = Field(
    'isDestroyed',
    _$isDestroyed,
  );
  static String _$description(PlanetModel v) => v.description;
  static const Field<PlanetModel, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imageUrl(PlanetModel v) => v.imageUrl;
  static const Field<PlanetModel, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
  );
  static String? _$deletedAt(PlanetModel v) => v.deletedAt;
  static const Field<PlanetModel, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<PlanetModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #isDestroyed: _f$isDestroyed,
    #description: _f$description,
    #imageUrl: _f$imageUrl,
    #deletedAt: _f$deletedAt,
  };

  static PlanetModel _instantiate(DecodingData data) {
    return PlanetModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      isDestroyed: data.dec(_f$isDestroyed),
      description: data.dec(_f$description),
      imageUrl: data.dec(_f$imageUrl),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PlanetModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlanetModel>(map);
  }

  static PlanetModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlanetModel>(json);
  }
}

mixin PlanetModelMappable {
  String toJson() {
    return PlanetModelMapper.ensureInitialized().encodeJson<PlanetModel>(
      this as PlanetModel,
    );
  }

  Map<String, dynamic> toMap() {
    return PlanetModelMapper.ensureInitialized().encodeMap<PlanetModel>(
      this as PlanetModel,
    );
  }

  PlanetModelCopyWith<PlanetModel, PlanetModel, PlanetModel> get copyWith =>
      _PlanetModelCopyWithImpl<PlanetModel, PlanetModel>(
        this as PlanetModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlanetModelMapper.ensureInitialized().stringifyValue(
      this as PlanetModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlanetModelMapper.ensureInitialized().equalsValue(
      this as PlanetModel,
      other,
    );
  }

  @override
  int get hashCode {
    return PlanetModelMapper.ensureInitialized().hashValue(this as PlanetModel);
  }
}

extension PlanetModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlanetModel, $Out> {
  PlanetModelCopyWith<$R, PlanetModel, $Out> get $asPlanetModel =>
      $base.as((v, t, t2) => _PlanetModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanetModelCopyWith<$R, $In extends PlanetModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? imageUrl,
    String? deletedAt,
  });
  PlanetModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlanetModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlanetModel, $Out>
    implements PlanetModelCopyWith<$R, PlanetModel, $Out> {
  _PlanetModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlanetModel> $mapper =
      PlanetModelMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    bool? isDestroyed,
    String? description,
    String? imageUrl,
    Object? deletedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (isDestroyed != null) #isDestroyed: isDestroyed,
      if (description != null) #description: description,
      if (imageUrl != null) #imageUrl: imageUrl,
      if (deletedAt != $none) #deletedAt: deletedAt,
    }),
  );
  @override
  PlanetModel $make(CopyWithData data) => PlanetModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    isDestroyed: data.get(#isDestroyed, or: $value.isDestroyed),
    description: data.get(#description, or: $value.description),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  PlanetModelCopyWith<$R2, PlanetModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlanetModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

