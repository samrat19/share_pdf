# share_pdf

A new Flutter package where you can give a pdf url from API, web and you can share a pdf file in any media, not just an url, it will be shared as an pdf file

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

