class Message {
  final String senderId;
  final String recipientId;
  final String message;
  final DateTime createdAt;
  const Message({
    required this.message,
    required this.recipientId,
    required this.senderId,
    required this.createdAt,
  });

  static List<Message> messages = [
    Message(
      message: "Hi, How are you?",
      senderId: '1',
      recipientId: '2',
      createdAt: DateTime(2023, 05, 02, 10, 10, 10),
    ),
    Message(
      message: "Who asks?",
      senderId: '2',
      recipientId: '1',
      createdAt: DateTime(2023, 05, 02, 10, 10, 10).add(
        const Duration(seconds: 30),
      ),
    ),
    Message(
      message: "I am you.",
      senderId: '1',
      recipientId: '2',
      createdAt: DateTime(2023, 05, 02, 10, 10, 10).add(
        const Duration(seconds: 120),
      ),
    ),
  ];
}
