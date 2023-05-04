# Omniauth-Rwgps

This is a Omniauth Rubygem for authenticating users with RideWithGPS.

## Installation

Add to your Gemfile:

```
gem "omniauth-rwgps"
```

Run `bundle install` afterwards.


To ``config/initializers/omniauth.rb`` add:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :rwgps, Rails.application.secrets.rwgps_client_id, Rails.application.secrets.rwgps_api_key, scope: 'public'
end
```

It seems that the only value for `scope` right now is `user`.

Please refer to the [Omniauth documentation](https://github.com/intridea/omniauth) on how to use Omniauth.
