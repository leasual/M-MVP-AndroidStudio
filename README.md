### M-MVP-AndroidStudio
### a mvp templates in Android studio

#### 1.use data binding to bind view.

#### 2.use rxjava and retrofit2 and okhttp to deal with connection.

### M-MVP Achitecture:
Here's the hierarchy it follows:
  com.company.app
	+-- base
    |   - BaseActivity
    |	- BaseAdapter
   	|	- BaseFragment
   	|	- BasePresenter
   	|	- BaseView
   	|	- BindingViewHolder
   	|	- DataBindingActivity
   	|	- DataBindingFragment
    +-- data
    |   + model
    |   + request
    |   - response
    +-- receiver
    +-- service
    +-- ui
    |	+common
    |		+adapter
    |    	+view
    |		+contract
    |		+presenter
    |   +...
    +-- utils
    +-- widget
    | - YourApplication


### Installation

### Clone this repository to the following directory depending on your machine:
### MacOS
#### /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities/

### Windows
#### C:/Users/<<username>>/AppData/Local/Android/android-studio/plugins/android/lib/templates/activities/

### Restart Android Studio
