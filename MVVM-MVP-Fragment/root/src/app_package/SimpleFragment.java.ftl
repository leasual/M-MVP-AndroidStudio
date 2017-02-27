package ${packageName}.${moduleName}.view;

import android.os.Bundle;
import ${packageName}.R;
import ${packageName}.base.BaseFragment;
import ${packageName}.${moduleName}.contract.${contractClass};
import ${packageName}.${moduleName}.presenter.${presenterClass};
import ${packageName}.databinding.Fragment${underscoreToCamelCase(classToResource(fragmentClass))}Binding;


public class ${fragmentClass} extends BaseFragment<${presenterClass}, Fragment${underscoreToCamelCase(classToResource(fragmentClass))}Binding> implements ${contractClass}.View{


	@Override 
    public int getContentView() { 
        return R.layout.${layoutName};
    }

    @Override
    public void initUIViews() {

    }

}