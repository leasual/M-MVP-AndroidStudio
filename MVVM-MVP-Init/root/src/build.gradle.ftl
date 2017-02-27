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