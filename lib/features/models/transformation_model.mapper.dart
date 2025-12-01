// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'transformation_model.dart';

class TransformationModelMapper extends ClassMapperBase<TransformationModel> {
  TransformationModelMapper._();

  static TransformationModelMapper? _instance;
  static TransformationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransformationModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TransformationModel';

  static int _$id(TransformationModel v) => v.id;
  static const Field<TransformationModel, int> _f$id = Field('id', _$id);
  static String _$name(TransformationModel v) => v.name;
  static const Field<TransformationModel, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$imageUrl(TransformationModel v) => v.imageUrl;
  static const Field<TransformationModel, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
  );
  static String _$ki(TransformationModel v) => v.ki;
  static const Field<TransformationModel, String> _f$ki = Field('ki', _$ki);
  static String? _$deletedAt(TransformationModel v) => v.deletedAt;
  static const Field<TransformationModel, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<TransformationModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #imageUrl: _f$imageUrl,
    #ki: _f$ki,
    #deletedAt: _f$deletedAt,
  };

  static TransformationModel _instantiate(DecodingData data) {
    return TransformationModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      imageUrl: data.dec(_f$imageUrl),
      ki: data.dec(_f$ki),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TransformationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TransformationModel>(map);
  }

  static TransformationModel fromJson(String json) {
    return ensureInitialized().decodeJson<TransformationModel>(json);
  }
}

mixin TransformationModelMappable {
  String toJson() {
    return TransformationModelMapper.ensureInitialized()
        .encodeJson<TransformationModel>(this as TransformationModel);
  }

  Map<String, dynamic> toMap() {
    return TransformationModelMapper.ensureInitialized()
        .encodeMap<TransformationModel>(this as TransformationModel);
  }

  TransformationModelCopyWith<
    TransformationModel,
    TransformationModel,
    TransformationModel
  >
  get copyWith =>
      _TransformationModelCopyWithImpl<
        TransformationModel,
        TransformationModel
      >(this as TransformationModel, $identity, $identity);
  @override
  String toString() {
    return TransformationModelMapper.ensureInitialized().stringifyValue(
      this as TransformationModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return TransformationModelMapper.ensureInitialized().equalsValue(
      this as TransformationModel,
      other,
    );
  }

  @override
  int get hashCode {
    return TransformationModelMapper.ensureInitialized().hashValue(
      this as TransformationModel,
    );
  }
}

extension TransformationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TransformationModel, $Out> {
  TransformationModelCopyWith<$R, TransformationModel, $Out>
  get $asTransformationModel => $base.as(
    (v, t, t2) => _TransformationModelCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TransformationModelCopyWith<
  $R,
  $In extends TransformationModel,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? imageUrl,
    String? ki,
    String? deletedAt,
  });
  TransformationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TransformationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TransformationModel, $Out>
    implements TransformationModelCopyWith<$R, TransformationModel, $Out> {
  _TransformationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TransformationModel> $mapper =
      TransformationModelMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? imageUrl,
    String? ki,
    Object? deletedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (imageUrl != null) #imageUrl: imageUrl,
      if (ki != null) #ki: ki,
      if (deletedAt != $none) #deletedAt: deletedAt,
    }),
  );
  @override
  TransformationModel $make(CopyWithData data) => TransformationModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
    ki: data.get(#ki, or: $value.ki),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  TransformationModelCopyWith<$R2, TransformationModel, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TransformationModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

