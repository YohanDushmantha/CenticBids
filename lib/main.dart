import 'package:centic_bids/centic_bids_app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/injection_container.dart' as di;

/// @author Yohan Dushmantha
/// entry point of the Centic Bids Applicaiton
void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    await Firebase.initializeApp();
    runApp(CenticBidsApp());
}

