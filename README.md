# Flutter AUv3 Audio Unit Experiments

Flutter has a huge potential also for audio- and music app development. This
project shows an Flutter based instrument audio unit.

## Overview

The following steps are needed to run the Audio Unit:

1. Build and run the plugin container app
2. Start the plugin host app
3. Debug the audio unit using the plugin host app

## 1. Build and run the plugin container app

- Open `flutter_auv3_unit/ios/Runner.xcworkspace/` with Xcode.
- Select target `Runner`

  ![INL010485.png](doc/images/INL010485.png)

- Run `Runner` on a chosen simulator

  ![INL010486.png](doc/images/INL010486.png)

## 2. Build and run the plugin host app

- Open `AUV3Host/AUv3Host/AUv3Host.xcodeproj/` with Xcode
- Select `iOSAUv3Host` as target

  ![INL010487.png](doc/images/INL010487.png)

- Run `iOSAUv3Host` on the same simulator the plugin container app was executed.

  ![INL010488.png](doc/images/INL010488.png)

## 3. Debug the audio unit using the plugin host app

- Switch back to `flutter_auv3_unit/ios/Runner.xcworkspace/` Xcode project
- Select audio unit target `FlutterAUV3` 

  ![INL010489.png](doc/images/INL010489.png)

- Run the plugin on the same simulator as before

  ![INL010490.png](doc/images/INL010490.png)

- Select `AUv3Host` as the app to run

  ![INL010491.png](doc/images/INL010491.png)

- Within AUv3Host: select the `Instruments` tab

  ![INL010492.png](doc/images/INL010492.png)

- Select `Flutter Example Audio Unit`

  ![INL010493.png](doc/images/INL010493.png)

- Wait three seconds
- Click on `View`

  ![INL010494.png](doc/images/INL010494.png)

## 4. Here is the bug

- Normally the Flutter default app should be shown
- But it is not.