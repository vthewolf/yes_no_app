import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

String chatPicture = 'https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/32724/article_full%401x.jpg';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(chatPicture),
          ),
        ),
        title: Text('Mi amor platónico 😍'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return ( index % 2 == 0 ) 
                ? HerMessageBubble()
                : MyMessageBubble();
              }
            )),
            // CAJA DE TEXTO DE MENSAJES
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}