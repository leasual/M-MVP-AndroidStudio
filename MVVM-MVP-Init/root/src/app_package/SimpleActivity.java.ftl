package ${packageName};

import android.os.Bundle;
import ${packageName}.R;
import ${packageName}.ui.common.contract.${contractClass};
import ${packageName}.ui.common.presenter.${presenterClass};
import ${packageName}.ui.common.view.databinding.Activity${underscoreToCamelCase(classToResource(activityClass))}Binding;
import android.support.v7.app.AppCompatActivity;

public class ${activityClass} extends BaseActivity<${presenterClass}, Activity${underscoreToCamelCase(classToResource(activityClass))}Binding> implements ${contractClass}.View{


	@Override 
    public int getContentView() { 
        return R.layout.${layoutName};
    }

    @Override
    public void initUIViews() {

    }

}