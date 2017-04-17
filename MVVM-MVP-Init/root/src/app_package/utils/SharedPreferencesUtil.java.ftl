package ${packageName}.utils;

import android.content.Context;
import android.content.SharedPreferences;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by james.li on 2017/3/30.
 */
public class SharedPreferencesUtil {
    public static final String TOKEN = "token";
    public static final String ACCOUNT = "account";
    public static final String PASSWORD = "password";

    /**
     * default name
     */
    private static final String default_file = ".share_cache_data";


    public static void setStringValue(Context context, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(key, value);
        editor.commit();
    }

    public static void setStringValue(Context context, String fileName, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(key, value);
        editor.commit();
    }

    public static String getStringValue(Context context, String key) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        return sharedPreferences.getString(key, null);
    }

    public static String getStringValue(Context context, String fileName, String key) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        return sharedPreferences.getString(key, null);
    }

    public static void setIntValue(Context context, String key, int value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putInt(key, value);
        editor.commit();
    }

    public static void setIntValue(Context context, String fileName, String key, int value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putInt(key, value);
        editor.commit();
    }

    public static int getIntValue(Context context, String key) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        return sharedPreferences.getInt(key, -1);
    }

    public static int getIntValue(Context context, String fileName, String key) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        return sharedPreferences.getInt(key, -1);
    }

    @SuppressWarnings("unchecked")
    public static <T> T getValue(Context context, String key, T defValue) {
        return getValue(context, default_file, key, defValue);
    }

    @SuppressWarnings("unchecked")
    public static <T> T getValue(Context context, String spName, String key, T defValue) {
        SharedPreferences sp = context.getSharedPreferences(spName, Context.MODE_PRIVATE);
        T result = null;
        if (defValue instanceof String) {
            String s = sp.getString(key, (String) defValue);
            result = (T) s;
        } else if (defValue instanceof Integer) {
            Integer i = sp.getInt(key, (Integer) defValue);
            result = (T) i;
        } else if (defValue instanceof Float) {
            Float f = sp.getFloat(key, (Float) defValue);
            result = (T) f;
        } else if (defValue instanceof Long) {
            Long l = sp.getLong(key, (Long) defValue);
            result = (T) l;
        } else if (defValue instanceof Boolean) {
            Boolean b = sp.getBoolean(key, (Boolean) defValue);
            result = (T) b;
        } else if (defValue instanceof Set) {
            Set<String> set = sp.getStringSet(key, (Set<String>) defValue);
            result = (T) set;
        }
        return result;
    }

    public static <T> boolean setValue(Context context, String key, T value) {
        return setValue(context, default_file, key, value);
    }

    public static <T> boolean setValue(Context context, String spName, String key, T value) {

        SharedPreferences sp = context.getSharedPreferences(spName, Context.MODE_PRIVATE);
        final SharedPreferences.Editor editor = sp.edit();

        boolean putSuccess = true;
        if (value instanceof String) {
            editor.putString(key, (String) value);
        } else if (value instanceof Integer) {
            editor.putInt(key, (Integer) value);
        } else if (value instanceof Float) {
            editor.putFloat(key, (Float) value);
        } else if (value instanceof Long) {
            editor.putLong(key, (Long) value);
        } else if (value instanceof Boolean) {
            editor.putBoolean(key, (Boolean) value);
        } else if (value instanceof Set) {
            //noinspection unchecked
            editor.putStringSet(key, (Set<String>) value);
        } else {
            putSuccess = false;
        }
        if (putSuccess) {
            editor.commit();
        }
        return putSuccess;
    }

    public static void saveInfo(Context context, String key, List<Map<String, String>> datas) {
        JSONArray mJsonArray = new JSONArray();
        for (int i = 0; i < datas.size(); i++) {

            Map<String, String> itemMap = datas.get(i);
            Iterator<Map.Entry<String, String>> iterator = itemMap.entrySet().iterator();

            JSONObject object = new JSONObject();

            while (iterator.hasNext()) {
                Map.Entry<String, String> entry = iterator.next();
                try {
                    object.put(entry.getKey(), entry.getValue());
                } catch (JSONException e) {

                }
            }
            mJsonArray.put(object);
        }

        SharedPreferences sp = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putString(key, mJsonArray.toString());
        editor.commit();
    }

    public static List<Map<String, String>> getInfo(Context context, String key) {
        List<Map<String, String>> datas = new ArrayList<Map<String, String>>();
        SharedPreferences sp = context.getSharedPreferences(default_file, Context.MODE_PRIVATE);
        String result = sp.getString(key, "");
        try {
            JSONArray array = new JSONArray(result);
            for (int i = 0; i < array.length(); i++) {
                JSONObject itemObject = array.getJSONObject(i);
                Map<String, String> itemMap = new HashMap<String, String>();
                JSONArray names = itemObject.names();
                if (names != null) {
                    for (int j = 0; j < names.length(); j++) {
                        String name = names.getString(j);
                        String value = itemObject.getString(name);
                        itemMap.put(name, value);
                    }
                }
                datas.add(itemMap);
            }
        } catch (JSONException e) {

        }

        return datas;
    }

}
