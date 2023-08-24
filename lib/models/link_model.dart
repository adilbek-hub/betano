import 'dart:convert';

class LinkModel {
  final String link;
  LinkModel({
    required this.link,
  });

  Map<String, dynamic> toFirestore() {
    final result = <String, dynamic>{};

    result.addAll({'link': link});

    return result;
  }

  factory LinkModel.fromFirestore(Map<String, dynamic> map) {
    return LinkModel(
      link: map['link'] ?? '',
    );
  }

  String toJson() => json.encode(toFirestore());

  factory LinkModel.fromJson(String source) =>
      LinkModel.fromFirestore(json.decode(source));
}
