---
layout: blog_post
title:  "Customizing navigation bar in ios"
date: '2016-6-29'

tags:
    - Programming
    - Swift
    - Swift 2.4
    - UI

categories:
    - Apple
    - iOS

cover: /assets/img/post/2016-6-29/naivagtionbar_0.jpg

author: Sadra
---

![Test Image](/assets/img/post/test-post/post-image.jpg)


**Issue**

Sometimes you need to customize your Navigation Bar. With this tutorial you can find out how to change Navigation Bar background color, change the Navigation Bar’s title’s font or size (programmatically), how to customize the left and right button of Navigation Bar and etc.

![Customizing Navgiation Bar](/assets/img/post/2016-6-29/naivagtionbar_1.jpg)


First of All create your project and then embed in **Navigation Controller** into you ViewController

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_2.jpg)

Now we have a pure Navigation Controller and our baby ViewController.

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_.3jpg)

**Change Navigation Bar’s background color:**

At first choose the Navigation Controller, then select the **Navigation Bar** , on Attributes Inspector , from Bar Tint choose your favorite color. done! you have you new Navigation Bar background color.

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_4.gif)

**Set Title for Navigation Bar**

Choose you ViewController and select__Navigation Item__, then in Attributes Inspector set you title :

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_5.gif)

Then we want change the title attributes (color, size, font), after choosing Navigation Controller then Navigation Bar, we able to change title attributes from__Attributes Inspector__as you can see in below:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_6.jpg)

Exception: If you use__custom font__in your project, you cannot choose you font from here!

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_7.jpg)

Solution: so, you should change title attributes with Swift in your ViewController Class. For this issue, you should set **NSFontAttributeName** for **titleTextAttributes** that contains Font-Family, Font Size and Font Color in ViewDidLoad of your viewController.

```swift

//Set Attributes for Navigation Title

override func viewDidLoad() {

    super.viewDidLoad()

    self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "IRANSans", size: 16.0)!, NSForegroundColorAttributeName: UIColor.whiteColor()]

}

```

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_8.jpg)

**Add Button to Navigation Bar**

You can add 2 button into you Navigation Bar, one button for left and one button for right. in StoryBoard you can add button as you see below:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_9.gif)

and the result is:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar10_.jpg)

But programmatically you should create a button and define it for left or right of you Navigation Bar:

```swift

//Delcare Left and right Button in viewDidLoad Method

override func viewDidLoad() {

    super.viewDidLoad()

    //Set White color for all items in Navigation Bar

    self.navigationController?.navigationBar.tintColor = UIColor(red: (255/255.0), green: (255/255.0), blue: (255/255.0), alpha: 1.0)

    //Button with Title

    let leftButton = UIBarButtonItem(title: "Back Btn", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ViewController.leftButtonClicked))

    leftButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!, NSForegroundColorAttributeName: UIColor.whiteColor()], forState: UIControlState.Normal) //You can declare specefiec color for each item you want too

    self.navigationItem.leftBarButtonItem = leftButton

    //Button with Image

    let rightButton = UIButton()

    rightButton.setImage(UIImage(named: "cancel"), forState: .Normal)

    rightButton.frame = CGRectMake(0, 0, 30, 30)

    rightButton.addTarget(self, action: #selector(ViewController.rightButtonClicked), forControlEvents: .TouchUpInside)

    self.navigationItem.setRightBarButtonItem(UIBarButtonItem(customView: rightButton), animated: true);

}

//Action when leftButton Clicked

func leftButtonClicked(){

    print("Left Button Clicked") //Print result is: Left Button Clicked

}

//Action when rightButton Clicked

func rightButtonClicked(sende: UIButton){

    print("Right Button Clicked") //Print result is: Right Button Clicked

}

```

And the result is:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_11.jpg)

**Customize Navigation Bar’s BackButton**

Sometimes you need to customize Navigation Bar’s Back Button, like the color of button, or font and size. you should do it programmatically in viewDidLoad Method of First ViewController as you can see following:

```swift

//you should declare backBarButtonItem in viewDidLoad Method

override func viewDidLoad() {

    super.viewDidLoad()

    self.navigationController?.navigationBar.tintColor = UIColor(red: (255/255.0), green: (255/255.0), blue: (255/255.0), alpha: 1.0)

    let backButton = UIBarButtonItem(title: "Back Prev", style: UIBarButtonItemStyle.Plain, target: self, action: nil)

    backButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 14)!], forState: UIControlState.Normal)

    navigationItem.backBarButtonItem = backButton

}

```

The result should be this:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_12.jpg)

**Create Transparent NavigationBar**

Maybe you want use BarButtonItems or backBarButtonItem without Navigation Bar! so, you should create a transparent Navigation Bar first as below:

```swift

//You should set navigation parameters viewDidLoad method

override func viewDidLoad() {

    super.viewDidLoad()

    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)

        self.navigationController?.navigationBar.shadowImage = UIImage()

        self.navigationController?.navigationBar.translucent = true

        self.navigationController?.navigationBar.tintColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)

        let backButton = UIBarButtonItem(title: "Back Prev", style: UIBarButtonItemStyle.Plain, target: self, action: nil)

        backButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 14)!], forState: UIControlState.Normal)

        navigationItem.backBarButtonItem = backButton

    }
}

```

The result is this:

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_13.jpg)

Now, You can customize your Navigation Bar and Navigation Bar Items so easily and there is no limit for you

![Customizing Navgiation Bar]({{ site.url }}/assets/img/post/2016-6-29/naivagtionbar_14.jpg)

