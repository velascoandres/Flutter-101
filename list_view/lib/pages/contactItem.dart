import 'package:flutter/material.dart';
import 'package:list_view/contactModel.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;
  const ContactItem(this._contact);

 @override
 Widget build(BuildContext context) {
  return new ListTile(
  title: new Text(this._contact.name),
  leading: new CircleAvatar(child: new Text(this._contact.name[0]),),
  subtitle: new Text(this._contact.email),
 );
 }
}