class ItemModel {
  final String title;
  final String rate;
  final String url;
  final String cover;
  final String id;
  final bool playable;
  final String rank;

  ItemModel({
    required this.title,
    required this.rate,
    required this.url,
    required this.cover,
    required this.id,
    required this.playable,
    required this.rank,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      title: json['title'] as String,
      rate: json['rate'] as String,
      url: json['url'] as String,
      cover: json['cover'] as String,
      id: json['id'] as String,
      playable: json['playable'] as bool,
      rank: json['rank'] as String,
    );
  }
}