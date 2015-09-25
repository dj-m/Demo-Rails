# Introduction to **jQuery**

### What is JQuery?
- javaScript library (most popular)
- open-source
- easy DOM manipulation
- simple methods for reading and interacting with your HTML
- gives us so much CONTROL over our DOM (Document Object Model)

### Perks of jQuery

**jQuery makes this..**

```js
var elements = document.getElementsByTagName("img");

for (var i = 0; i< elements.length; i++) {
  elements[i].style.display = "none";
 }
 ```
### turn into...

```js
$('img').hide();
```


### Why **jQuery?**

- brevity & clarity
- eliminates cross-browser incompatibilities
- easy to navigate the DOM
- fancy animations
- execute AJAX calls with ease

### How do we use jQuery?

In order to have access to all [jQuery](https://jquery.com/) methods, we must do one of the following:
- link to the library in your document head
- download the library and include it in your files

Regardless, 

```ruby
<head>
# link to the libary via the following:
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
# if you've downloaded the files and included them, we still need to link to them like so (depending on where these files are):
<script src="jquery-1.11.3.min.js"></script>
</head>
```

### How do we use jQuery?

More often than not, we'll encapsulate our **jQuery** when the document is ready in an `application.js` file:

```js
$(document).ready(function(){
    **all your jQuery here**
});
```
**Note**: the `$` is simply a function. It is a fancier way to write the function `jQuery` (which is defined within the jQuery library). If we wrap DOM elements in this function, we have access to call all jQuery methods on this object.

### How to select **DOM** elements?

First, we need to wrap elements in jQuery objecst so we can use jQuery methods on these objects. We can select DOM elements via tag names, id's, classes, etc.

FYI - remember - **#** indicates you are selecting an id and **.** indicates you are selecting a class

Here's an example of simply selecting DOM elements using jQuery:
```js
$(‘span’)
$(‘#header-logo’)
$(‘.small-pic’)
```
There are many different ways to select DOM elements. Above are just a few. Check out the jQuery [Selectors](http://api.jquery.com/category/selectors/) documentation for more.

## What can we do with jQuery?

We can get & set values. For example: 
- Inner text/html
- Classes
- CSS properties
- Attributes (like href)
- Values of form inputs

Examples of **getting**

If we wanted to get the text of our first h1...
```js
$(‘h1’).text();
```

If we wanted to get the value of the form input with the name "url"...
```js
$(‘input[name=“url”]’).val();
```

Examples of **setting**:

If we wanted to set the color of any p tag that is the second child of its parent...
```js
$(‘p:nth-child(2)’).css(‘color’, ‘blue’);
```

If we wanted to make every hidden element visible again...
```js
$(‘.hidden’).show();
```

### Another perk of jQuery? **CHAINING METHODS**

```js
$(“div.test”).addClass(“blue”).slideDown(“slow”);
```

**which is.. SO COOL, RIGHT?**


### jQuery's **Event Handlers**

What if you wanted to **bind** an **action** to a specific **click** event? For example, every time I click "submit", I want my new blog post to be **added** to my list.

jQuery makes this nice and easy. We can specify the **element** we want to bind our event to, the **event** we want to trigger it on, and the **function** we want to run when it’s been triggered. Seems a little bit complicated, but if we remember each of these parts, we can attack this in small parts.

For example:

```js
// here, we've specified we want to bind our event to objects on our DOM that are button tags
// then, the "click" method is our event. the action that is taking place is "clicking"
$(‘button’).click(function(event){
  // the last part is our function that we've defined. this function will execute when any button on our page is clicked.
  // within this function, we are changing a specific div's color to red.
  $(‘#div-to-change’).css(‘color’, ‘red’);

});
```
There are many different jQuery [events](http://api.jquery.com/category/events/). These are just a few:

- clicking something
- pressing a key
- submitting a form
- loading a page
- mousing over an element

When it comes to binding events, we must **(be careful)** though...

The events we bind on document ready can **only** be bound to elements that **already exist** on document ready (page load). What does this mean? When we link to our js files, those files are executed **immediately**, unless we tell them otherwise.

So what if we want to bind an event to something that’s **not** on our page yet?

Instead of using the `click` event handler like so:
```js
$(‘button’).click(function(event){

  $(‘#div-to-change’).css(‘color’, ‘red’);

});
```

We can use jQuery's `on` method instead and bind our event to something that is on the page when the document is ready. We then can give the `on` method our specific event and a more specific selector we want it to listen to. In this case, it's the `click` and `button` optional arguments below.

```js
$('.container').on(‘click’, ‘button’, function({

  $(‘#div-to-change’).css(‘color’, ‘red’);

});

```

This will come into play more when we start making numerous AJAX calls and loading data and forms asynchronously. For now, just be aware that we must bind events to elements that are on the page when our javascript is executed.

Feel free to explore more with **jQuery**. It's pretty powerful and can do a lot of stuff.

- JS Fiddle
- jQuery Docs (pretty good)
- jQuery UI
- jQuery Mobile
