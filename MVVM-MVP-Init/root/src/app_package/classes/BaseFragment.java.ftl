package ${packageName}.base;

import android.databinding.ViewDataBinding;
import ${packageName}.DataBindingFragment;

import java.lang.reflect.ParameterizedType;


public abstract class BaseFragment <P extends BasePresenter, T extends ViewDataBinding> extends DataBindingFragment<T> {

    public P mPresenter;

    @Override
    public void initPresenter() {
        if (this instanceof BaseView &&
                this.getClass().getGenericSuperclass() instanceof ParameterizedType &&
                ((ParameterizedType) (this.getClass().getGenericSuperclass())).getActualTypeArguments().length > 0){
            Class mPresenterClass = (Class)((ParameterizedType)(getClass().getGenericSuperclass())).getActualTypeArguments()[0];
            try {
                mPresenter =  (P)mPresenterClass.newInstance();
                mPresenter.setView(this);
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (java.lang.InstantiationException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (mPresenter != null){
            mPresenter.onDetached();
        }
    }
}
