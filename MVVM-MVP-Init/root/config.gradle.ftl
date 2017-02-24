ext {  
      
    android = [  
            compileSdkVersion: 23,  
            buildToolsVersion: "24.0.2",  
            minSdkVersion    : 15,  
            targetSdkVersion : 23,  
            versionCode      : 1,  
            versionName      : "1.0"  
    ]  
  
    dependVersion = [  
            support: "23.4.0"  
    ]  
  
    dependencies = [  
            // ------------- Android -------------  
            supportV4            : "com.android.support:support-v4:${dependVersion.support}",  
            appcompatV7          : "com.android.support:appcompat-v7:${dependVersion.support}",  
            design               : "com.android.support:design:${dependVersion.support}",  
            junit                : "junit:junit:4.12",  
            //------------- ���� -------------  
            espresso             : "com.android.support.test.espresso:espresso-core:2.2.2",  
  
            // ------------- �������� -------------  
            okhttp               : 'com.squareup.okhttp3:okhttp:3.3.1',  
            retrofit             : 'com.squareup.retrofit2:retrofit:2.1.0',  
  
            // ------------- ͼƬ���� -------------  
            fresco               : 'com.facebook.fresco:fresco:0.11.0',  
            animatedGif          : 'com.facebook.fresco:animated-gif:0.12.0',  
            picasso              : 'com.squareup.picasso:picasso:2.5.2',  
            photoView            : 'com.github.chrisbanes:PhotoView:1.3.1',  
  
            // ------------- RxAndroid -------------  
            rxAndroid            : 'io.reactivex:rxandroid:1.2.1',  
            rxJava               : 'io.reactivex:rxjava:1.2.2',  
  
            // ------------- json���� -------------  
            fastJson             : 'com.alibaba:fastjson:1.1.54.android',  
            gson                 : 'com.google.code.gson:gson:2.8.0',  
  
            // ------------- log��ӡ���� -------------  
            logger               : 'com.orhanobut:logger:1.15',  
  
            greendao             : 'org.greenrobot:greendao:3.2.0',  
  
            // ------------- ButterKnife -------------  
            butterknife          : 'com.jakewharton:butterknife:8.4.0',  
            butterknifeCompiler  : 'com.jakewharton:butterknife-compiler:8.4.0',  
  
            // ------------- LeakCanary -------------  
            leakcanaryAndroid    : 'com.squareup.leakcanary:leakcanary-android:1.5',  
            leakcanaryAndroidNoOp: 'com.squareup.leakcanary:leakcanary-android-no-op:1.5',  
    ]  
}  