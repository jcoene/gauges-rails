module Gauges
  module Rails
    module Helper
      def gauges_tracking_code(options={})
        options[:site_id] = ::Rails.application.config.gauges.site_id unless options.key?(:site_id)
        if options[:site_id].nil?
          raise "Please set a Gaug.es site ID in your application configuration or as an argument to gauges_tracking_code, example: gauges_tracking_code(:site_id => '12345')"
        else
          "<script type=\"text/javascript\"> var _gauges = _gauges || []; (function() { var t = document.createElement('script'); t.type  = 'text/javascript'; t.async = true; t.id = 'gauges-tracker'; t.setAttribute('data-site-id', '#{options[:site_id]}'); t.src = '//secure.gaug.es/track.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(t, s); })(); </script>".html_safe
        end
      end
    end
  end
end

