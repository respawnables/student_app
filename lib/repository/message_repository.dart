import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/message.dart';

class MessageRepository extends ChangeNotifier {
  final List<Message> messages = [
    Message(
        'Merahaba', 'Ali', DateTime.now().subtract(const Duration(minutes: 4))),
    Message('Orada mısın?', 'Ali',
        DateTime.now().subtract(const Duration(minutes: 3))),
    Message(
        'Evet', 'Ayşe', DateTime.now().subtract(const Duration(minutes: 2))),
    Message('Nasılsın', 'Ayşe', DateTime.now()),
  ];
}

class NewMessageCount extends StateNotifier<int> {
  NewMessageCount(int state) : super(state);

  void reset() => state = 0;
}

final messageProvider = ChangeNotifierProvider((ref) => MessageRepository());
final newMessageCountProvider =
    StateNotifierProvider<NewMessageCount, int>((ref) => NewMessageCount(4));
