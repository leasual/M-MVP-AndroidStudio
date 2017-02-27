<?xml version="1.0"?>
<recipe>
   
    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/SimpleFragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/view/${fragmentClass}.java" />

    <instantiate from="src/app_package/SimpleContract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/contract/${contractClass}.java" />


    <instantiate from="src/app_package/SimplePresenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(moduleName)}/presenter/${presenterClass}.java" />

</recipe>
