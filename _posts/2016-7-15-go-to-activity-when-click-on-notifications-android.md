---
layout: blog_post
title:  "Go to activity when click on Notifications"
date: '2016-7-15'

tags:
    - Programming
    - Java
    - Notification

categories:
    - Android

cover: /assets/img/post/2016-7-15/notification-0.png

author: Sadra
---

**Issue: **Sometimes in android you need to run activity when user clicked on notification. with this tutorial you can find out how to do that!

![Go to activity when click on Notifications" 1]({{ site.url }}/assets/img/post/2016-7-15/notification-1.jpg)

First of all you should define a pendingIntent for activity that you want start when user clicked:

```swift
Intent notificationIntent = new Intent(myContext, myDestinitionActivty.class);
PendingIntent pendingIntent = PendingIntent.getActivity(myContext, 0, notificationIntent, 0);
```

Then you should add this pending intent into you notification’s declaration:

```swift
//Notification Manager
NotificationManager notificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
Notification notification = new NotificationCompat.Builder(ctx)
        .setContentTitle("This is a notification")
        .setContentText("This is notification desciption ")
        .setContentIntent(pendingIntent) //set pending intent here
        .setSmallIcon(R.drawable.notify_icon)
        .setTicker("My notification")
        .setWhen(System.currentTimeMillis())
        .build();
notification.flags |= Notification.FLAG_AUTO_CANCEL;
notificationManager.notify(123456789, notification);
```

all things done, now if user clicking on notification, myDestinitionActivty will be open. You can use this feature for every Intent action you want.