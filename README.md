# deobald.ca

My personal home page on the world wide web.

# Development

## Debian / Ubuntu:

```
sudo apt install hugo
rbenv install 3.2.3     # or whatever version
rbenv local   3.2.3     # or whatever version
gem install asciidoctor
gem install asciidoctor-html5s
```

## Submodules:

`hyde-hyde` is a submodule. Submodules are the worst:

```
git submodule init
git submodule sync
git submodule update
# if anything is broken, try upgrading to the latest:
git submodule update --rebase --remote
```

If you don't do this, you will see:

`WARN 2024/08/13 21:27:52 found no layout file for "HTML" for kind "home": ...`

Relevant files:

```
src/config.toml                         # global config
src/content/essays                      # essays section
src/layouts/partials/header/custom.html # hook to custom CSS
src/static/css/deobald.css              # custom CSS
src/static/img                          # content images go here
```

The current theme is `hyde-hyde` and the location of the hook for custom CSS may change if the theme is switched. At the time of this writing, custom CSS is only used to center images so hopefully switching the hook isn't difficult.

These are handy:

- https://github.com/htr3n/hyde-hyde
- https://github.com/htr3n/hyde-hyde/blob/master/exampleSite/config.toml

Images in posts should be restricted to a width of 480px. Images in `image-table` shortcodes should be both the same width and the same height.

# TODO

- [x] google analytics?
- [x] timer should default to max value, not 00:00 (suggest kitchen/phone timer for paper or non-js)
- [x] run fix-formatting.sh on all medium.com imports
- [ ] link medium.com back to deobald.ca on each essay
- [ ] link blogger back to deobald.ca on each essay
- [ ] categorize and tag all posts

## The Problem with LLMs

### The practical problem

* production code is harder (vs. Vijay's article)
* Atharva's article

### The polarization problem

* "I hate AI" vs. "this is a paradigm shift"

### The ethical problem

* Srihari's link, model licensing, confusing the problem
* copyright
* jaywalking in new york; municipal laws will change eventually
* "if you wouldn't torrent a movie..."
* Sila, adinnadana, sender, Vijay 
* "this harms many people at once, in tiny increments, and I'm okay with that"
