class Message {
  Message({
    required this.sent,
    required this.read,
    required this.type,
    required this.msg,
    required this.toId,
    required this.fromId,
  });
  late final String sent;
  late final String read;
  late final Type type;
  late final String msg;
  late final String toId;
  late final String fromId;

  Message.fromJson(Map<String, dynamic> json){
    sent = json['sent'].toString();
    read = json['read'].toString();
    type = json['type'].toString() == Type.image.name?Type.image : Type.text;
    msg = json['msg'].toString();
    toId = json['toId'].toString();
    fromId = json['fromId'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sent'] = sent;
    data['read'] = read;
    data['type'] = type.name;
    data['msg'] = msg;
    data['toId'] = toId;
    data['fromId'] = fromId;
    return data;
  }


}
enum Type{text,image}