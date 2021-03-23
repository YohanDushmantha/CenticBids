import 'package:centic_bids/centic_bids_app.dart';
import 'package:centic_bids/core/service/push_notification_service/push_notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/injection_container.dart' as di;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// @author Yohan Dushmantha
/// entry point of the Centic Bids Applicaiton

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    await Firebase.initializeApp();

    PushNotificationService pushNotificationService = di.di<PushNotificationService>();
    await pushNotificationService.init();
    runApp(CenticBidsApp());
}




