# Gauges-rails

Easily (and neatly) add Gaug.es to your Rails 3 application!

## Installation

First, add gauges-rails to your Gemfile:

    gem 'gauges-rails'

Next, set your Gaug.es site ID in your config/application.rb file:

    # Set our Gaug.es site id
    config.gauges.site_id = 'YOUR_SITE_ID_HERE'

You can obtain the site ID from your Gaug.es dashboard. It looks like an MD5 hash.

Finally, we need to include the tracking code in one of our views. You can do this in your layout file (typically app/views/layouts/application.html.erb), or on a per-page basis (such as in app/views/dingdongs/index.html.erb). Insert the code as follows:

    <%= gauges_tracking_code %>

Gauges-rails should work fine with any view template engine. For instancing, HAML users will want to use:

    = gauges_tracking_code

## Customization

### Using more than one site id

You can pass a hash of arguments to the gauges_tracking_code helper method. To specify a custom site id on certain pages, use something like the following:

    <%= gauges_tracking_code :site_id => 'MY_CUSTOM_SITE_ID_HERE'

That's all for now, folks!