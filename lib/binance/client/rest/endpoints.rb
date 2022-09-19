module Binance
  module Client
    class REST
      ENDPOINTS = {
        # Public API Endpoints
        ping:                            'v3/ping',
        time:                            'v3/time',
        exchange_info:                   'v3/exchangeInfo',
        depth:                           'v3/depth',
        trades:                          'v3/trades',
        historical_trades:               'v3/historicalTrades',
        agg_trades:                      'v3/aggTrades',
        klines:                          'v3/klines',
        twenty_four_hour:                'v3/ticker/24hr',
        price:                           'v3/ticker/price',
        book_ticker:                     'v3/ticker/bookTicker',

        # Account API Endpoints
        order:                           'v3/order',
        oco_order:                       'v3/order/oco',
        test_order:                      'v3/order/test',
        open_orders:                     'v3/openOrders',
        all_orders:                      'v3/allOrders',
        account:                         'v3/account',
        my_trades:                       'v3/myTrades',
        user_data_stream:                'v3/userDataStream',

        # Withdraw API Endpoints
        withdraw:                        'v3/withdraw.html',
        deposit_history:                 'v3/depositHistory.html',
        withdraw_history:                'v3/withdrawHistory.html',
        deposit_address:                 'v3/depositAddress.html',
        account_status:                  'v3/accountStatus.html',
        system_status:                   'v3/systemStatus.html',
        withdraw_fee:                    'v3/withdrawFee.html',
        dust_log:                        'v3/userAssetDribbletLog.html',

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

        fapiListenKey:                   'fapi/v1/listenKey' # POST


      }.freeze
    end
  end
end
