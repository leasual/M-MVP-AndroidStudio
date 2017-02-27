
While using BaseAdapter remember to:
1.	Open binding item line.
	//when recycler view adapter ,it should open
    holder.getDataBinding().setVariable(${packageName}.BR.item, item); 
    
2.  Add <data> In layout.xml.Just like this:
	<data>
        <variable
            name="item"
            type="your model">
        </variable>
    </data>

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