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

    cd Support
    gem install bundler -v 0.9.26
    bundle install
    rake

If you need to add/remove/change development gem dependencies, modify the Gemfile and then:

    bundle unlock && bundle install && bundle lock

== Packaging and Deployment

You can regenerate the DMG for the project:

    rake dmg