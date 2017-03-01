### M-MVP-AndroidStudio
### a mvp templates in Android studio

#### 1.use data binding to bind view.

#### 2.use rxjava and retrofit2 and okhttp to deal with connection.

### M-MVP Achitecture:
Here's the hierarchy it follows:

com.company.app</br>
    |&emsp;&emsp;+-- base</br>
    |&emsp;&emsp;&emsp;&emsp;       |	- BaseActivity</br>
    |&emsp;&emsp;&emsp;&emsp;	    |	- BaseAdapter</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- BaseFragment</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- BasePresenter</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- BaseView</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- BindingViewHolder</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- DataBindingActivity</br>
    |&emsp;&emsp;&emsp;&emsp;   	|	- DataBindingFragment</br>
    |&emsp;&emsp;+-- data</br>
    |&emsp;&emsp;&emsp;&emsp;    |	+ model</br>
	|&emsp;&emsp;&emsp;&emsp;    |	+ request</br>
	|&emsp;&emsp;&emsp;&emsp;    |  + response</br>
    |&emsp;&emsp;+-- receiver</br>
	|&emsp;&emsp;+-- service</br>
	|&emsp;&emsp;+-- ui</br>
    |&emsp;&emsp;&emsp;&emsp;	|	+common</br>
	|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;	    |	+adapter</br>
    |&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;	    |   +view</br>
	|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;    	|	+contract</br>
	|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;    	|	+presenter</br>
	|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;    	|   	+...</br>
	|&emsp;&emsp;+-- utils</br>
	|&emsp;&emsp;+-- widget</br>
	|&emsp;&emsp;| - YourApplication</br>


#### Installation

#### Clone this repository to the following directory depending on your machine:  
##### copy MVVM-MVP-Activity, MVVM-MVP-Fragment, MVVM-MVP-Init three folders to:
#### MacOS
##### /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities/

#### Windows
##### C:/Users/<<username>>/AppData/Local/Android/android-studio/plugins/android/lib/templates/activities/

#### Restart Android Studio
##### New a android project and select M-MVP-Init, that it will auto initialize this project with M-MVP Achitecture.
##### Enjoy it.
