[![Build Status][travis-badge]][travis-link]

# fish-pf
provide functions to specify the running platform on fish shell.

## Install
With [fisherman](https://github.com/fisherman/fisherman)
```
fisher nana4gonta/fish-pf
```

## Usage
Use this with if statement.
```
if pf is-darwin
    # write config for Dawwin (macOS)
end

if pf is-linux
    # write config for Linux
end
```


[travis-link]: https://travis-ci.org/nana4gonta/fish-pf
[travis-badge]: https://img.shields.io/travis/nana4gonta/fish-pf.svg
[fisherman]: https://github.com/fisherman/fisherman
