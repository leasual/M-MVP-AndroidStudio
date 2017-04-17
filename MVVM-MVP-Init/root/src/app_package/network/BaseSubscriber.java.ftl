package ${packageName}.network;

import rx.Subscriber;

/**
 * Created by james.li on 2017/4/14.
 */

public abstract class BaseSubscriber<T> extends Subscriber<T> {

    @Override
    public void onError(Throwable e) {
        onError(RxException.handleException(e));
    }

    public abstract void onError(RxException.RxThrowable e);
}
