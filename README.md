# Prawn Continued

> This is the community continued version of prawn for Ruby 3.1+. The [original `prawn`](https://github.com/prawnpdf/prawn) maintainers stopped releasing new fixes to prawn which are required for it to function with Ruby 3.1+. Unfortunately those maintainer(s) of the previous repo were unable to allow for new ones to take over the gems release process which [they claim is very time consuming](https://github.com/prawn-community/prawn_continued/issues/1195). We take a streamlined approach in this gem by combining all dependencies into one single repo (and gem). To continue supporting `prawn` going forward we continue the work here.

<a href="https://badge.fury.io/rb/prawn_continued" target="_blank"><img height="21" style='border:0px;height:21px;' border='0' src="https://badge.fury.io/rb/prawn_continued.svg" alt="Gem Version"></a>
<a href='https://github.com/prawn-community/prawn_continued/actions' target='_blank'><img src="https://github.com/prawn-community/prawn_continued/workflows/Tests/badge.svg" style="max-width:100%;" height='21' style='border:0px;height:21px;' border='0' alt="CI Status"></a>
<a href='https://rubygems.org/gems/prawn_continued' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://img.shields.io/gem/dt/prawn_continued?color=brightgreen&label=Rubygems%20Downloads' border='0' alt='RubyGems Downloads' /></a>

Prawn is a pure Ruby PDF generation library that provides a lot of great
functionality while trying to remain simple and reasonably performant. Here are
some of the important features we provide:

* Vector drawing support, including lines, polygons, curves, ellipses, etc.
* Extensive text rendering support, including flowing text and limited inline
  formatting options.
* Support for both PDF builtin fonts as well as embedded TrueType fonts
* A variety of low level tools for basic layout needs, including a simple grid
  system
* PNG and JPG image embedding, with flexible scaling options
* Security features including encryption and password protection
* Tools for rendering repeatable content (i.e headers, footers, and page
  numbers)
* Comprehensive internationalization features, including full support for UTF-8
  based fonts, right-to-left text rendering, fallback font support, and extension
  points for customizable text wrapping.
* Support for PDF outlines for document navigation
* Low level PDF features, allowing users to create custom extensions by dropping
  down all the way to the PDF object tree layer. (Mostly useful to those with
  knowledge of the PDF specification)
* Lots of other stuff!

## Should You Use Prawn?

If you are looking for a highly flexible PDF document generation system, Prawn
might be the tool for you. It is not a reporting tool or a publishing toolchain,
though it could be fairly easily used to build those things.

One thing Prawn is not, and will never be, is an HTML to PDF generator. For
those needs, consider looking into FlyingSaucer via JRuby, or one of the WebKit
based tools, like Wicked or PDFKit. We do have basic support for inline styling
but it is limited to a very small subset of functionality and is not suitable
for rendering rich HTML documents.

## Install

```
# Gemfile

gem 'prawn_continued'
```

## Hello World!

If the following code runs and produces a working PDF file, you've successfully
installed Prawn.

```ruby
require "prawn"

Prawn::Document.generate("hello.pdf") do
  text "Hello World!"
end
```

Of course, you'll probably want to do more interesting things than that...

## Manual

Felipe Doria provided us with a beautiful system for generating a user manual
from our examples. This can be generated from the prawn source or you can
download a pre-generated snapshot of it at http://prawn-community.org/manual.pdf

Note that while we will try to keep the downloadable manual up to date, that
it's provided as a convenience only and you should generate the manual yourself
if you want to be sure the code in it actually runs and works as expected. To
build the manual, here's what you need to do:

1. Clone the repository
2. Switch to the stable branch (optional, stay on master for development
   version)
3. Run `gem install -g`
4. Run `rake manual`, which will generate _manual.pdf_ in the project root

## Contributing

If you've found a bug or want to submit a patch, please enter a ticket into our
[GitHub tracker](http://github.com/prawn-community/prawn_continued/issues).

We strongly encourage bug reports to come with failing tests or at least a
reduced example that demonstrates the problem. Similarly, patches should include
tests, API documentation, and an update to the manual where relevant. Feel free
to send a pull request early though, if you just want some feedback or a code
review before preparing your code to be merged.

If you are unsure about whether or not you've found a bug, or want to check to
see whether we'd be interested in the feature you want to add before you start
working on it, feel free to post to our mailing list.

You can run our test suite in a few different ways:

1. Running `rake` will run the entire test suite excluding any unresolved issues
2. Running `rspec` will run the entire test suite including unresolved issues
3. Running `rspec -t unresolved` will run *only* unresolved issues
4. Running `rspec -t issue:NUMBER` will run the tests for a specific issue

## History

Prawn was originally developed by [Gregory
Brown](http://twitter.com/practicingruby), under the auspices of the Ruby
Mendicant Project, a grassroots initiative in which the Ruby community
collectively provided funding so that Gregory could take several months off from
work to focus on this project.

Over the last several years, we've received code contributions from dozens of
people, which is amazing considering the low-level nature of this project. You
can find the full list of folks who have at least one patch accepted to Prawn on
GitHub [Contributors](https://github.com/prawn-community/prawn_continued/contributors) page.

After a long period of inactivity, Prawn reached its 1.0 milestone in 2014
thanks to some modest funding provided to Gregory by Madriska, Inc. (Brad
Ediger's company).

In 2023, there was need in the community to get bugfixes and basic updates released to the general community as the original repo had stopped making releases. This is why `prawn_continued` was born. We want to enable the community to collectively work together on the maintenance story for this library with people who desire to keep the project in good health and running with latest Ruby versions.
