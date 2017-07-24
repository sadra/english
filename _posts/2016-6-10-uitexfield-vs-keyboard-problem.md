---
layout: blog_post
title:  "UITexField vs KeyBoard problem"
date: '2016-6-10'

tags:
    - Programming
    - Swift
    - Swift 2.4
    - UI

categories:
    - Apple
    - iOS

cover: /assets/img/post/2016-6-10/uitextfield_vs_keyboard-0.jpg

author: Sadra
---

**Issue**

Many of programmers have problem with using UITExtField. When you focus on UITexfField, keyboard will appear and cover our UITextField. so, we should solve this problem with moving up the UITextField position in the screen when keyboard is opened!

For the first step you should add a **ScrollView** to your__viewController__as below:

![UITextFIeld vs UIKeyBoard 1](/assets/img/post/2016-6-10/uitextfield_vs_keyboard-1.png)

Then we should define the **width** and **height** of scrollview as equal as **rootView** by drag and drop:

![UITextFIeld vs UIKeyBoard 2](/assets/img/post/2016-6-10/uitextfield_vs_keyboard-2.jpg)

Now you can see the necessary constrains are defined:

![UITextFIeld vs UIKeyBoard 3](/assets/img/post/2016-6-10/uitextfield_vs_keyboard-3.png)

For the last step define outlets in your CocoaTouch class:

```swift
// out lets of UIScrollVIew, UIView & UITextField
@IBOutlet weak var myScrollView: UIScrollView!
@IBOutlet weak var myUIViewContainer: UIView!
@IBOutlet weak var myTextView: UITextField!
```

Next. We need two function to define some action when keyboard will appear and will disappear. in **keyboardWillShow** we stay and observe when keyboard is opened, we scroll the scrollview as equals as keyboard height to up:

```swift
//move scroll up when keyboard is open
func keyboardWillShow(notification: NSNotification) {
    if let userInfo = notification.userInfo { //check what is there is new event
        if let keyboardSize =  (userInfo[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() { //get the keyboard properties

            let screenSize: CGRect = UIScreen.mainScreen().bounds
            let screenHalfHeight = screenSize.height * 0.5 //get the half of size of screen

            if(screenHalfHeight < 300 ){

                let movingSize = keyboardSize.size.height - myUIViewContainer.bounds.height //get the scrolling up size, as size as doesn't cover the UITexField
                myScrollView.setContentOffset(CGPointMake(0, movingSize), animated: true) //scrolling up

            }
        }
    }
}
```

This function works this way that first of all check the notification for find out the keyboard is open or not! then get the keyboard properties.

Then we check the size of screen, my you ask why? because we want know if the size of screen is not enough to cover the UITextField and UIViews container then we don’t need to do any actions for that ( like as in iPad or iPhone 6s plus and etc ). notice, you can remove these lines if you don’t need them.

Next, we check how much we should scrolling up? We can find this size when we mines the UIView height from keyboard height.

At the end, ScrollView scrolling up as height as we define.

Next. we should define **keyboardWillHide** for when the keyboard is closed scrolling down to the begging position.

```swift
//function actions when keyboard will be hide
func keyboardWillHide(notification: NSNotification) {
    myScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
}
```

Finally, for the last step, we need observer to determine when there is any new event (like when keyboard will be open). We define it in viewWillAppear overridden function, notice just in **viewWillAppear** we can define observer. You should know we must remove observer in **viewWillDisappear** we don’t need it in the next viewController, and it my caused the crash of application. by the way, these functions define as below:

```swift
// Add observer method
override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
    NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
}

// Remove observer
override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
    NSNotificationCenter.defaultCenter().removeObserver(self)
}
```

Wow, it’s done! let’s check the result :

![UITextFIeld vs UIKeyBoard 4](/assets/img/post/2016-6-10/uitextfield_vs_keyboard-4.gif)