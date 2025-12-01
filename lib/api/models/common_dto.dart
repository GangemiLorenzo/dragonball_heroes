import 'package:dart_mappable/dart_mappable.dart';

part 'common_dto.mapper.dart';

@MappableClass()
class MetaDto with MetaDtoMappable {
  const MetaDto({
    required this.totalItems,
    required this.itemCount,
    required this.itemsPerPage,
    required this.totalPages,
    required this.currentPage,
  });

  final int totalItems;
  final int itemCount;
  final int itemsPerPage;
  final int totalPages;
  final int currentPage;
}

@MappableClass()
class LinksDto with LinksDtoMappable {
  const LinksDto({this.first, this.previous, this.next, this.last});

  final String? first;
  final String? previous;
  final String? next;
  final String? last;
}
