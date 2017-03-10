<?xml version="1.0"?>
<recipe>
    <merge from="root/settings_annotation.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />
               
    <instantiate from="root/build_annotation.gradle.ftl"
                   to="${escapeXmlAttribute(topOut)}/annotation/build.gradle" />
    <instantiate from="root/src/library_package/ApiFactory.java.ftl"
                   to="${escapeXmlAttribute(topOut)}/annotation/${srcDir}/ApiFactory.java" />

    <copy from="root/gitignore"
            to="${escapeXmlAttribute(topOut)}/annotation/.gitignore" />

	<mkdir at="${escapeXmlAttribute(topOut)}/annotation/libs" />
</recipe>
