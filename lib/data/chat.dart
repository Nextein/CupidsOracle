import 'package:cupidsoracle/data/user.dart';

import 'message.dart';

class Chat {
  final String? id;
  final List<User>? users;
  final List<Message>? messages;
  const Chat({
    required this.id,
    this.users = const <User>[],
    this.messages = const <Message>[],
  });

  Chat copyWith({
    String? id,
    List<User>? users,
    List<Message>? messages,
  }) {
    return Chat(
      id: id ?? this.id,
      users: users ?? this.users,
      messages: messages ?? this.messages,
    );
  }

  static List<Chat> chats = [
    Chat(
      id: '0',
      // TODO: Finish writing this from youtube video
      // https://www.youtube.com/watch?v=HnHicg5zdEY
    ),
  ];
}
