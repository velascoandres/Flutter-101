import 'package:flutter/material.dart';
import 'package:list_view/contactModel.dart';
import 'package:list_view/pages/contactList.dart';

class Contact extends StatelessWidget {

  _buildList(){
    return<ContactModel>[
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@flutter.com"),
    ];
  }


 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    body: new ContactList(_buildList()),
  );
 }
}