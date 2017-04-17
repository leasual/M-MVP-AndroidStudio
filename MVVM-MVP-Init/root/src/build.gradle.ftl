
android {
	dataBinding {
        enabled = true
    }

    configurations.all {
        resolutionStrategy.force 'com.google.code.findbugs:jsr305:1.3.9'
    }
}

dependencies {
	compile('com.squareup.retrofit2:retrofit:2.1.0') {
        exclude module: 'okhttp'
    }
    
    compile project(':annotation')
    annotationProcessor project(':compiler')
}