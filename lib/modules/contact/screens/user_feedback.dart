import 'package:flutter/material.dart';
import 'package:pizzahut/modules/contact/widgets/message_type_dropdown.dart';

class UserFeedback extends StatefulWidget {
  const UserFeedback({Key? key}) : super(key: key);

  @override
  _UserFeedbackState createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: getBody(context),
    );
  }
}

Widget getBody(context) {
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  return SafeArea(
    child: Container(
      decoration: BoxDecoration(color: Color(0xFFF4EFEF)),
      child: Column(
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Text(
              'FEEDBACK ------------------------------------------------------',
              style: TextStyle(height: 1.5, fontSize: 20),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            width: 300,
            margin: EdgeInsets.all(10),
            child: MessageTypeDropdown(),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            width: 300,
            margin: EdgeInsets.all(10),
            child: TextFormField(
              minLines: 5,
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('SEND'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'SEND',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
