import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 8, bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black38,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                maxLines: 1,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Message',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, bottom: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(114, 25, 25, 1.0),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.send, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
