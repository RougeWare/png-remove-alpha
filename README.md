# `png-remove-alpha` #

A simple little command-line utility that sets the alpha value of all pixels in a PNG to its max.

It's not elegant, and it's not efficient, but it works.

The PNG must be RGBA where each component is 8 bits (32 bits per pixel).



# Usage #

```txt
png-remove-alpha filepath [filepath...]
```
