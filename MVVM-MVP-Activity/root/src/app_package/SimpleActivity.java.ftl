package ${packageName}.${moduleName}.view;

import android.os.Bundle;
import ${packageName}.R;
import ${packageName}.base.BaseActivity;
import ${packageName}.${moduleName}.contract.${contractClass};
import ${packageName}.${moduleName}.presenter.${presenterClass};
import ${packageName}.databinding.Activity${underscoreToCamelCase(classToResource(activityClass))}Binding;


public class ${activityClass} extends BaseActivity<${presenterClass}, Activity${underscoreToCamelCase(classToResource(activityClass))}Binding> implements ${contractClass}.View{


	@Override 
    public int getContentView() { 
        return R.layout.${layoutName};
    }

    @Override
    public void initUIViews() {

    }

}