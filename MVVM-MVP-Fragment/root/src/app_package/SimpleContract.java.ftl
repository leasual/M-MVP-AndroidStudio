package ${packageName}.${moduleName}.contract;

import ${packageName}.base.BasePresenter;
import ${packageName}.base.BaseView;

public interface ${contractClass} {

    interface View extends BaseView {
        
    }

    abstract class Presenter extends BasePresenter<View> {

        @Override
        public void onAttached() {

        }
    }
}