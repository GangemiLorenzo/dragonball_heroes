import 'package:dart_mappable/dart_mappable.dart';

import 'common_dto.dart';

part 'transformation_dto.mapper.dart';

@MappableClass()
class TransformationDto with TransformationDtoMappable {
  const TransformationDto({
    required this.id,
    required this.name,
    required this.image,
    required this.ki,
    this.deletedAt,
  });

  final int id;
  final String name;
  final String image;
  final String ki;
  final String? deletedAt;
}

@MappableClass()
class TransformationResponse with TransformationResponseMappable {
  const TransformationResponse({
    required this.items,
    required this.meta,
    required this.links,
  });

  final List<TransformationDto> items;
  final MetaDto meta;
  final LinksDto links;
}
