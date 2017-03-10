<?xml version="1.0"?>
<recipe>
    <merge from="root/settings_compiler.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />
    <instantiate from="root/build_compiler.gradle.ftl"
                   to="${escapeXmlAttribute(topOut)}/compiler/build.gradle" />
    <instantiate from="root/src/library_package/IProcessor.java.ftl"
                   to="${escapeXmlAttribute(topOut)}/compiler/${srcDir}/IProcessor.java" />
	<instantiate from="root/src/library_package/ApiFactoryProcessor.java.ftl"
                   to="${escapeXmlAttribute(topOut)}/compiler/${srcDir}/ApiFactoryProcessor.java" />
    <instantiate from="root/src/library_package/AnnotationProcessor.java.ftl"
                   to="${escapeXmlAttribute(topOut)}/compiler/${srcDir}/AnnotationProcessor.java" />
    <copy from="root/gitignore"
            to="${escapeXmlAttribute(topOut)}/compiler/.gitignore" />

	<mkdir at="${escapeXmlAttribute(topOut)}/compiler/libs" />
</recipe>
