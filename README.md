= TextMate bundle for Engine Yard Cloud deployment


== Installation

Dependencies:

    gem install engineyard

To install via Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/engineyard/engineyard.tmbundle.git "Engine Yard.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

Source can be viewed or forked via GitHub: [http://github.com/engineyard/engineyard.tmbundle](http://github.com/engineyard/engine-yard.tmbundle)


== Contributions

All rake tasks, Gemfile, "code" and tests are within the Support folder. To get started:

    gem install bundler -v 0.9.26
    bundle install
    rake

If you need to add/remove/change development gem dependencies, modify the Gemfile and then:

    bundle unlock && bundle install && bundle lock

== Packaging and Deployment

You can regenerate the DMG for the project:

    rake clean_build dmg

The DMG is stored in `appcast/Engine Yard.tmbundle`

    open appcast/Engine\ Yard.tmbundle

License
=======

(The MIT License)

Copyright (c) 2010 Engine Yard Inc.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.