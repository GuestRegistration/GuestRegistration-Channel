import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guestchannel/viewmodel/CreateChannelViewModel.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import './call.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<IndexPage> {

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<CreateChannelViewModel>.withConsumer(
      viewModel: CreateChannelViewModel(),
      builder: (context, model, child) =>
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Call', style: TextStyle(
            color: Colors.black,
          ),),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: ()=>model.join(context),
                          child: Text('Talk'),
                          color: Colors.black,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
