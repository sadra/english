---
layout: blog_post
title:  "How to Get UIWebView HTML Content"
date: '2016-6-6'

tags:
    - Programming
    - Swift
    - Swift 2.4
    - WebView

categories:
    - Apple
    - iOS

cover: /assets/img/post/2016-6-6/totrial_get_uiwebview_content.jpg

author: Sadra
---

**Issue: **Sometimes you need to read the content of html that loaded in your__UIWebView__(Like for Payment Method) with this trick that comes in below you can do this action.

First of all, implement your UIViewController from UIWebViewDelegate. Then, add the UIWebView into StoryBoard UIViewController and define the outlets in you project , this is the result:

```swift
class ViewController: UIViewController,  UIWebViewDelegate {

    @IBOutlet weak var myUIWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
```

Now define your WebView as the current__delegate__item, and request for loading url.

```swift
override func viewDidLoad() {
        super.viewDidLoad()

        myUIWebView.delegate = self

        let request = NSMutableURLRequest(URL: NSURL(string: "http://google.com")!)
        request.HTTPMethod = "GET"

        myUIWebView?.loadRequest(request)
}
```

Before the main issue, there is some Variables that may you need them in your projects, getCurrentURL, getCurrentTitle and getCurrentContent of the page that loaded in the UIWebView:

*   **getCurrentURL:** with this method you can return the current URL of page that is loaded in UIWebViews.

```swift
var getCurrentURL: String {
    return mypaymentWV?.request?.URL!.absoluteString ?? ""
}
```

*   **getCurrentTitle:** with this method you can return the current Title of page that is loaded in UIWebViews.

```swift
var getCurrentTitle: String {
    return mypaymentWV?.stringByEvaluatingJavaScriptFromString("document.title") ?? "" //with javaScript tools
}
```

*   **getCurrentContent:** with this method you can return the current Content of page that is loaded in UIWebViews, this is the main propose of this post.

```swift
var getCurrentContent: String {
    return mypaymentWV?.stringByEvaluatingJavaScriptFromString("document.body.innerText") ?? "" //with javaScript tools
}
```


Then, we have 2 tools for UIWebView, the 1st is action when **UIWebView** loading is started and is finished.

We use **webViewDidStartLoad** when we want do some action on start loading, like getting the page url, and using webViewDidFinishLoad when we want getting title and content (BCUZ of javaScript features)

```swift
//getting url function
func webViewDidStartLoad(webView: UIWebView) {

    print("Current URL is: \(getCurrentURL!)") //result: 'Current URL is: http://google.com'

}

//getting title and content function
func webViewDidFinishLoad(webView: UIWebView) {

    print("Current title is: \(getCurrentTitle)") //result: 'Current title is: Google Inc'
    print("Current content is: \(getCurrentContent)") //result: 'Current content is: Search it your F***king Words'

}
```

Maybe you have this question, Why? Why should we get Title and Content after loading finishes!? The answer is here, because we get Title and Content with javaScript methods and because of javaScript features we can just get elements after page has finished loading! Unfortunately, there is no chance for us.