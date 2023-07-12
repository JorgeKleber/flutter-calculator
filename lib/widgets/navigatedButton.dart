import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatedButton extends StatelessWidget {

  String description;
  String pageName;

  NavigatedButton(this.description, this.pageName);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(context, pageName)
        },
        child: Text(description));
  }
}
