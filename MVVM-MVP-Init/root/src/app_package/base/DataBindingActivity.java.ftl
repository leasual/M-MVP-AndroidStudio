package ${packageName}.base;

import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;


public abstract class DataBindingActivity<T extends ViewDataBinding> extends AppCompatActivity {

    public T mDataBinding;

    @LayoutRes
    public abstract int getContentView();

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mDataBinding = DataBindingUtil.setContentView(this, getContentView());
        initPresenter();
        initUIViews();
    }

    public void initPresenter(){

    }

    public abstract void initUIViews();

}
