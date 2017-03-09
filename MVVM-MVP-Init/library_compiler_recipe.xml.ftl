<?xml version="1.0"?>
<recipe>
    <merge from="root/settings_annotation.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />
               
    <instantiate from="root/build_annotation.gradle.ftl"
                   to="${escapeXmlAttribute(annotationProjectOut)}/build.gradle" />
    <instantiate from="root/src/library_package/ApiFactory.java.ftl"
                   to="${escapeXmlAttribute(annotationSrcOut)}/ApiFactory.java" />

    <copy from="root/gitignore"
            to="${escapeXmlAttribute(annotationProjectOut)}/.gitignore" />

	<mkdir at="${escapeXmlAttribute(annotationProjectOut)}/libs" />
</recipe>
