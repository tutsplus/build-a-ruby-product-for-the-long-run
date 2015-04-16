# Dainty

Dainty is an API for storing bookmarks. It's part of the [Build a Ruby Product
for the Long
Run](https://code.tutsplus.com/courses/build-a-ruby-product-for-the-long-run/)
course.

## Methods

### List bookmarks

    GET /bookmarks

### Create bookmark

    POST /bookmarks

#### Parameters

This method takes a `bookmark` hash with the following attributes:

- `title` - The bookmark's title (**required**);
- `url` - The bookmark's URL (**required**).
