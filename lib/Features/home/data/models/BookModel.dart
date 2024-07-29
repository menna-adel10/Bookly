import 'package:bookly/Features/home/domain/entities/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

class BookModel extends BookEntity {
  BookModel({
    required String kind,
    required String id,
    required String etag,
    required String selfLink,
    required VolumeInfo volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) : super(
    bookId: id,
    image: volumeInfo.imageLinks.thumbnail,
    title: volumeInfo.title,
    authorName: volumeInfo.authors.isNotEmpty ? volumeInfo.authors.first : '',
    price: 0.0,
    rating: 0.0,
  ) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  BookModel.fromJson(Map<String, dynamic> json) : super(
    bookId: json['id'],
    image: VolumeInfo.fromJson(json['volumeInfo']).imageLinks.thumbnail,
    title: VolumeInfo.fromJson(json['volumeInfo']).title,
    authorName: VolumeInfo.fromJson(json['volumeInfo']).authors.isNotEmpty ? VolumeInfo.fromJson(json['volumeInfo']).authors.first : '',
    price: 0.0, 
    rating: 0.0,
  ) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }

  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  BookModel copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      BookModel(
        kind: kind ?? _kind!,
        id: id ?? _id!,
        etag: etag ?? _etag!,
        selfLink: selfLink ?? _selfLink!,
        volumeInfo: volumeInfo ?? _volumeInfo!,
        saleInfo: saleInfo ?? _saleInfo,
        accessInfo: accessInfo ?? _accessInfo,
        searchInfo: searchInfo ?? _searchInfo,
      );

  String get kind => _kind!;
  String get id => _id!;
  String get etag => _etag!;
  String get selfLink => _selfLink!;
  VolumeInfo get volumeInfo => _volumeInfo!;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    map['volumeInfo'] = _volumeInfo!.toJson();
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo!.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo!.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo!.toJson();
    }
    return map;
  }
}
