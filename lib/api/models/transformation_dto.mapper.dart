// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'transformation_dto.dart';

class TransformationDtoMapper extends ClassMapperBase<TransformationDto> {
  TransformationDtoMapper._();

  static TransformationDtoMapper? _instance;
  static TransformationDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransformationDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TransformationDto';

  static int _$id(TransformationDto v) => v.id;
  static const Field<TransformationDto, int> _f$id = Field('id', _$id);
  static String _$name(TransformationDto v) => v.name;
  static const Field<TransformationDto, String> _f$name = Field('name', _$name);
  static String _$image(TransformationDto v) => v.image;
  static const Field<TransformationDto, String> _f$image = Field(
    'image',
    _$image,
  );
  static String _$ki(TransformationDto v) => v.ki;
  static const Field<TransformationDto, String> _f$ki = Field('ki', _$ki);
  static String? _$deletedAt(TransformationDto v) => v.deletedAt;
  static const Field<TransformationDto, String> _f$deletedAt = Field(
    'deletedAt',
    _$deletedAt,
    opt: true,
  );

  @override
  final MappableFields<TransformationDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #image: _f$image,
    #ki: _f$ki,
    #deletedAt: _f$deletedAt,
  };

  static TransformationDto _instantiate(DecodingData data) {
    return TransformationDto(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      image: data.dec(_f$image),
      ki: data.dec(_f$ki),
      deletedAt: data.dec(_f$deletedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TransformationDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TransformationDto>(map);
  }

  static TransformationDto fromJson(String json) {
    return ensureInitialized().decodeJson<TransformationDto>(json);
  }
}

mixin TransformationDtoMappable {
  String toJson() {
    return TransformationDtoMapper.ensureInitialized()
        .encodeJson<TransformationDto>(this as TransformationDto);
  }

  Map<String, dynamic> toMap() {
    return TransformationDtoMapper.ensureInitialized()
        .encodeMap<TransformationDto>(this as TransformationDto);
  }

  TransformationDtoCopyWith<
    TransformationDto,
    TransformationDto,
    TransformationDto
  >
  get copyWith =>
      _TransformationDtoCopyWithImpl<TransformationDto, TransformationDto>(
        this as TransformationDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TransformationDtoMapper.ensureInitialized().stringifyValue(
      this as TransformationDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return TransformationDtoMapper.ensureInitialized().equalsValue(
      this as TransformationDto,
      other,
    );
  }

  @override
  int get hashCode {
    return TransformationDtoMapper.ensureInitialized().hashValue(
      this as TransformationDto,
    );
  }
}

extension TransformationDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TransformationDto, $Out> {
  TransformationDtoCopyWith<$R, TransformationDto, $Out>
  get $asTransformationDto => $base.as(
    (v, t, t2) => _TransformationDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TransformationDtoCopyWith<
  $R,
  $In extends TransformationDto,
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
  TransformationDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TransformationDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TransformationDto, $Out>
    implements TransformationDtoCopyWith<$R, TransformationDto, $Out> {
  _TransformationDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TransformationDto> $mapper =
      TransformationDtoMapper.ensureInitialized();
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
  TransformationDto $make(CopyWithData data) => TransformationDto(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    image: data.get(#image, or: $value.image),
    ki: data.get(#ki, or: $value.ki),
    deletedAt: data.get(#deletedAt, or: $value.deletedAt),
  );

  @override
  TransformationDtoCopyWith<$R2, TransformationDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TransformationDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TransformationResponseMapper
    extends ClassMapperBase<TransformationResponse> {
  TransformationResponseMapper._();

  static TransformationResponseMapper? _instance;
  static TransformationResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransformationResponseMapper._());
      TransformationDtoMapper.ensureInitialized();
      MetaDtoMapper.ensureInitialized();
      LinksDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TransformationResponse';

  static List<TransformationDto> _$items(TransformationResponse v) => v.items;
  static const Field<TransformationResponse, List<TransformationDto>> _f$items =
      Field('items', _$items);
  static MetaDto _$meta(TransformationResponse v) => v.meta;
  static const Field<TransformationResponse, MetaDto> _f$meta = Field(
    'meta',
    _$meta,
  );
  static LinksDto _$links(TransformationResponse v) => v.links;
  static const Field<TransformationResponse, LinksDto> _f$links = Field(
    'links',
    _$links,
  );

  @override
  final MappableFields<TransformationResponse> fields = const {
    #items: _f$items,
    #meta: _f$meta,
    #links: _f$links,
  };

  static TransformationResponse _instantiate(DecodingData data) {
    return TransformationResponse(
      items: data.dec(_f$items),
      meta: data.dec(_f$meta),
      links: data.dec(_f$links),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TransformationResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TransformationResponse>(map);
  }

  static TransformationResponse fromJson(String json) {
    return ensureInitialized().decodeJson<TransformationResponse>(json);
  }
}

mixin TransformationResponseMappable {
  String toJson() {
    return TransformationResponseMapper.ensureInitialized()
        .encodeJson<TransformationResponse>(this as TransformationResponse);
  }

  Map<String, dynamic> toMap() {
    return TransformationResponseMapper.ensureInitialized()
        .encodeMap<TransformationResponse>(this as TransformationResponse);
  }

  TransformationResponseCopyWith<
    TransformationResponse,
    TransformationResponse,
    TransformationResponse
  >
  get copyWith =>
      _TransformationResponseCopyWithImpl<
        TransformationResponse,
        TransformationResponse
      >(this as TransformationResponse, $identity, $identity);
  @override
  String toString() {
    return TransformationResponseMapper.ensureInitialized().stringifyValue(
      this as TransformationResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return TransformationResponseMapper.ensureInitialized().equalsValue(
      this as TransformationResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return TransformationResponseMapper.ensureInitialized().hashValue(
      this as TransformationResponse,
    );
  }
}

extension TransformationResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TransformationResponse, $Out> {
  TransformationResponseCopyWith<$R, TransformationResponse, $Out>
  get $asTransformationResponse => $base.as(
    (v, t, t2) => _TransformationResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TransformationResponseCopyWith<
  $R,
  $In extends TransformationResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    TransformationDto,
    TransformationDtoCopyWith<$R, TransformationDto, TransformationDto>
  >
  get items;
  MetaDtoCopyWith<$R, MetaDto, MetaDto> get meta;
  LinksDtoCopyWith<$R, LinksDto, LinksDto> get links;
  $R call({List<TransformationDto>? items, MetaDto? meta, LinksDto? links});
  TransformationResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TransformationResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TransformationResponse, $Out>
    implements
        TransformationResponseCopyWith<$R, TransformationResponse, $Out> {
  _TransformationResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TransformationResponse> $mapper =
      TransformationResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    TransformationDto,
    TransformationDtoCopyWith<$R, TransformationDto, TransformationDto>
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
  $R call({List<TransformationDto>? items, MetaDto? meta, LinksDto? links}) =>
      $apply(
        FieldCopyWithData({
          if (items != null) #items: items,
          if (meta != null) #meta: meta,
          if (links != null) #links: links,
        }),
      );
  @override
  TransformationResponse $make(CopyWithData data) => TransformationResponse(
    items: data.get(#items, or: $value.items),
    meta: data.get(#meta, or: $value.meta),
    links: data.get(#links, or: $value.links),
  );

  @override
  TransformationResponseCopyWith<$R2, TransformationResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TransformationResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

