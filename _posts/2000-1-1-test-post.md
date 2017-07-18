---
layout: blog_post
title:  "Weblog Test"
date: '2000-1-1'

tags:
    - Category Test

categories:
    - Tag Test

cover: /assets/img/post/test-post/cover.jpg

author: Sadra
---

An h1 header
============

## Paragraphs are separated by a blank line.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.



2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists
look like:

  * this one
  * that one
  * the other one

Note that --- not considering the asterisk --- the actual text
content starts at 4-columns in.

> Block quotes are
> written like so.
>
> They can span multiple paragraphs,
> if you like.

Use 3 dashes for an em-dash. Use 2 dashes for ranges (ex., "it's all
in chapters 12--14"). Three dots ... will be converted to an ellipsis.
Unicode is supported. ☺



An h2 header
------------

Here's a numbered list:

 1. first item
 2. second item
 3. third item

Note again how the actual text starts at 4 columns in (4 characters
from the left side). Here's a code sample:

    # Let me re-iterate ...
    for i in 1 .. 10 { do-something(i) }

As you probably guessed, indented 4 spaces. By the way, instead of
indenting the block, you can use delimited blocks, if you like:

```
define foobar() {
    print "Welcome to flavor country!";
}
```

(which makes copying & pasting easier). You can optionally mark the
delimited block for Pandoc to syntax highlight it:

```python
import time
# Quick, count to ten!
for i in range(10):
    # (but not *too* quick)
    time.sleep(0.5)
    print i
```



### An h3 header ###

Now a nested list:

 1. First, get these ingredients:

      * carrots
      * celery
      * lentils

 2. Boil some water.

 3. Dump everything in the pot and follow
    this algorithm:

        find wooden spoon
        uncover pot
        stir
        cover pot
        balance wooden spoon precariously on pot handle
        wait 10 minutes
        goto first step (or shut off burner when done)

    Do not bump wooden spoon or it will fall.

Notice again how text always lines up on 4-space indents (including
that last line which continues item 3 above).

Here's a link to [a website](http://foo.bar), to a [local
doc](local-doc.html), and to a [section heading in the current
doc](#an-h2-header). Here's a footnote [^1].

[^1]: Footnote text goes here.

Tables can look like this:

size  material      color
----  ------------  ------------
9     leather       brown
10    hemp canvas   natural
11    glass         transparent

Table: Shoes, their sizes, and what they're made of

(The above is the caption for the table.) Pandoc also supports
multi-line tables:

--------  -----------------------
keyword   text
--------  -----------------------
red       Sunsets, apples, and
          other red or reddish
          things.

green     Leaves, grass, frogs
          and other things it's
          not easy being.
--------  -----------------------

A horizontal rule follows.

***

Here's a definition list:

apples
  : Good for making applesauce.
oranges
  : Citrus!
tomatoes
  : There's no "e" in tomatoe.

Again, text is indented 4 spaces. (Put a blank line between each
term/definition pair to spread things out more.)

Here's a "line block":

| Line one
|   Line too
| Line tree

Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$

And note that you can backslash-escape any punctuation characters
which you wish to be displayed literally, ex.: \`foo\`, \*bar\*, etc.



## Tables

{% table dir-rtl pos-right %}

| ستون اول | ستون دوم |
| ------ | ----------- |
| متن ستون اول  | متن ستون دوم |
| متن دوم ستون اول | متن دوم ستون دوم |
| متن سوم ستون اول | متن سوم ستون سوم |

{% endtable %}


{% table dir-ltr pos-center %}

| Option | Description |
| :------: | :-----------: |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |

{% endtable %}



{% table dir-ltr pos-left %}

| Option | Description |
| :------: | :-----------: |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |

{% endtable %}


{% table dir-ltr pos-left %}

| Control | Requierement | Info |
| :------------- |:-------------:| :-----|
| getSelectedItem() | - | result = `String`: returns the selected item |
| isSelected() | - | result = `boolean`: returns **true** if any item selected, and vice versa |
| setSelection(NUMBER) | `int` position | you should pass the **position of item** to select the item programatically |
| setSelection(TEXT) | `String` value | you should pass the **item value** to select the item programatically |

{% endtable %}

# Badges

[![](https://jitpack.io/v/amlashi-sadra/AwesomeSpinner.svg)](https://jitpack.io/#amlashi-sadra/AwesomeSpinner)
[![License](https://img.shields.io/badge/licence-MIT-lightgrey.svg?style=flat)](https://github.com/amlashi-sadra/AwesomeSpinner/blob/master/LICENSE)
[![Dependencies](https://img.shields.io/badge/dependencies-non-yellow.svg?style=flat)](#)
[![Gitter](https://img.shields.io/badge/gitter-join%20chat-%23E91E63.svg?style=flat)](https://gitter.im/AwesomeSpinner)
[![Minimum Android SDK Version](https://img.shields.io/badge/Minimum%20Android%20SDK-14-blue.svg)](#)

# Block Code

```javascript
alert("Hello World")
```


```groovy
allprojects {
	repositories {
		...
		maven { url 'https://jitpack.io' }
	}
}
```

```xml
<com.isapanah.awesomespinner.AwesomeSpinner
    android:id="@+id/my_spinner"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:spinnerDirection="ltr"
    app:spinnerHint="Select a category" />
```

```java
List<String> categories = new ArrayList<String>();
categories.add("Automobile");
categories.add("Ariplane");

ArrayAdapter<String> categoriesAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, categories);

my_spinner.setAdapter(categoriesAdapter);
```

# PIC

![Test Image](/assets/img/post/test-post/post-image.jpg)

{% include func/image.html
            img="/assets/img/post/test-post/post-image.jpg"
            title="Test Image"
            caption="Test Image Caption"
            url="/assets/img/post/test-post/post-image.jpg" %}

# YOUTUBE TEST

{% youtube xIBiJ_SzJTA %}

# Aparat Test

{% aparat DY8HB %}
