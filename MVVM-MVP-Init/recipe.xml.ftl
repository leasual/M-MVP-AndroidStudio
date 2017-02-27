<?xml version="1.0"?>
<recipe>
	<merge from="root/res/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
             
    <merge from="root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
	
	<mkdir at="${escapeXmlAttribute(srcOut)}/base" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/data" />
    
    <mkdir at="${escapeXmlAttribute(srcOut)}/data/model" />
    
    <mkdir at="${escapeXmlAttribute(srcOut)}/data/request" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/data/response" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/receiver" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/service" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui/common" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui/common/adapter" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui/common/contract" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui/common/presenter" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/ui/common/view" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/utils" />
    
    <mkdir at="${escapeXmlAttribute(srcOut)}/widget" />
    
    <mkdir at="${escapeXmlAttribute(srcOut)}/utils" />

<#if generateLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 	to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
</#if>

	<instantiate from="root/src/app_package/App.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${applicationClass}.java" />
                   
	<instantiate from="root/src/app_package/base/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.java" />

    <instantiate from="root/src/app_package/base/BaseAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/BaseAdapter.java" />

    <instantiate from="root/src/app_package/base/BaseFragment.java.ftl"
      			   to="${escapeXmlAttribute(srcOut)}/base/BaseFragment.java" />

    <instantiate from="root/src/app_package/base/BasePresenter.java.ftl"
      			   to="${escapeXmlAttribute(srcOut)}/base/BasePresenter.java" />

    <instantiate from="root/src/app_package/base/BaseView.java.ftl"
       			   to="${escapeXmlAttribute(srcOut)}/base/BaseView.java" />

    <instantiate from="root/src/app_package/base/BindingViewHolder.java.ftl"
       			   to="${escapeXmlAttribute(srcOut)}/base/BindingViewHolder.java" />

    <instantiate from="root/src/app_package/base/DataBindingActivity.java.ftl"
       			   to="${escapeXmlAttribute(srcOut)}/base/DataBindingActivity.java" />

    <instantiate from="root/src/app_package/base/DataBindingFragment.java.ftl"
       			   to="${escapeXmlAttribute(srcOut)}/base/DataBindingFragment.java" /> 

	<instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/view/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/view/${activityClass}.java" />

    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/contract/${contractClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/contract/${contractClass}.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/presenter/${presenterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/presenter/${presenterClass}.java" />
	
	<instantiate from="root/src/app_package/MVPReadMe.txt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/MVPReadMe.txt" />
				   
	<open file="${escapeXmlAttribute(srcOut)}/MVPReadMe.txt" />
	
	<merge from="root/src/build.gradle.ftl" to="${projectOut}/build.gradle" />
             
<#if retrofit>
	<dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
	<dependency mavenUrl="com.android.support:design:${buildApi}.+"/>

	<dependency mavenUrl="com.squareup.retrofit2:adapter-rxjava:2.1.0"/>
	<dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.1.0"/>
	<dependency mavenUrl="com.google.code.gson:gson:2.8.0"/>
	<dependency mavenUrl="io.reactivex:rxandroid:1.2.1"/>

	<dependency mavenUrl="com.squareup.okhttp3:okhttp:3.4.1"/>
	<dependency mavenUrl="com.squareup.okhttp3:logging-interceptor:3.4.1"/>
</#if>

<#if butterknife>
	<dependency mavenUrl="com.jakewharton:butterknife:8.4.0"/>
	<dependency mavenUrl="com.jakewharton:butterknife-compiler:8.4.0"/>
</#if>

<#if glide>
	<dependency mavenUrl="com.github.bumptech.glide:glide:3.7.0"/>
</#if>

<#if photoView>
	<dependency mavenUrl="com.github.chrisbanes:PhotoView:1.3.1"/>
</#if>

<#if picasso>
	<dependency mavenUrl="com.squareup.picasso:picasso:2.5.2"/>
</#if>

<#if fresco>
	<dependency mavenUrl="com.facebook.fresco:fresco:0.11.0"/>
</#if>

<#if animatedGif>
	<dependency mavenUrl="com.facebook.fresco:animated-gif:0.12.0"/>
</#if>

</recipe>
