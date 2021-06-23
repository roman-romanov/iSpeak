class Profile {
  int? id;
  String? imageName;
  String? imageUrl;
  String? fullname;
  String? post;
  String? countPost;
  String? totalFollowers;
  String? totalFollowing;

  Profile(
      {this.id,
      this.imageName,
      this.imageUrl,
      this.fullname,
      this.post,
      this.countPost,
      this.totalFollowers,
      this.totalFollowing});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'imageNmae': imageName,
      'imageUrl': imageUrl,
      'fullname': fullname,
      'post': post,
      'countPost': countPost,
      'totalFollowers': totalFollowers,
      'totalFollowing': totalFollowing,
    };
    return map;
  }

  Profile.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    imageName = map['imageName'];
    imageUrl = map['imageUrl'];
    fullname = map['fullname'];
    post = map['post'];
    countPost = map['countPost'];
    totalFollowers = map['totalFollowers'];
    totalFollowing = map['totalFollowing'];
  }
}
