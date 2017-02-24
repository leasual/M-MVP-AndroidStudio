package ${packageName}.base;

import android.databinding.ViewDataBinding;
import android.support.v7.widget.RecyclerView;

public class BindingViewHolder<T extends ViewDataBinding> extends RecyclerView.ViewHolder{
    private T mDataBinding;
    public BindingViewHolder(T binding) {
        super(binding.getRoot());
        mDataBinding = binding;
    }



    public T getDataBinding(){
        return mDataBinding;
    }
}
