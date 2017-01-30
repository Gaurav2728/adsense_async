[![Gem Version](https://badge.fury.io/rb/adsense_async.svg)](https://badge.fury.io/rb/adsense_async)

# AdsenseAsync

It is a helper to create the google adsense async type tag in rails. Instead of using vanilla javascript for managing google adsense, it would be easier and hassle free to use `adsense_async_tag` tag to achieve the same.


## Installation

Add below line to your application's Gemfile:

```ruby
gem 'adsense_async'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adsense_async

## Usage

In your appliction view, use `adsense_async_tag` as mentioned below:

`<%= adsense_async_tag class: "adsbygoogle", style: "display:inline-block", client: 'ca-pub-269126xxxxx', slot: '8490xxxx', format: "auto" %>`

NOTE: If environment is not production, it'll show dummy image with slot `8490xxxx` number.


Out of all the parameters used by the `adsense_async_tag`, below are the mandatory parameters which must be present for proper functioning.
```
  class: "adsbygoogle"
  style: "display:inline-block"
   slot: "890xxxxx"
 client: "ca-pub-26xxxxxxxxxx"
```

It automatically maps required parameter according to google adsence API.
```
  slot: "890xxxxx"                     data-ad-slot:   "890xxxxx"
  client: "ca-pub-26xxxxxxxxxx"        data-ad-client: "ca-pub-26xxxxxxxxxx"
```

If arguments are valid, it shows image with slot: `890xxxxx` number.

<img src="https://dummyimage.com/120x80/000/fff&text=890xxxxx" />



Google can also add/modify arguments according to ads type, you can add and customize that.
```
   class: "adsbygoogle myclass"
   style: "display:inline-block;width:728px;height:90px"
  format: "auto
```

If arguments are not valid, it shows default `120 x 80` size image.

<img src="https://dummyimage.com/120x80/000/fff&text" />


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gaurav2728/adsense_async. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
