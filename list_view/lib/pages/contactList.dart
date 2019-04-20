import 'package:flutter/material.dart';
import 'package:list_view/contactModel.dart';
import 'package:list_view/pages/contactItem.dart';


class ContactList extends StatelessWidget {
  final List<ContactModel> _contacts;
  

  ContactList(this._contacts);

 @override
 Widget build(BuildContext context) {
  return new ListView(
    children: _buildContactList(),
  );
 }

 List<ContactItem> _buildContactList(){
    return _contacts
          .map((contact)=>new ContactItem(contact))
          .toList();
  }


}