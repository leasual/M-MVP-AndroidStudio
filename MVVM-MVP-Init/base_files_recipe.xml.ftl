<recipe>

	<instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />

    <instantiate from="src/app_package/classes/BaseActivity.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.java" />

    <instantiate from="src/app_package/classes/BaseAdapter.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/BaseAdapter.java" />

    <instantiate from="src/app_package/classes/BaseFragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/base/BaseFragment.java" />

    <instantiate from="src/app_package/classes/BasePresenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/base/BasePresenter.java" />

    <instantiate from="src/app_package/classes/BaseView.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/BaseView.java" />

    <instantiate from="src/app_package/classes/BindingViewHolder.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/BindingViewHolder.java" />

    <instantiate from="src/app_package/classes/DataBindingActivity.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/DataBindingActivity.java" />

    <instantiate from="src/app_package/classes/DataBindingFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/DataBindingFragment.java" />   
 
</recipe>
