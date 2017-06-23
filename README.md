# OmniAuth 

This gem is an OmniAuth 1.0 strategy for Livedoor Services.

## Usage

Add the strategy to your `Gemfile`:

```ruby
gem 'omniauth-livedoor', :git => https://github.com/llaarrll/omniauth-livedoor.git
```

Add to your middle ware:

```ruby
use OmniAuth::Builder do
  provider :livedoor
end
```

And if Rails, you'll want to add it to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :livedoor
end
```

This strategy only provides a user's Livedoor ID (livedoor_id) upon successful authentication.


## Example Usage

```ruby

def livedoor_callback
    user = User.create_with_omniauth(auth_hash['uid'], :provider => :livedoor)
    #... 
end

```

## Reference
[http://auth.livedoor.com/](http://auth.livedoor.com/)

##  License

Copyright (c) 2012 Mitchell A. Carroll

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.