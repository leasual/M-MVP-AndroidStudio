package ${packageName}.base;

import com.trello.rxlifecycle.android.ActivityEvent;
import com.trello.rxlifecycle.components.RxActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;
import rx.Observable;

public abstract class BasePresenter<V> {
    protected V mView;
    private RxAppCompatActivity RxView;
    private ActivityEvent mEvent;
    private RxActivity RxView2;
    private boolean isCompat = true;

    public void setView(V v){
        this.mView = v;
        if (mView instanceof RxAppCompatActivity) {
            RxView = (RxAppCompatActivity) mView;
            isCompat = true;
        }else if (mView instanceof RxActivity){
            RxView2 = (RxActivity) mView;
            isCompat = false;
        }
        this.onAttached();
    }

    public abstract void onAttached();

    public abstract void onDetached();

     @SuppressWarnings("unchecked")
    protected  <T> Observable.Transformer<T, T> bindUntilEvent(ActivityEvent event) {
        this.mEvent = event;
        return (Observable.Transformer<T, T>) mSpecialUntilEvent;
    }

    @SuppressWarnings("unchecked")
    protected  <T> Observable.Transformer<T, T> bindUntilEvent() {
        return (Observable.Transformer<T, T>) mUntilEvent;
    }

    private Observable.Transformer<?, ?> mSpecialUntilEvent = new Observable.Transformer<Object, Object>() {
        @Override
        public Observable<Object> call(Observable<Object> tObservable) {
            return tObservable.compose(isCompat? RxView.bindUntilEvent(mEvent) : RxView2.bindUntilEvent(mEvent));
        }
    };

    private Observable.Transformer<?, ?> mUntilEvent = new Observable.Transformer<Object, Object>() {
        @Override
        public Observable<Object> call(Observable<Object> tObservable) {
            return tObservable.compose(isCompat? RxView.bindUntilEvent(ActivityEvent.STOP) : RxView2.bindUntilEvent(ActivityEvent.STOP));
        }
    };
}