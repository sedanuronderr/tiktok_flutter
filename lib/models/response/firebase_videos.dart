class FirebaseVideos {
  late String title;
  late String desc;
  late String videoUrl;
  late int order;

//<editor-fold desc="Data Methods">
  FirebaseVideos({
    required this.title,
    required this.desc,
    required this.videoUrl,
    required this.order,
  });



  Map<String, dynamic> toJson() {
    return {
      'title': this.title,
      'desc': this.desc,
      'videoUrl': this.videoUrl,
      'order': this.order,
    };
  }

  factory FirebaseVideos.fromJson(Map<String, dynamic> map) {
    return FirebaseVideos(
      title: map['title'] as String,
      desc: map['desc'] as String,
      videoUrl: map['videoUrl'] as String,
      order: map['order'] as int,
    );
  }

//</editor-fold>
}