import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/views/drawer/custom_drawer.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: CustomDrawerView(),
    );
  }
}
