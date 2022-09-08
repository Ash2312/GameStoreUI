# GameStoreUI

A new Flutter UI project which displays popular video games.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## How to use 
To use the project. 

### Step-1

Download or clone the repository using the following link 

```bash
https://github.com/Ash2312/GameStoreUI.git
```

### Step-2

Go to the terminal of Android Studio/VSCode or any IDE that you are using and run the following commands 

```bash
flutter pub get
```

**flutter pub get** installs the required dependencies that I have used in the project

### Step-3

Connect with an emulator or a physical device where you want to run the application and run the following command 

```bash
flutter run
```

you can also run the application by clicking on the **run** on the options panel and click on **run without debugging**

## Running Flutter Launcher Icons

**flutter_launcher_icons** is a flutter package that one can use to change the application icon, to run the flutter_launcher_icons follow the steps given below 

### Step-1 

Add Flutter Launcher Icons to your **pubspec.yaml**

### Step-2

Create a new file named **flutter_launcher_icons.yaml** and add the following - 

```bash
dev_dependencies:
  flutter_launcher_icons: "^0.10.0"

flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21 # android min sdk min:16, default 21
  web:
    generate: true
    image_path: "path/to/image.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"
  windows:
    generate: true
    image_path: "path/to/image.png"
    icon_size: 48 # min:48, max:256, default: 48
```

change **true** to **false** in ios , web , windows if you are not going to run the application on the mentioned devices

### Step-3

Run the following commands 

```bash
flutter pub get
```

```bash
flutter pub run flutter_launcher_icons:main
```
## UI of the application

<img src="https://user-images.githubusercontent.com/95862685/187656694-d60c60ec-ebc8-442b-a231-81dfad41d4b2.jpg" width="200" height="400">           <img src="https://user-images.githubusercontent.com/95862685/187657706-8494d903-a6c0-453f-ae7a-ec73ee1dd1cd.jpg" width="200" height="400">




