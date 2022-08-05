import 'package:flutter/material.dart';
import 'package:flutter_backend/model/model.dart';

class CarTest extends StatelessWidget {
  Notes note;
  CarTest({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text('${note.noteTitle}',
                  style: TextStyle(color: Colors.white)),
              subtitle: Text('${note.noteContent}',
                  style: TextStyle(color: Colors.white)),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Edit',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Delete',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
