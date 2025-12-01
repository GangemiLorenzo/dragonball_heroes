// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'characters_state.dart';

class CharactersStateMapper extends ClassMapperBase<CharactersState> {
  CharactersStateMapper._();

  static CharactersStateMapper? _instance;
  static CharactersStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharactersStateMapper._());
      CharacterModelMapper.ensureInitialized();
      PaginationModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharactersState';

  static List<CharacterModel> _$characters(CharactersState v) => v.characters;
  static const Field<CharactersState, List<CharacterModel>> _f$characters =
      Field('characters', _$characters);
  static bool _$loading(CharactersState v) => v.loading;
  static const Field<CharactersState, bool> _f$loading = Field(
    'loading',
    _$loading,
  );
  static bool _$loadingMore(CharactersState v) => v.loadingMore;
  static const Field<CharactersState, bool> _f$loadingMore = Field(
    'loadingMore',
    _$loadingMore,
  );
  static bool _$loadingDetails(CharactersState v) => v.loadingDetails;
  static const Field<CharactersState, bool> _f$loadingDetails = Field(
    'loadingDetails',
    _$loadingDetails,
  );
  static PaginationModel _$pagination(CharactersState v) => v.pagination;
  static const Field<CharactersState, PaginationModel> _f$pagination = Field(
    'pagination',
    _$pagination,
  );
  static String? _$errorMessage(CharactersState v) => v.errorMessage;
  static const Field<CharactersState, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
  );

  @override
  final MappableFields<CharactersState> fields = const {
    #characters: _f$characters,
    #loading: _f$loading,
    #loadingMore: _f$loadingMore,
    #loadingDetails: _f$loadingDetails,
    #pagination: _f$pagination,
    #errorMessage: _f$errorMessage,
  };

  static CharactersState _instantiate(DecodingData data) {
    return CharactersState(
      characters: data.dec(_f$characters),
      loading: data.dec(_f$loading),
      loadingMore: data.dec(_f$loadingMore),
      loadingDetails: data.dec(_f$loadingDetails),
      pagination: data.dec(_f$pagination),
      errorMessage: data.dec(_f$errorMessage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharactersState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharactersState>(map);
  }

  static CharactersState fromJson(String json) {
    return ensureInitialized().decodeJson<CharactersState>(json);
  }
}

mixin CharactersStateMappable {
  String toJson() {
    return CharactersStateMapper.ensureInitialized()
        .encodeJson<CharactersState>(this as CharactersState);
  }

  Map<String, dynamic> toMap() {
    return CharactersStateMapper.ensureInitialized().encodeMap<CharactersState>(
      this as CharactersState,
    );
  }

  CharactersStateCopyWith<CharactersState, CharactersState, CharactersState>
  get copyWith =>
      _CharactersStateCopyWithImpl<CharactersState, CharactersState>(
        this as CharactersState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharactersStateMapper.ensureInitialized().stringifyValue(
      this as CharactersState,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharactersStateMapper.ensureInitialized().equalsValue(
      this as CharactersState,
      other,
    );
  }

  @override
  int get hashCode {
    return CharactersStateMapper.ensureInitialized().hashValue(
      this as CharactersState,
    );
  }
}

extension CharactersStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharactersState, $Out> {
  CharactersStateCopyWith<$R, CharactersState, $Out> get $asCharactersState =>
      $base.as((v, t, t2) => _CharactersStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharactersStateCopyWith<$R, $In extends CharactersState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CharacterModel,
    CharacterModelCopyWith<$R, CharacterModel, CharacterModel>
  >
  get characters;
  PaginationModelCopyWith<$R, PaginationModel, PaginationModel> get pagination;
  $R call({
    List<CharacterModel>? characters,
    bool? loading,
    bool? loadingMore,
    bool? loadingDetails,
    PaginationModel? pagination,
    String? errorMessage,
  });
  CharactersStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharactersStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharactersState, $Out>
    implements CharactersStateCopyWith<$R, CharactersState, $Out> {
  _CharactersStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharactersState> $mapper =
      CharactersStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CharacterModel,
    CharacterModelCopyWith<$R, CharacterModel, CharacterModel>
  >
  get characters => ListCopyWith(
    $value.characters,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(characters: v),
  );
  @override
  PaginationModelCopyWith<$R, PaginationModel, PaginationModel>
  get pagination =>
      $value.pagination.copyWith.$chain((v) => call(pagination: v));
  @override
  $R call({
    List<CharacterModel>? characters,
    bool? loading,
    bool? loadingMore,
    bool? loadingDetails,
    PaginationModel? pagination,
    Object? errorMessage = $none,
  }) => $apply(
    FieldCopyWithData({
      if (characters != null) #characters: characters,
      if (loading != null) #loading: loading,
      if (loadingMore != null) #loadingMore: loadingMore,
      if (loadingDetails != null) #loadingDetails: loadingDetails,
      if (pagination != null) #pagination: pagination,
      if (errorMessage != $none) #errorMessage: errorMessage,
    }),
  );
  @override
  CharactersState $make(CopyWithData data) => CharactersState(
    characters: data.get(#characters, or: $value.characters),
    loading: data.get(#loading, or: $value.loading),
    loadingMore: data.get(#loadingMore, or: $value.loadingMore),
    loadingDetails: data.get(#loadingDetails, or: $value.loadingDetails),
    pagination: data.get(#pagination, or: $value.pagination),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
  );

  @override
  CharactersStateCopyWith<$R2, CharactersState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharactersStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

