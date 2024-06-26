class ImageLinks {
  ImageLinks({
    required String smallThumbnail,
    required String thumbnail,
  })  : _smallThumbnail = smallThumbnail,
        _thumbnail = thumbnail;

  ImageLinks.fromJson(dynamic json)
      : _smallThumbnail = json['smallThumbnail'],
        _thumbnail = json['thumbnail'];

  final String _smallThumbnail;
  final String _thumbnail;

  String get smallThumbnail => _smallThumbnail;
  String get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }
}
