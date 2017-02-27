<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android">
<RelativeLayout
    xmlns:tools="http://schemas.android.com/tools"
<#if hasAppBar && appBarLayoutName??>
    xmlns:app="http://schemas.android.com/apk/res-auto"
</#if>
    android:id="@+id/${simpleLayoutName}"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
<#if hasAppBar && appBarLayoutName??>
    app:layout_behavior="@string/appbar_scrolling_view_behavior"
    tools:showIn="@layout/${appBarLayoutName}"
</#if>
    tools:context="${relativePackage}.${activityClass}">

<#if isNewProject!false>
    <TextView
<#if includeCppSupport!false>
        android:id="@+id/sample_text"
</#if>
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello World!" />
</#if>
</RelativeLayout>
</layout>
