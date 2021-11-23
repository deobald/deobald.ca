# deobald.ca

My personal home page on the world wide web.

# Development

`hyde-hyde` is a submodule. Submodules are the worst:

```
git submodule init
git submodule sync
git submodule update
# if anything is broken, try upgrading to the latest:
git submodule update --rebase --remote
```

You will also need to install the `asciidoctor-html5s` extension:

```
yay -S ruby-asciidoctor-html5s
```

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
