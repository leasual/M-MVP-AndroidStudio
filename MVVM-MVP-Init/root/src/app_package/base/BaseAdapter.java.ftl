package ${packageName}.base;

import android.databinding.DataBindingUtil;
import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;

import java.util.List;


public abstract class BaseAdapter<T> extends  RecyclerView.Adapter<BindingViewHolder> {


    protected List<T> mDataList;
    protected OnItemClickListener mListener;

    public BaseAdapter(List<T> dataList) {
        this.mDataList = dataList;
    }

    public interface OnItemClickListener<T>{
        void onItemClick(T data, int position);
    }

    public void setOnItemClickListener(OnItemClickListener listener){
        this.mListener = listener;
    }

    @LayoutRes
    public abstract int getItemView();

    @Override
    public BindingViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

        return new BindingViewHolder(DataBindingUtil.inflate(LayoutInflater.from(parent.getContext()), getItemView(), parent, false));
    }

    @Override
    public void onBindViewHolder(BindingViewHolder holder, int position) {
        T item = mDataList.get(position);
        //when recycler view adapter ,it should open
        //holder.getDataBinding().setVariable(${packageName}.BR.item, item);
        holder.getDataBinding().executePendingBindings();
    }

    @Override
    public int getItemCount() {
        return mDataList.size();
    }
}
