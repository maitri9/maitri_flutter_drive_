import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:models/models/note_moduls.dart';

class Notewidget extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongpress;

  const Notewidget(
      {Key? key,
      required this.note,
      required this.onTap,
      required this.onLongpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onLongPress: onLongpress,
      onTap: onTap,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      note.title,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Text(
                    note.description,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
