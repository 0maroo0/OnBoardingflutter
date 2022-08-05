import 'package:flutter/material.dart';
import 'package:flutter_backend/controller/Controller.dart';
import 'package:flutter_backend/linkapi.dart';
import 'package:flutter_backend/model/model.dart';
import 'package:flutter_backend/view/card.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<controllerlogin> {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(controllerlogin());
    viewnote() async {
      var response = await controller.getrespons(
        linkviewall,
      );
      if (response["status"] == 'success') {
        return response;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("viewmodel")),
        ),
        body: FutureBuilder(
            future: viewnote(),
            builder: ((context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data['data'].length,
                    itemBuilder: (context, i) {
                      return CarTest(
                        note: Notes.fromJson(snapshot.data['data'][i]),
                      );
                    });
              }
              return Text("lodaing ..");
            })));
  }
}
