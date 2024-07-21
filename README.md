[![support](https://img.shields.io/badge/platform-flutter%7Cflutter%20web%7Cdart%20vm-ff69b4.svg?style=flat-square)](https://github.com/flutterchina/dio)

# share_pdf

A new Flutter package to share pdf across the media

*The package is under construction. Just live to test some features*

## Getting Started





## Features

*The package is under construction. Just live to test some features*

## Getting started

*The package is under construction. Just live to test some features*

## Android

Go to your app/build.gradle & change compileSdkVersion to 34  
change your kotlin version to 1.8.0 in android/build.gradle

```groovy

 ext.kotlin_version = '1.8.0'

```

add the following permission in your manifest.xml

```xml
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
```

## Usage

```dart
  SharePDF sharePDF = SharePDF(
  url: "https://pdfobject.com/pdf/sample.pdf",
  headerText: "Header text goes here",
  subject: "Subject Line goes here",
);
await sharePDF.downloadAndShare();
```

