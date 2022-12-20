# Introduction

**ANSI_UTF-8** is a **shared** squirrel scripts package that allows you to convert strings between **windows-12xx** and **UTF-8** encodings.  
The conversion time complexity can be represented as *o(n)*.

Example usages when this can be used:
- Reading string from database in **UTF-8** format and displaying it in the game (converstion from **UTF-8** to **ANSI**)
- Writing string from script save in **ANSI** encoding to the database that stores text as **UTF-8**
- Displaying proper discord status from script saved with **ANSI** encoding.

It's worth mentioning out that this script isn't mandatory to achieve some of those examples that i've mentioned.  
If someone wants to display proper discord status (discord API expects utf-8 strings) via squirrel script, then we could separate those status messages to separate squirrel script and save it with **UTF-8** encoding.  
Similarly it's possible to read/write text in **ANSI** format (windows-12xx code pages) to/from database.

This project was created purely to play with this concept, so if you really want to use it, make sure that the conversion is the proper solution for your needs. Those scripts takes time to complete, and there are multiple ways to solve the problems of text conversions as mentioned above.  
If possible, cache the strings that will be used often after conversion to minimize performance loss.

## Contributing

Any merge request is welcome.  
I encourage anyone that want to extend this script to create the script conversion routines for their prefereable windows encoding page.  
To create map conversions i've used [this wikipedia article](https://en.wikipedia.org/wiki/Windows-1250) and a software called **HxD**.  
Then, i've created a new dummy text file and pasted only one character to it and displayed it's contents in **HxD** software and then i've simply copy the bytes to my conversion map.  
The character index was taken from wikipedia article, hope those information helps someone.

## Script(s) naming convention

- utf8_to_windows12xx.nut
    
    This script provides the function to convert from **UTF-8** to **ANSI** string format.

- windows12xx_to_utf8.nut

    This script provides the function to convert from **ANSI** to **UTF-8** string format.


## How to install?

1.Clone or download the repository source code  
2.Extract the code whenether you like in your g2o_server directory  
3.Add this line to your XML loading section  

**NOTE** That you have to edit the example paths to match with your script location.  
**NOTE** That you may want to include the script(s) only for one specific side.

```xml
<script src="path/to/script/utf8_to_windows1250.nut" side="shared" />
<script src="path/to/script/windows1250_to_utf8.nut" side="shared" />
```

## Usage example

### Using script saved in ANSI encoding to display discord status with polish characters

```js
// client-side script saved with windows1250 encoding
addEventHandler("onInit", function()
{
    Discord.activity.state = windows1250_to_utf8("zażółć gęślą jaźń\nZAŻÓŁĆ GĘŚLĄ JAŹŃ")
    Discord.activity.update()
})
```
