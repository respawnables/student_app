import 'dart:math';

import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                bool isMe = Random().nextBool();
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Align(
                    alignment:
                        isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Colors.orange.shade100),
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text('message'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Gönder'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
