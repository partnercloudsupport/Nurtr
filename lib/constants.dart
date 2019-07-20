import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kFloatingTextFieldDecoration = InputDecoration(
  hintText: 'Override with copyWith',
  hintStyle: TextStyle(
    color: Colors.grey
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kMessageTextFieldDecoration = InputDecoration(
  filled: true,
  hintText: 'Enter message',
  contentPadding: EdgeInsets.all(15.0),
  border: OutlineInputBorder(

    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(40.0))
  )
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
  ),
);

