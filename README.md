# videowebview

environment setting:
1. require: - Futter SDK
            - Xcode 
            - Android Studio or Visual code
2. setting
    2.1. Futter SDK
    - download Flutter (https://docs.flutter.dev/get-started/install)
    - Add environment variable : 
        + Press WIN + R to open the RUN window -> 'rundll32.exe sysdm.cpl,EditEnvironmentVariables' -> open 'Environment Variables'
        + Select the "Path" variable and click the "Edit" button
        + click the "New" button, add "$[PATH_TO_FLUTTER_LOCAL_DIRECTORY]/flutter/bin" -> oke
        (refer: https://openplanning.net/12835/cai-dat-flutter-sdk-tren-windows)
    
    2.2. Android studio settting
    - Install Android Studio:
        + Download Android Studio (https://developer.android.com/studio)
        + Run Android Studio, and follow the steps in the Android Studio Setup Wizard. It will help install the latest versions of Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.
    - Install Flutter and Dart plugins:
        + Open Android Studio
        + Mở Configure > Plugins
        + Select Flutter plugin and press Install
        + Click Yes when the message to install Dart plugin is displayed
        + Click Restart when the message is displayed
    = Install Android emulator:
    Steps to install Android emulator:
        + Enable VM acceleration on your device
        + Chạy Android Studio > Tools > Android > AVD Manager và chọn Create Virtual Device.
        + Select to define a device and select Next
        + Select one or more images for the Android versions you want to emulate, and click Next.
        + Under Emulated Performance, select Hardware - GLES 2.0 to enable hardware acceleration
        + Confirm the AVD configuration is correct and select Finish.
        + In Android Virtual Device Manager, click Run, emulator will start running and show the OS version and device you choose.
        (refer: https://viblo.asia/p/bat-dau-lap-trinh-voi-flutter-924lJP40KPM 
        or https://codegym.vn/blog/2020/04/14/p1-gioi-thieu-va-huong-dan-cai-dat-flutter-cho-windows/).



implementation steps:

1. download project -> decompress -> open project
2. open Terminal -> run "flutter pub get"
3.  - select devide -> Run (open with android studio)
    - select devide -> click 'F5' (open with visual code)

