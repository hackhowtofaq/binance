module Binance
  module Client
    class REST
      ENDPOINTS = {
        # Public API Endpoints
        ping:                            'api/v3/ping',
        time:                            'api/v3/time',
        exchange_info:                   'api/v3/exchangeInfo',
        depth:                           'api/v3/depth',
        trades:                          'api/v3/trades',
        historical_trades:               'api/v3/historicalTrades',
        agg_trades:                      'api/v3/aggTrades',
        klines:                          'api/v3/klines',
        twenty_four_hour:                'api/v3/ticker/24hr',
        price:                           'api/v3/ticker/price',
        book_ticker:                     'api/v3/ticker/bookTicker',

        # Account API Endpoints
        order:                           'api/v3/order',
        oco_order:                       'api/v3/order/oco',
        test_order:                      'api/v3/order/test',
        open_orders:                     'api/v3/openOrders',
        all_orders:                      'api/v3/allOrders',
        account:                         'api/v3/account',
        my_trades:                       'api/v3/myTrades',
        user_data_stream:                'api/v3/userDataStream',

        # Withdraw API Endpoints
        withdraw:                        'api/v3/withdraw.html',
        deposit_history:                 'api/v3/depositHistory.html',
        withdraw_history:                'api/v3/withdrawHistory.html',
        deposit_address:                 'api/v3/depositAddress.html',
        account_status:                  'api/v3/accountStatus.html',
        system_status:                   'api/v3/systemStatus.html',
        withdraw_fee:                    'api/v3/withdrawFee.html',
        dust_log:                        'api/v3/userAssetDribbletLog.html',

        # Futures API
        fapiExchangeInfo:                'fapi/v1/exchangeInfo',
        fapiOpenInterestHist:            'futures/data/openInterestHist',
        fapiTopLongShortPositionRatio:   'futures/data/topLongShortPositionRatio',
        fapiGlobalLongShortAccountRatio: 'futures/data/globalLongShortAccountRatio',

        # Futures Order
        fapiOrder:                       'fapi/v1/order',          # POST
        fapiQueryOrder:                  'fapi/v1/order',          # GET
        fapiCancelOrder:                 'fapi/v1/order',          # DELETE
        fapiCancelAllOpenOrders:         'fapi/v1/allOpenOrders',  # DELETE
        fapiPositionRisk:                'fapi/v2/positionRisk',   # GET
        fapiBalance:                     'fapi/v2/balance',        # GET
        fapiAccount:                     'fapi/v2/account',        # GET
        fapiOpenOrders:                  'fapi/v1/openOrders', # GET
        fapiAllOrders:                   'fapi/v1/allOrders', # GET

        fapiFundingRate:                 'fapi/v1/fundingRate', # GET
        fapiPremiumIndex:                'fapi/v1/premiumIndex', # GET

        fapiLeverage:                    'fapi/v1/leverage',       # POST
        fapiMarginType:                  'fapi/v1/marginType',     # POST
        fapiMarkPriceKlines:             'fapi/v1/markPriceKlines', # GET
        fapiIndexPriceKlines:            'fapi/v1/indexPriceKlines',
        fapiKlines:                      'fapi/v1/klines',
        fapiContinuousKlines:            'fapi/v1/continuousKlines',

        fapiListenKey:                   'fapi/v1/listenKey', # POST
        fapiServerTime:                  'fapi/v1/time' # GET


      }.freeze
    end
  end
end
