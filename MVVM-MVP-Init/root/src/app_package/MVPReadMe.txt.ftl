you should do next steps first when you develop:
1. In your module's build.gradle
android {
	dataBinding {
        enabled = true
    }
}

dependencies {
	compile('com.squareup.retrofit2:retrofit:2.1.0') {
        exclude module: 'okhttp'
    }
}



While using butterknife remember to:
1. In Project: build.gradle:
	Add APT plugin:
	classpath 'com.neenbedankt.gradle.plugins:android-apt:1.8'
2. In your module's build.gradle:
	2.1 Apply APT plugin:
		apply plugin: 'com.neenbedankt.android-apt'
	2.2 change
		add apt 'com.jakewharton:butterknife-compiler:8.1.0'
	2.3 change
		
3. In your AndroidManifest:
	add:
	<application
        android:name=".${applicationClass}"
		....