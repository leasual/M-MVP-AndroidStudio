<?xml version="1.0"?>
<recipe>
    <merge from="root/settings_compiler.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />
    <instantiate from="root/build_compiler.gradle.ftl"
                   to="${escapeXmlAttribute(compilerProjectOut)}/build.gradle" />
    <instantiate from="root/src/library_package/IProcessor.java.ftl"
                   to="${escapeXmlAttribute(compilerSrcOut)}/IProcessor.java" />
	<instantiate from="root/src/library_package/ApiFactoryProcessor.java.ftl"
                   to="${escapeXmlAttribute(compilerSrcOut)}/ApiFactoryProcessor.java" />
    <instantiate from="root/src/library_package/AnnotationProcessor.java.ftl"
                   to="${escapeXmlAttribute(compilerSrcOut)}/AnnotationProcessor.java" />
    <copy from="root/gitignore"
            to="${escapeXmlAttribute(compilerProjectOut)}/.gitignore" />

	<mkdir at="${escapeXmlAttribute(compilerProjectOut)}/libs" />
</recipe>
