// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'common_dto.dart';

class MetaDtoMapper extends ClassMapperBase<MetaDto> {
  MetaDtoMapper._();

  static MetaDtoMapper? _instance;
  static MetaDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MetaDto';

  static int _$totalItems(MetaDto v) => v.totalItems;
  static const Field<MetaDto, int> _f$totalItems = Field(
    'totalItems',
    _$totalItems,
  );
  static int _$itemCount(MetaDto v) => v.itemCount;
  static const Field<MetaDto, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
  );
  static int _$itemsPerPage(MetaDto v) => v.itemsPerPage;
  static const Field<MetaDto, int> _f$itemsPerPage = Field(
    'itemsPerPage',
    _$itemsPerPage,
  );
  static int _$totalPages(MetaDto v) => v.totalPages;
  static const Field<MetaDto, int> _f$totalPages = Field(
    'totalPages',
    _$totalPages,
  );
  static int _$currentPage(MetaDto v) => v.currentPage;
  static const Field<MetaDto, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
  );

  @override
  final MappableFields<MetaDto> fields = const {
    #totalItems: _f$totalItems,
    #itemCount: _f$itemCount,
    #itemsPerPage: _f$itemsPerPage,
    #totalPages: _f$totalPages,
    #currentPage: _f$currentPage,
  };

  static MetaDto _instantiate(DecodingData data) {
    return MetaDto(
      totalItems: data.dec(_f$totalItems),
      itemCount: data.dec(_f$itemCount),
      itemsPerPage: data.dec(_f$itemsPerPage),
      totalPages: data.dec(_f$totalPages),
      currentPage: data.dec(_f$currentPage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MetaDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetaDto>(map);
  }

  static MetaDto fromJson(String json) {
    return ensureInitialized().decodeJson<MetaDto>(json);
  }
}

mixin MetaDtoMappable {
  String toJson() {
    return MetaDtoMapper.ensureInitialized().encodeJson<MetaDto>(
      this as MetaDto,
    );
  }

  Map<String, dynamic> toMap() {
    return MetaDtoMapper.ensureInitialized().encodeMap<MetaDto>(
      this as MetaDto,
    );
  }

  MetaDtoCopyWith<MetaDto, MetaDto, MetaDto> get copyWith =>
      _MetaDtoCopyWithImpl<MetaDto, MetaDto>(
        this as MetaDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MetaDtoMapper.ensureInitialized().stringifyValue(this as MetaDto);
  }

  @override
  bool operator ==(Object other) {
    return MetaDtoMapper.ensureInitialized().equalsValue(
      this as MetaDto,
      other,
    );
  }

  @override
  int get hashCode {
    return MetaDtoMapper.ensureInitialized().hashValue(this as MetaDto);
  }
}

extension MetaDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, MetaDto, $Out> {
  MetaDtoCopyWith<$R, MetaDto, $Out> get $asMetaDto =>
      $base.as((v, t, t2) => _MetaDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MetaDtoCopyWith<$R, $In extends MetaDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? totalItems,
    int? itemCount,
    int? itemsPerPage,
    int? totalPages,
    int? currentPage,
  });
  MetaDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetaDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetaDto, $Out>
    implements MetaDtoCopyWith<$R, MetaDto, $Out> {
  _MetaDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetaDto> $mapper =
      MetaDtoMapper.ensureInitialized();
  @override
  $R call({
    int? totalItems,
    int? itemCount,
    int? itemsPerPage,
    int? totalPages,
    int? currentPage,
  }) => $apply(
    FieldCopyWithData({
      if (totalItems != null) #totalItems: totalItems,
      if (itemCount != null) #itemCount: itemCount,
      if (itemsPerPage != null) #itemsPerPage: itemsPerPage,
      if (totalPages != null) #totalPages: totalPages,
      if (currentPage != null) #currentPage: currentPage,
    }),
  );
  @override
  MetaDto $make(CopyWithData data) => MetaDto(
    totalItems: data.get(#totalItems, or: $value.totalItems),
    itemCount: data.get(#itemCount, or: $value.itemCount),
    itemsPerPage: data.get(#itemsPerPage, or: $value.itemsPerPage),
    totalPages: data.get(#totalPages, or: $value.totalPages),
    currentPage: data.get(#currentPage, or: $value.currentPage),
  );

  @override
  MetaDtoCopyWith<$R2, MetaDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MetaDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LinksDtoMapper extends ClassMapperBase<LinksDto> {
  LinksDtoMapper._();

  static LinksDtoMapper? _instance;
  static LinksDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LinksDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LinksDto';

  static String? _$first(LinksDto v) => v.first;
  static const Field<LinksDto, String> _f$first = Field(
    'first',
    _$first,
    opt: true,
  );
  static String? _$previous(LinksDto v) => v.previous;
  static const Field<LinksDto, String> _f$previous = Field(
    'previous',
    _$previous,
    opt: true,
  );
  static String? _$next(LinksDto v) => v.next;
  static const Field<LinksDto, String> _f$next = Field(
    'next',
    _$next,
    opt: true,
  );
  static String? _$last(LinksDto v) => v.last;
  static const Field<LinksDto, String> _f$last = Field(
    'last',
    _$last,
    opt: true,
  );

  @override
  final MappableFields<LinksDto> fields = const {
    #first: _f$first,
    #previous: _f$previous,
    #next: _f$next,
    #last: _f$last,
  };

  static LinksDto _instantiate(DecodingData data) {
    return LinksDto(
      first: data.dec(_f$first),
      previous: data.dec(_f$previous),
      next: data.dec(_f$next),
      last: data.dec(_f$last),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LinksDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LinksDto>(map);
  }

  static LinksDto fromJson(String json) {
    return ensureInitialized().decodeJson<LinksDto>(json);
  }
}

mixin LinksDtoMappable {
  String toJson() {
    return LinksDtoMapper.ensureInitialized().encodeJson<LinksDto>(
      this as LinksDto,
    );
  }

  Map<String, dynamic> toMap() {
    return LinksDtoMapper.ensureInitialized().encodeMap<LinksDto>(
      this as LinksDto,
    );
  }

  LinksDtoCopyWith<LinksDto, LinksDto, LinksDto> get copyWith =>
      _LinksDtoCopyWithImpl<LinksDto, LinksDto>(
        this as LinksDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LinksDtoMapper.ensureInitialized().stringifyValue(this as LinksDto);
  }

  @override
  bool operator ==(Object other) {
    return LinksDtoMapper.ensureInitialized().equalsValue(
      this as LinksDto,
      other,
    );
  }

  @override
  int get hashCode {
    return LinksDtoMapper.ensureInitialized().hashValue(this as LinksDto);
  }
}

extension LinksDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, LinksDto, $Out> {
  LinksDtoCopyWith<$R, LinksDto, $Out> get $asLinksDto =>
      $base.as((v, t, t2) => _LinksDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LinksDtoCopyWith<$R, $In extends LinksDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? first, String? previous, String? next, String? last});
  LinksDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LinksDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LinksDto, $Out>
    implements LinksDtoCopyWith<$R, LinksDto, $Out> {
  _LinksDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LinksDto> $mapper =
      LinksDtoMapper.ensureInitialized();
  @override
  $R call({
    Object? first = $none,
    Object? previous = $none,
    Object? next = $none,
    Object? last = $none,
  }) => $apply(
    FieldCopyWithData({
      if (first != $none) #first: first,
      if (previous != $none) #previous: previous,
      if (next != $none) #next: next,
      if (last != $none) #last: last,
    }),
  );
  @override
  LinksDto $make(CopyWithData data) => LinksDto(
    first: data.get(#first, or: $value.first),
    previous: data.get(#previous, or: $value.previous),
    next: data.get(#next, or: $value.next),
    last: data.get(#last, or: $value.last),
  );

  @override
  LinksDtoCopyWith<$R2, LinksDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LinksDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

