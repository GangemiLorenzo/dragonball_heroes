import 'package:dart_mappable/dart_mappable.dart';
import 'package:dragonball_heroes/api/models/common_dto.dart';

part 'pagination_model.mapper.dart';

@MappableClass()
class PaginationModel with PaginationModelMappable {
  const PaginationModel({
    required this.totalItems,
    required this.itemCount,
    required this.itemsPerPage,
    required this.totalPages,
    required this.currentPage,
  });

  factory PaginationModel.fromDto(MetaDto dto) {
    return PaginationModel(
      totalItems: dto.totalItems,
      itemCount: dto.itemCount,
      itemsPerPage: dto.itemsPerPage,
      totalPages: dto.totalPages,
      currentPage: dto.currentPage,
    );
  }

  factory PaginationModel.empty() {
    return const PaginationModel(
      totalItems: 0,
      itemCount: 0,
      itemsPerPage: 0,
      totalPages: 0,
      currentPage: 1,
    );
  }

  final int totalItems;
  final int itemCount;
  final int itemsPerPage;
  final int totalPages;
  final int currentPage;

  // Navigation methods
  int? get nextPage {
    return hasNextPage ? currentPage + 1 : null;
  }

  int? get previousPage {
    return hasPreviousPage ? currentPage - 1 : null;
  }

  int get firstPage => 1;

  int get lastPage => totalPages;

  // Availability checks
  bool get hasNextPage => currentPage < totalPages;

  bool get hasPreviousPage => currentPage > 1;

  bool get hasPages => totalPages > 0;

  bool get isFirstPage => currentPage == 1;

  bool get isLastPage => currentPage == totalPages;

  bool get isEmpty => totalItems == 0;

  bool get isNotEmpty => totalItems > 0;

  // Progress information
  double get progress {
    if (totalPages == 0) {
      return 0;
    }
    return currentPage / totalPages;
  }

  String get progressText {
    if (isEmpty) {
      return 'No items';
    }
    return 'Page $currentPage of $totalPages';
  }

  String get itemsText {
    if (isEmpty) {
      return 'No items';
    }
    final start = ((currentPage - 1) * itemsPerPage) + 1;
    final end = start + itemCount - 1;
    return 'Showing $start-$end of $totalItems items';
  }

  // Range information
  int get startIndex => isEmpty ? 0 : ((currentPage - 1) * itemsPerPage) + 1;

  int get endIndex => isEmpty ? 0 : startIndex + itemCount - 1;

  // Page validation
  bool isValidPage(int page) {
    return page >= 1 && page <= totalPages;
  }

  // Create new pagination with different page
  PaginationModel withPage(int page) {
    if (!isValidPage(page)) {
      throw ArgumentError(
        'Invalid page number: $page. Valid range: 1-$totalPages',
      );
    }

    return PaginationModel(
      totalItems: totalItems,
      itemCount: itemsPerPage, // Assume full page for navigation
      itemsPerPage: itemsPerPage,
      totalPages: totalPages,
      currentPage: page,
    );
  }

  // Get pages for pagination UI
  List<int> getPageNumbers({int maxVisible = 5}) {
    if (totalPages <= maxVisible) {
      return List.generate(totalPages, (index) => index + 1);
    }

    final half = maxVisible ~/ 2;
    int start = currentPage - half;
    int end = currentPage + half;

    if (start < 1) {
      start = 1;
      end = maxVisible;
    }

    if (end > totalPages) {
      end = totalPages;
      start = totalPages - maxVisible + 1;
    }

    return List.generate(end - start + 1, (index) => start + index);
  }
}
