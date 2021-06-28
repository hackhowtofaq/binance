require 'faraday_middleware'

module Binance
  module Client
    class REST
      def public_client(adapter, base_url)
        Faraday.new(url: base_url) do |conn|
          conn.request :json
          conn.response :json, content_type: /\bjson$/
          conn.adapter adapter
        end
      end

      def verified_client(api_key, adapter, base_url)
        Faraday.new(url: base_url) do |conn|
          conn.response :json, content_type: /\bjson$/
          conn.headers['X-MBX-APIKEY'] = api_key
          conn.adapter adapter
        end
      end

      def signed_client(api_key, secret_key, adapter, base_url)

        Faraday.new(url: base_url) do |conn|
          conn.request :json
          conn.response :json, content_type: /\bjson$/
          conn.headers['X-MBX-APIKEY'] = api_key
          conn.use TimestampRequestMiddleware
          conn.use SignRequestMiddleware, secret_key
          conn.adapter adapter
        end
      end

      def public_withdraw_client(adapter, base_url)
        Faraday.new(url: "#{base_url}/wapi") do |conn|
          conn.request :json
          conn.response :json, content_type: /\bjson$/
          conn.adapter adapter
        end
      end

      def withdraw_client(api_key, secret_key, adapter, base_url)
        Faraday.new(url: "#{base_url}/wapi") do |conn|
          conn.request :url_encoded
          conn.response :json, content_type: /\bjson$/
          conn.headers['X-MBX-APIKEY'] = api_key
          conn.use TimestampRequestMiddleware
          conn.use SignRequestMiddleware, secret_key
          conn.adapter adapter
        end
      end
    end
  end
end
