[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/rodydavis)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=WSH3GVC49GNNJ)

# fb_firestore

Flutter Web, iOS and Android Cloud Firestore Plugin.

This package is now deprecated and was originally created to add firebase on the desktop and web. You can now use the [FlutterFire](https://github.com/FirebaseExtended/flutterfire) packages to do anything this plugin could.

## Getting Started

For Auth Use: https://pub.dev/packages/fb_auth

Follow Installation Instructions for Web: https://pub.dev/packages/firebase

Update `/web/index.html` in the body tag.

```html
<!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>

  <!-- TODO: Add SDKs for Firebase products that you want to use
      https://firebase.google.com/docs/web/setup#config-web-app -->
  <script src="https://www.gstatic.com/firebasejs//6.3.3/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/6.3.3/firebase-firestore.js"></script>
  <script src="https://www.gstatic.com/firebasejs/6.3.3/firebase-storage.js"></script>
  <script src="https://www.gstatic.com/firebasejs/6.3.3/firebase-functions.js"></script>

  <script>
    // Your web app's Firebase configuration
    var firebaseConfig = {
      apiKey: "API_KEY",
      authDomain: "AUTH_DOMAIN",
      databaseURL: "DATABASE_URL",
      projectId: "PROJECT_ID",
      storageBucket: "STORAGE_BUCKET",
      messagingSenderId: "MESSAGING_SENDER_ID",
      appId: "APP_ID"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
  </script>
```

Follow Installation Instructions for Mobile: https://pub.dev/packages/cloud_firestore

- Update `ios/Runner` and add the `GoogleService-Info.plist` downloaded from firebase

- Update `android/app` and add the `google-services.json` downloaded from firebase
- Update `android/build.gradle` and update the classpath:

```gradle
    classpath 'com.google.gms:google-services:4.2.0'
```

## API

Get a list from a collection:

```dart
FbFirestore.getDocs('users');
```

Get a doc from a collection:

```dart
FbFirestore.getDoc('users/${userId}');
```

Edit doc in a collection: (id required)

```dart
FbFirestore.editDoc('users/${userId}', {
    "name" : "Flutter"
    },
    update: true // Update Only Specific Fields If Doc Exists
);
```

Add a new doc to a collection:

```dart
FbFirestore.addDoc('users',{
    "name" : "Flutter"
});
```

Delete a doc from a collection:

```dart
FbFirestore.deleteDoc('users/${userId}');
```
