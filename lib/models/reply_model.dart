// ignore_for_file: deprecated_member_use

class ReplyArray {
  final List<Reply> replies;

  ReplyArray({
    required this.replies,
  });

  factory ReplyArray.fromJson(List<dynamic> parsedJson) {
    //List<Reply> photos = new  List<Reply>();
    List<Reply> photos = <Reply>[];
    photos = parsedJson.map((i) => Reply.fromJson(i)).toList();

    return new ReplyArray(replies: photos);
  }
}

class Reply {
  final String recipientId;
  final String text;

  Reply({required this.recipientId, required this.text});

  factory Reply.fromJson(Map<String, dynamic> json) {
    return new Reply(recipientId: json['recipient_id'], text: json['text']);
  }
}
