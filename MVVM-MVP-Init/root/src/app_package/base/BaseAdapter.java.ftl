package ${packageName}.base;

import android.databinding.DataBindingUtil;
import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;


public abstract class BaseAdapter<T> extends  RecyclerView.Adapter<BindingViewHolder> {


    protected List<T> mDataList;
    protected OnItemClickListener mListener;

    public BaseAdapter(List<T> dataList) {
        this.mDataList = dataList;
    }

    public void setOnItemClickListener(OnItemClickListener listener){
        this.mListener = listener;
    }

    @LayoutRes
    public abstract int getItemView();

    @ArrayRes
    public abstract int[] getItemChildViews();

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


        if (getItemChildViews() != null && getItemChildViews().length > 0){
            for (int viewId : getItemChildViews()) {
                holder.itemView.findViewById(viewId).setOnClickListener(new CustomOnChildClickListener(holder.itemView.findViewById(viewId), item, position));
            }
        }
        holder.itemView.setOnClickListener(new CustomOnClickListener(holder.itemView, item, position));
    }

    @Override
    public int getItemCount() {
        return mDataList.size();
    }

     private class CustomOnClickListener implements View.OnClickListener {
        private View view;
        private T data;
        private int position;
        public CustomOnClickListener(View view, T data, int position){
            this.view = view;
            this.data = data;
            this.position = position;
        }

        @Override
        public void onClick(View view) {
            if (mListener != null){
                mListener.onItemClick(view, data, position);
            }
        }
    }

    private class CustomOnChildClickListener implements View.OnClickListener {
        private View view;
        private T data;
        private int position;
        public CustomOnChildClickListener(View view, T data, int position){
            this.view = view;
            this.data = data;
            this.position = position;
        }

        @Override
        public void onClick(View view) {
            if (mListener != null){
                mListener.onItemChildClick(view, data, position);
            }
        }
    }

    public interface OnItemClickListener<T> {
        void onItemClick(View view, T data, int position);
        void onItemChildClick(View view, T data, int position);
    }
}
