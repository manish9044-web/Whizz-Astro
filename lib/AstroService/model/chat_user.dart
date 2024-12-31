class ChatUser {
  ChatUser({
    required this.lastActive,
    required this.image,
    required this.about,
    required this.isOnline,
    required this.email,
    required this.name,
    required this.pushToken,
    required this.id,
    required this.createdAt,
  });
  late  String lastActive;
  late  String image;
  late  String about;
  late  bool isOnline;
  late  String email;
  late  String name;
  late  String pushToken;
  late  String id;
  late  String createdAt;

  ChatUser.fromJson(Map<String, dynamic> json){
    lastActive = json['last_active'] ?? '';
    image = json['image']?? '';
    about = json['about']?? '';
    isOnline = json['is_online']?? '';
    email = json['email']?? '';
    name = json['name']?? '';
    pushToken = json['push_token']?? '';
    id = json['id']?? '';
    createdAt = json['created_at']?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['last_active'] = lastActive;
    data['image'] = image;
    data['about'] = about;
    data['is_online'] = isOnline;
    data['email'] = email;
    data['name'] = name;
    data['push_token'] = pushToken;
    data['id'] = id;
    data['created_at'] = createdAt;
    return data;
  }
}