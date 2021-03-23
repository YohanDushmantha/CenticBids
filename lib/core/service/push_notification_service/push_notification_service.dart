import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';





/// Define a top-level named handler which background/terminated messages will
/// call.
///
/// To verify things are working, check out the native platform logs.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

class PushNotificationService {

  /// Initialize the [FlutterLocalNotificationsPlugin] package.
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  /// Create a [AndroidNotificationChannel] for heads up notifications
  final AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  init() async{
    // Set the background messaging handler early on, as a named top-level function
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage message) {
      if (message != null) {
        final type = message.data['type'];
        final id = message.data['id'];
        if(type != null && type != '' && id != null && id != ''){
          print('YD --> Centic Bids should open '+id);
        }
        // Navigator.pushNamed(context, '/message',
        //     arguments: MessageArguments(message, true));
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                // TODO add a proper drawable resource to android, for now using
                //      one that already exists in example app.
                icon: 'launch_background',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      // Navigator.pushNamed(context, '/message',
      //     arguments: MessageArguments(message, true));
    });
  }



  Future initFirebaseLocalNotificationPlugin(Function(String payload) onSelectNotificationCallback) async {
    var initializationSettingsAndroid = AndroidInitializationSettings('ic_launcher');
    var initializationSettingsIOs = IOSInitializationSettings(
    );
    var initSetttings = InitializationSettings(
      android: initializationSettingsAndroid, iOS:initializationSettingsIOs,
    );

    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotificationCallback);
  }


//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//   final FirebaseMessaging firebaseMessaging;
//   final SharedPrefHelper sharedPrefHelper;
//   Function(int) notificationCounterUpdateCallback;
//   BuildContext context;
//   final String NOTIFICATION_COUNTER_KEY = "NOTIFICATION_COUNTER";
//
//   PushNotificationService({this.flutterLocalNotificationsPlugin,this.firebaseMessaging,this.sharedPrefHelper});
//   //final FirebaseMessaging _fcm = FirebaseMessaging();
//
//     Future initializeService(BuildContext context,Function(String) firebaseRefreshTokenCallback,
//         Function(int) notificationCounterUpdateCallback)  async{
//       this.context = context;
//       await initialise(context,firebaseRefreshTokenCallback,notificationCounterUpdateCallback);
//     }
//
//   Future initialise(BuildContext context,Function(String) firebaseRefreshTokenCallback,Function(int) notificationCounterUpdateCallback,
//      ) async {
//     this.context = context;
//     this.notificationCounterUpdateCallback = notificationCounterUpdateCallback;
//     initFirebaseLocalNotificationPlugin(onSelectNotification);
//     configureFirebaseMessaging(onLaunchNotification,onResumeNotification,notificationCounterUpdateCallback);
//
//     firebaseMessaging.requestPermission(alert: true, sound: true, badge: true);
//
//     // firebaseMessaging.requestNotificationPermissions(
//     //     const IosNotificationSettings(sound: true, badge: true, alert: true));
//     // firebaseMessaging.onIosSettingsRegistered
//     //     .listen((IosNotificationSettings settings) {
//     //
//     // });
//     firebaseMessaging.onTokenRefresh.listen((data) {
//       print('FCM YD -> Refresh Token: $data');
//       firebaseRefreshTokenCallback(data);
//     }, onDone: () => print('FCM YD -> Refresh Token Done'));
//     firebaseMessaging.getToken().then((String token) {
//       assert(token != null);
//       //_authenticationBloc.dispatch(SetPushToken(pushToken: token));
//       print("FCM YD -> Push Messaging token: $token");
//       sharedPrefHelper.save(FIREBASE_DEVICE_TOKEN_KEY, token);
//       var retrievedToken = sharedPrefHelper.retrieve(FIREBASE_DEVICE_TOKEN_KEY);
//       print("FCM YD -> FirebaseMessaging retrieved token form shared pref : $retrievedToken");
//     });
//
//     // For testing purposes print the Firebase Messaging token
// //    String token = await firebaseMessaging.getToken();
// //    await sharedPrefHelper.save(FIREBASE_DEVICE_TOKEN_KEY, token);
// //    var retrievedToken = sharedPrefHelper.retrieve(FIREBASE_DEVICE_TOKEN_KEY);
// //    print("FCM YD -> FirebaseMessaging retrieved token form shared pref : $retrievedToken");
//   }
//
//   Future initFirebaseLocalNotificationPlugin(Function(String payload) onSelectNotificationCallback) async {
//     var initializationSettingsAndroid = AndroidInitializationSettings('ic_launcher');
//     var initializationSettingsIOs = IOSInitializationSettings(
//     );
//
//     var initSetttings = InitializationSettings(
//         android: initializationSettingsAndroid, iOS:initializationSettingsIOs,
//     );
//
//     flutterLocalNotificationsPlugin.initialize(initSetttings,
//         onSelectNotification: onSelectNotificationCallback);
//   }
//
//   Future configureFirebaseMessaging(Function(String payload) onLaunchNotificationCallback,Function(String payload) onResumeNotificationCallback,
//       Function(int) notificationCounterUpdateCallback) async{
//
//     // firebaseMessaging.configure(
//     //   onMessage: (Map<String, dynamic> pushNotification) async {
//     //     print("FCM YD -> onMessage: $pushNotification");
//     //     updateNotificationCounter(notificationCounterUpdateCallback);
//     //     if(Platform.isIOS){
//     //       showNotification(
//     //           pushNotification['title'], pushNotification['body'], pushNotification['payload']);
//     //     }else if(Platform.isAndroid){
//     //       showNotification(
//     //           pushNotification['notification']['title'], pushNotification['notification']['body'], pushNotification['data']['payload']);
//     //     }
//     //
//     //   },
//     //   onLaunch: (Map<String, dynamic> message) async {
//     //     print("FCM YD -> onLaunch: $message");
//     //     updateNotificationCounter(notificationCounterUpdateCallback);
//     //     if(Platform.isIOS){
//     //       onLaunchNotificationCallback(message['payload']);
//     //     }else if(Platform.isAndroid){
//     //       onLaunchNotificationCallback(message['data']['payload']);
//     //     }
//     //
//     //   },
//     //   onResume: (Map<String, dynamic> message) async {
//     //     print("FCM YD -> onResume: $message");
//     //     updateNotificationCounter(notificationCounterUpdateCallback);
//     //     onResumeNotificationCallback(message['payload']);
//     //   },
//     // );
//   }
//
//   void showNotification(String title, String body,String payload) async {
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//         'oceanus_local_notification_channel', 'Oceanus', 'Oceanus Mobile Wallet',
//         importance: Importance.max,
//         playSound: true,
//         showProgress: true,
//         priority: Priority.high,
//         ticker: 'test ticker');
//
//     var iOSChannelSpecifics = IOSNotificationDetails(presentAlert: true,presentBadge: true,presentSound: true);
//     var platformChannelSpecifics = NotificationDetails(android:androidPlatformChannelSpecifics, iOS:iOSChannelSpecifics);
//     await flutterLocalNotificationsPlugin
//         .show(0, title, body, platformChannelSpecifics, payload: payload, );
//   }
//
//   Future onSelectNotification(String payload) async {
//     print("FCM YD -> on select notification updated $payload");
//     await handlePayload(payload);
//   }
//
//   Future onResumeNotification(String payload) async {
//     print("FCM YD -> on resume notification - launch $payload");
//     await handlePayload(payload);
//   }
//
//   Future onLaunchNotification(String payload) async {
//     print("FCM YD -> on launch notification - launch $payload");
//     await handlePayload(payload);
//   }
//
//   updateNotificationCounter(Function(int) notificationCounterUpdateCallback){
//       var counter = (getNotificationCounter() + 1);
//       sharedPrefHelper.save(NOTIFICATION_COUNTER_KEY, counter.toString());
//       notificationCounterUpdateCallback(counter);
//   }
//
//   clearNotificationCounter(){
//     sharedPrefHelper.clear(NOTIFICATION_COUNTER_KEY);
//     notificationCounterUpdateCallback(0);
//   }
//
//   int getNotificationCounter(){
//     var counter = sharedPrefHelper.retrieve(NOTIFICATION_COUNTER_KEY);
//     if(counter != null && !counter.isEmpty) {
//       return int.tryParse(counter);
//     }else{
//       return 0;
//     }
//   }
//
//   Future handlePayload(String payload) async {
//       NotificationPayloadModel notificationPayloadModel = NotificationPayloadModel.fromJson(jsonDecode(payload));
//
//       print('Notification pay model -> $notificationPayloadModel');
//
//
//       switch(notificationPayloadModel.type){
//         case 'transaction':
//           //ExtendedNavigator.of(context).pushTransactionDetailPage(transactionId: int.tryParse(notificationPayloadModel?.data['id']));
//           break;
//         case 'promotion':
//           //ExtendedNavigator.of(context).pushPromotionDescriptionPage(promotionID: int.tryParse(notificationPayloadModel?.data['id']));
//           break;
//         case 'notification':
//           //ExtendedNavigator.of(context).pushNotificationPage()
//           break;
//
//       }
//   }
//
//   Future<void> scheduleNotification() async {
//     var scheduledNotificationDateTime =
//     DateTime.now().add(Duration(seconds: 5));
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'channel id',
//       'channel name',
//       'channel description',
//       icon: 'flutter_devs',
//       largeIcon: DrawableResourceAndroidBitmap('flutter_devs'),
//     );
//     var iOSPlatformChannelSpecifics = IOSNotificationDetails();
//     var platformChannelSpecifics = NotificationDetails(
//         android:androidPlatformChannelSpecifics, iOS:iOSPlatformChannelSpecifics);
//     await flutterLocalNotificationsPlugin.schedule(
//         0,
//         'scheduled title',
//         'scheduled body',
//         scheduledNotificationDateTime,
//         platformChannelSpecifics);
//   }
//
//   Future<void> showBigPictureNotification() async {
//     var bigPictureStyleInformation = BigPictureStyleInformation(
//       DrawableResourceAndroidBitmap("flutter_devs"),
//       largeIcon: DrawableResourceAndroidBitmap("flutter_devs"),
//       contentTitle: 'flutter devs',
//       summaryText: 'summaryText',
//     );
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//         'big text channel id',
//         'big text channel name',
//         'big text channel description',
//         styleInformation: bigPictureStyleInformation);
//
//     var platformChannelSpecifics =
//     NotificationDetails(android:androidPlatformChannelSpecifics, macOS: null);
//     await flutterLocalNotificationsPlugin.show(
//         0, 'big text title', 'silent body', platformChannelSpecifics,
//         payload: "big image notifications");
//   }
//
//   Future<void> showNotificationMediaStyle() async {
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'media channel id',
//       'media channel name',
//       'media channel description',
//       color: Colors.red,
//       enableLights: true,
//       largeIcon: DrawableResourceAndroidBitmap("flutter_devs"),
//       styleInformation: MediaStyleInformation(),
//     );
//     var platformChannelSpecifics =
//     NotificationDetails(android:androidPlatformChannelSpecifics, macOS: null);
//     await flutterLocalNotificationsPlugin.show(
//         0, 'notification title', 'notification body', platformChannelSpecifics);
//   }
//
//   Future<void> cancelNotification() async {
//     await flutterLocalNotificationsPlugin.cancel(0);
//   }
}