
package ${packageName};

import ${packageName}.base.BasePresenter;
import ${packageName}.base.BaseView;

public interface ${contractClass} {

    interface View extends BaseView {
        
    }

    class Presenter extends BasePresenter<View> {

        @Override
        public void onAttached() {

        }
    }
}