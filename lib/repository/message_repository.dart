class Message {
  String text;
  String sender;
  DateTime time;

  Message(this.text, this.sender, this.time);
}

class MessageRepository {
  final List<Message> messages = [
    Message(
        'Merahaba', 'Ali', DateTime.now().subtract(const Duration(minutes: 4))),
    Message('Orada mısın?', 'Ali',
        DateTime.now().subtract(const Duration(minutes: 3))),
    Message(
        'Evet', 'Ayşe', DateTime.now().subtract(const Duration(minutes: 2))),
    Message('Nasılsın', 'Ayşe', DateTime.now()),
  ];

  final messageCount = 4;
}
