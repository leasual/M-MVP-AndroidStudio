apply plugin: 'java'

dependencies {
    compile fileTree(include: ['*.jar'], dir: 'libs')
    compile 'com.google.auto.service:auto-service:1.0-rc3'
    compile 'com.squareup:javapoet:1.8.0'
    compile project(path: ':annotation')
}

sourceCompatibility = "1.7"
targetCompatibility = "1.7"