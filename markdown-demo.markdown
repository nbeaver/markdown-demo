<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- Use HTML style comments and tags. Not stricly markdown, but the parser doesn't care. -->
<html>
<head>
<title>Markdown Demo</title>
<!-- You can also use CSS to customize the markdown headers. -->
<!-- This squeezes the headers so they take up less space and are easier to print. -->
<!-- You can uncomment it to see the effect. -->
<!--
<style type="text/css">
h1,h2,h3,h4,h5,p.inline { display: inline; }
h1,h2,h3,h4,h5,p.short { line-height: 0%; }
</style>
-->
</head> 

# <center>A Markdown Demo</center> #

Nathaniel Beaver, August 6th, 2013.

The markdown source for this document is [here](markdown-demo.markdown).

# Table of Contents #
[Links](#Links)  
[Lists](#Lists)  
[Code blocks](#Code blocks)  
[Fonts](#Fonts)  
[Reserved characters](#Reserved characters)  
[Tables](#Tables)  
[Source code for the standard markdown to HTML generator](#Source code)  

Unlike, e.g., LaTeX, Markdown doesn't automatically make a table of contents.
But you can totally make one manually using standard HTML anchor links.
See here for more: 

<http://stackoverflow.com/questions/5319754/cross-reference-named-anchor-in-markdown>

<http://blog.justin.kelly.org.au/anchor-links-in-markdown/>

<a id="Links"></a>
# Links #

## Web links ##
Just surround normal URIs with `<` and `>` to get automatic links,
such as this one to the Markdown spec: <http://daringfireball.net/projects/markdown/syntax#autolink>

If the URI is horrendously long,
it's better to use [manual Markdown links](http://daringfireball.net/projects/markdown/syntax#link).
## Email links ##
Similarly, use `<mailto:somebody@somewhere.com>` to get email links. <mailto:somebody@somewhere.com>
## Local links ##
You can also get local links to files or directories.
The paths can be relative or absolute,
although `~` does not work for home directories.

- [Status log](/var/log/syslog)  
- [Temp files directory](/tmp/)  
- [Current directory](./)  
- [Parent directory](../)  
- [Root directory](/)  

<a id="Lists"></a>
# Lists #
It's easy to forget to leave a space in front of a list.
You must do this, since a [list is a block element in Markdown](http://daringfireball.net/projects/markdown/syntax#block).

Do this:

* First!
* Second!
* Third!

Not this:
* First!
* Second!
* Third!

or this:  
* That line above totally had two spaces.
* It's a little anticlimactic since they're invisible.
* This puts a linebreak but does not produce the list we want.

You can do multi-paragraph lists, you just need to remember to indent.

From the Markdown docs:

1.  This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

    Vestibulum enim wisi, viverra nec, fringilla in, laoreet
    vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
    sit amet velit.

2.  Suspendisse id sem consectetuer libero luctus adipiscing.

If you don't indent, you get this:

1.  This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

Vestibulum enim wisi, viverra nec, fringilla in, laoreet
vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
sit amet velit.

2.  Suspendisse id sem consectetuer libero luctus adipiscing.

Also, this is a valid numbered list:

    42. Life, the Universe, and Everything.
    3. 1415926
    2. 71828

42. Life, the Universe, and Everything.
3. 1415926
2. 71828

But it makes me nutty looking at it, so I like to use `0` for everything.

     0. Life, the Universe, and Everything.
     0. 1415926
     0. 71828

0. Life, the Universe, and Everything.
0. 1415926
0. 71828

<a id="Code blocks"></a>
# Code blocks #
Remember to leave a line in front of a code block, or it will not work.

Like this:

    print "Hello, world!"

Not this:
    print "Hello, world!"


<a id="Fonts"></a>
# Fonts #
Markdown doesn't have fonts, per se,
but it does have [emphasis](http://daringfireball.net/projects/markdown/syntax#em).
**Wow!!!** That was _amazing!_

<a id="Reserved characters"></a>
# Reserved characters #

[(Not like this.)](http://tvtropes.org/pmwiki/pmwiki.php/Main/TheStoic)

Markdown thinks these characters are special
and will try to turn them into HTML unless you backslashify them,
put them in backticks, or indent four spaces to get a code block.

    \ 
    ` 
    * 
    _ 
    {}
    []
    ()
    # 
    + 
    - 
    . 
    ! 

You may have noticed that curly braces `{` and `}` do not serve any function in basic markdown.
[You aren't the only one.](http://meta.stackoverflow.com/questions/29063/why-is-a-special-character-in-markdown)

<a id="Tables"></a>
# Tables #
Standard Markdown does not do tables.
The standard docs point out that Markdown is not supposed to be a replacement for HTML,
but to make it easy to "[write for the web](http://daringfireball.net/projects/markdown/syntax#html)".
So if you want tables, make them in HTML.
There are extensions to Markdown that extend it to tables, as well as many other markup languages which accomplish this.

<http://meta.stackoverflow.com/questions/73566/is-there-any-markdown-to-create-tables>

<https://en.wikipedia.org/wiki/Lightweight_markup_language#Comparison_of_language_features>

<a id="Source code"></a>
# Source code for the standard markdown to HTML generator #

* CPAN: <http://search.cpan.org/~bobtfish/Text-Markdown-1.000031/lib/Text/Markdown.pm>
* Github: <https://github.com/bobtfish/text-markdown>
* Latest Debian package: <http://sources.debian.net/src/markdown/1.0.2%7Eb8-2/Markdown.pl>
