require 'faye/websocket'

module Binance
  module Client
    # Public: Client with methods mirroring the Binance WebSocket API
    class WebSocket
      # Public: String base url for WebSocket client to use
      # BASE_URL      = 'wss://stream.binance.com:9443'.freeze

      def initialize(stream_type: :spot)
        @base_url = if stream_type == :futures
                      'wss://fstream.binance.com'.freeze
                    else
                      'wss://stream.binance.com:9443'.freeze
                    end
      end

      # Public: Create a single WebSocket stream
      #
      # :stream - The Hash used to define the stream
      #   :symbol   - The String symbol to listen to
      #   :type     - The String type of stream to listen to
      #   :level    - The String level to use for the depth stream (optional)
      #   :interval - The String interval to use for the kline stream (optional)
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def single(stream:, methods:)
        create_stream("#{@base_url}/ws/#{stream_url(stream)}",
                      methods: methods)
      end

      def singleFutures(stream:, methods:)
        create_stream("#{@base_url}/ws/#{futuresStreamUrl(stream)}",
                      methods: methods)
      end

      # Public: Create multiple WebSocket streams
      #
      # :streams - The Array of Hashes used to define the stream. Each Hash can
      #            have the following keys:
      #   :symbol   - The String symbol the stream will listen to
      #   :type     - The String type of stream to listen to
      #   :level    - The String level to use for the depth stream (optional)
      #   :interval - The String interval to use for the kline stream (optional)
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def multi(streams:, methods:)
        names = streams.map { |stream| stream_url(stream) }
        create_stream("#{@base_url}/stream?streams=#{names.join('/')}",
                      methods: methods)
      end

      # Public: Create an Aggregate Trade stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def agg_trade(symbol:, methods:)
        single stream: { symbol: symbol, type: 'aggTrade' }, methods: methods
      end

      # Public: Create a Trade stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def trade(symbol:, methods:)
        single stream: { symbol: symbol, type: 'trade' }, methods: methods
      end

      # Public: Create an Kline stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :interval - The String interval the stream will update with. The
      #             intervals that may be used can be found in the Binance API
      #             docs.
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def kline(symbol:, interval:, methods:)
        single stream:  { symbol: symbol, type: 'kline', interval: interval },
               methods: methods
      end

      # Public: Create a Ticker stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def ticker(symbol:, methods:)
        single stream: { symbol: symbol, type: 'ticker' }, methods: methods
      end

      # Public: Create a Ticker stream for all symbols
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def all_market_ticker(methods:)
        single stream: { symbol: '!ticker', type: 'arr' }, methods: methods
      end

      # Public: Create an Partial Book Depth stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :level - The String interval the stream will update with. The intervals
      #          that may be used can be found in the Binance API docs.
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def partial_book_depth(symbol:, level:, methods:)
        single stream:  { symbol: symbol, type: 'depth', level: level },
               methods: methods
      end

      # Public: Create a Diff Depth stream
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def diff_depth(symbol:, methods:)
        single stream: { symbol: symbol, type: 'depth' }, methods: methods
      end

      # Public: Create an Liquidation Order Streams
      #
      # :symbol - The String symbol the stream will listen to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def forceOrder(symbol:, methods:)
        single stream: { symbol: symbol, type: 'forceOrder' }, methods: methods
      end

      # Public: Create a User Data stream
      #
      # listen_key - The String key the stream will listen to, attained by
      #              interacting with the REST API userDataStream endpoint
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def user_data(listen_key:, methods:)
        create_stream "#{@base_url}/ws/#{listen_key}", methods: methods
      end

      private

      # Internal: Create a valid URL for a WebSocket to use
      #
      # :symbol - The String symbol to listen to
      # :type   - The String type the stream will listen to
      # :level    - The String level to use for the depth stream (optional)
      # :interval - The String interval to use for the kline stream (optional)
      def stream_url(stream, level: '', interval: '')
        symbol = stream[:symbol]
        type   = stream[:type]

        "#{symbol.downcase}@#{type}".tap do |url|
          url << level
          url << "_#{interval}" unless interval.empty?
        end
      end

      def futuresStreamUrl(symbol:, type:, level: '', interval: '')
        contract_type = "perpetual"

        "#{symbol.downcase}_#{contract_type}@#{type}".tap do |url|
          url << level
          url << "_#{interval}" unless interval.empty?
        end
      end

      def futuresKline(stream:, interval:)
        symbol = stream[:symbol]
        type   = stream[:type]
        contract_type = "perpetual"

        "#{symbol.downcase}_#{contract_type}@#{type}".tap do |url|
          url << level
          url << "_#{interval}" unless interval.empty?
        end

        create_stream("#{@base_url}/ws/#{futuresStreamUrl(stream)}",
                methods:)
      end

      # Internal: Initialize and return a Faye::WebSocket::Client
      #
      # url - The String url that the WebSocket should try to connect to
      #
      # :methods - The Hash which contains the event handler methods to pass to
      #            the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def create_stream(url, methods:)
        Faye::WebSocket::Client.new(url)
                               .tap { |ws| attach_methods(url, ws, methods) }
      end

      # Internal: Iterate through methods passed and add them to the WebSocket
      #
      # websocket - The Faye::WebSocket::Client to apply methods to
      #
      # methods - The Hash which contains the event handler methods to pass to
      #   the WebSocket client
      #   :open    - The Proc called when a stream is opened (optional)
      #   :message - The Proc called when a stream receives a message
      #   :error   - The Proc called when a stream receives an error (optional)
      #   :close   - The Proc called when a stream is closed (optional)
      def attach_methods(url, ws, methods)
        methods.each_pair do |key, method|
          ws.on(key) { |event|
            method.call(event)


            if event.type == "close"

              endpoint = URI.parse(url)
              puts "!!! ================"
              puts "Reconnect data"
              puts "key:    #{key} #{key.class}"
              puts "method: #{method} #{method.class}"
              puts "event:  #{event} #{event.class}"
              puts "event:  #{event.type} #{event.type.class}"
              puts "#{endpoint.host} #{endpoint.port}"
              # puts "#{ws}"

              puts "!!! ================"
              # Debug
              puts "!!! ================"
              puts "Reconnect test"
              puts "!!! ================"
              puts url
              # puts EventMachine::reconnect(endpoint.host, endpoint.port, self)

              # ws.post_init
            end

          }
        end
      end
    end
  end
end
