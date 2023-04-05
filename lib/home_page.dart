import 'package:ai_chat/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Chat Assistant',
          style: TextStyle(
            fontFamily: 'Cera Pro',
            color: Pallete.mainFontColor,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu_rounded,
          color: Pallete.mainFontColor,
        ),
      ),
      body: Column(
        children: [
          // virtual assistant picture.
          Stack(
            children: [
              Center(
                child: Container(
                  height: 170,
                  width: 170,
                  margin: const EdgeInsets.only(top: 5, left: 8),
                  decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/assistant.png'))),
              )
            ],
          ),

          // chat babble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:
                const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration:
                BoxDecoration(border: Border.all(color: Pallete.borderColor),
                borderRadius:  BorderRadius.circular(20).copyWith(topLeft: Radius.zero)
                ),
            child: const Text(
              'Hello, would you like to raise a question?',
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 22),
            ),
          ),
          const Text('Here are the few features', style: TextStyle(
            fontFamily: 'Cera Pro',
            color: Pallete.mainFontColor
          ),)
          // suggestions list
        ],
      ),
    );
  }
}
