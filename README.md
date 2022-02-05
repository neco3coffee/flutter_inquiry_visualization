# flutter_inquiry_visualization
A chat app made by Flutter and Firebase.

## Documentation
- [flutter documentation](https://docs.flutter.dev/)
- [firebase documentation](https://firebase.google.com/docs)
- [FlutterFire documentation](https://firebase.flutter.dev/)

## Installation
- [asdf](https://github.com/asdf-vm/asdf)
  - Dart version ...
  - Flutter version ...


## Feature
- [ ] Google login
- [ ] 1-1 private chat
- [ ] send text message
- [ ] send image
- [ ] read, unread function
- [ ] delivered or not
- [ ] visualize how many people waiting


## TL;DR
- delivered or not => [document.metadata.hasPendingWrites](https://firebase.google.com/docs/reference/js/v8/firebase.firestore.SnapshotMetadata#haspendingwrites)
- read, unread => [update read status before Widget build](https://medium.com/flutter-community/a-chat-application-flutter-firebase-1d2e87ace78f#:~:text=This%20function%20updates%20the%20message%20read%20status%20using%20the%20following%20function.)
  - just read function =>recommend [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView-class.html#:~:text=The%20ListView.builder%20constructor%20takes%20an%20IndexedWidgetBuilder%2C%20which%20builds%20the%20children%20on%20demand.%20This%20constructor%20is%20appropriate%20for%20list%20views%20with%20a%20large%20(or%20infinite)%20number%20of%20children%20because%20the%20builder%20is%20called%20only%20for%20those%20children%20that%20are%20actually%20visible.)
  - for message list initialvalue =>recommend [scrollable_positioned_list](https://pub.dev/packages/scrollable_positioned_list)

## Extension
- [ ] zenn(tip)
- [ ] note(full)
- [ ] [youtube](Demo)
- [ ] [Figma](design)
- [ ] [github project](https://github.com/users/neco3coffee/projects/4/views/1)

## Screenshot

## App architecture
### [MVVM](https://ja.wikipedia.org/wiki/Model_View_ViewModel)

ソフトウェアアーキテクチャとは、抽象化と問題の分割によって複雑性を減らすことを主に念頭に置いたものである。

## How to run
- 1 Clone this repo
- 2 `flutter pub get`
- 3 `flutter run`
