// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pagination_model.dart';

class PaginationModelMapper extends ClassMapperBase<PaginationModel> {
  PaginationModelMapper._();

  static PaginationModelMapper? _instance;
  static PaginationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginationModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaginationModel';

  static int _$totalItems(PaginationModel v) => v.totalItems;
  static const Field<PaginationModel, int> _f$totalItems = Field(
    'totalItems',
    _$totalItems,
  );
  static int _$itemCount(PaginationModel v) => v.itemCount;
  static const Field<PaginationModel, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
  );
  static int _$itemsPerPage(PaginationModel v) => v.itemsPerPage;
  static const Field<PaginationModel, int> _f$itemsPerPage = Field(
    'itemsPerPage',
    _$itemsPerPage,
  );
  static int _$totalPages(PaginationModel v) => v.totalPages;
  static const Field<PaginationModel, int> _f$totalPages = Field(
    'totalPages',
    _$totalPages,
  );
  static int _$currentPage(PaginationModel v) => v.currentPage;
  static const Field<PaginationModel, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
  );

  @override
  final MappableFields<PaginationModel> fields = const {
    #totalItems: _f$totalItems,
    #itemCount: _f$itemCount,
    #itemsPerPage: _f$itemsPerPage,
    #totalPages: _f$totalPages,
    #currentPage: _f$currentPage,
  };

  static PaginationModel _instantiate(DecodingData data) {
    return PaginationModel(
      totalItems: data.dec(_f$totalItems),
      itemCount: data.dec(_f$itemCount),
      itemsPerPage: data.dec(_f$itemsPerPage),
      totalPages: data.dec(_f$totalPages),
      currentPage: data.dec(_f$currentPage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PaginationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaginationModel>(map);
  }

  static PaginationModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaginationModel>(json);
  }
}

mixin PaginationModelMappable {
  String toJson() {
    return PaginationModelMapper.ensureInitialized()
        .encodeJson<PaginationModel>(this as PaginationModel);
  }

  Map<String, dynamic> toMap() {
    return PaginationModelMapper.ensureInitialized().encodeMap<PaginationModel>(
      this as PaginationModel,
    );
  }

  PaginationModelCopyWith<PaginationModel, PaginationModel, PaginationModel>
  get copyWith =>
      _PaginationModelCopyWithImpl<PaginationModel, PaginationModel>(
        this as PaginationModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PaginationModelMapper.ensureInitialized().stringifyValue(
      this as PaginationModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return PaginationModelMapper.ensureInitialized().equalsValue(
      this as PaginationModel,
      other,
    );
  }

  @override
  int get hashCode {
    return PaginationModelMapper.ensureInitialized().hashValue(
      this as PaginationModel,
    );
  }
}

extension PaginationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaginationModel, $Out> {
  PaginationModelCopyWith<$R, PaginationModel, $Out> get $asPaginationModel =>
      $base.as((v, t, t2) => _PaginationModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaginationModelCopyWith<$R, $In extends PaginationModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? totalItems,
    int? itemCount,
    int? itemsPerPage,
    int? totalPages,
    int? currentPage,
  });
  PaginationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PaginationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaginationModel, $Out>
    implements PaginationModelCopyWith<$R, PaginationModel, $Out> {
  _PaginationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaginationModel> $mapper =
      PaginationModelMapper.ensureInitialized();
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
  PaginationModel $make(CopyWithData data) => PaginationModel(
    totalItems: data.get(#totalItems, or: $value.totalItems),
    itemCount: data.get(#itemCount, or: $value.itemCount),
    itemsPerPage: data.get(#itemsPerPage, or: $value.itemsPerPage),
    totalPages: data.get(#totalPages, or: $value.totalPages),
    currentPage: data.get(#currentPage, or: $value.currentPage),
  );

  @override
  PaginationModelCopyWith<$R2, PaginationModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PaginationModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

