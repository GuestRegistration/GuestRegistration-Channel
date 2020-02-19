import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:guestchannel/locator.dart';
import 'package:guestchannel/pages/call.dart';
import 'package:guestchannel/utils/customFunctions.dart';
import 'package:guestchannel/viewmodel/base_model.dart';
import 'package:permission_handler/permission_handler.dart';

class CreateChannelViewModel extends BaseModel{
  final CustomFuntion _customFuntion = locator<CustomFuntion>();

  String _channelID;
  String get channelID => _channelID;


  join(BuildContext context)async{ //Send channelID to d server.
   setBusy(true);
    _channelID = 'GuestReg'; 
    
    setBusy(false);
     moveToCallScreen(id: _channelID, context: context);
  }

  moveToCallScreen({String id, BuildContext context})async{
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
          channelName: id,
        ),
      ),
    );
  }


  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}