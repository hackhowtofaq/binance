## v1.2.3 (2020-05-02)

*  OCO order [View](https://github.com/hackhowtofaq/binance/commit/b480e5dcbff9683ac09627aa8b9b08b2ddd2adeb)


## v1.2.2 (2020-04-30)

*  Update faraday dependency [View](https://github.com/hackhowtofaq/binance/commit/9e68633254b0519b258cda32a63cbb57b2bec88e)
*  Update version.rb [View](https://github.com/hackhowtofaq/binance/commit/17aba6f1c28dc012c9ec6298a4d2e383a114087e)
*  Test reconnect [View](https://github.com/hackhowtofaq/binance/commit/2a038689cf002f259ef577d814d696cf3335063c)


## v1.2.0 (2018-07-09)

*  Add allPrices endpoint, and all_prices method [View](https://github.com/hackhowtofaq/binance/commit/53410ea16118d56e28b8830f48f795e8688a1b66)
*  Remove unused allPrices endpoint [View](https://github.com/hackhowtofaq/binance/commit/e177739734829c7285890ed86152ed67dd077899)
*  Version 1.2.0 [View](https://github.com/hackhowtofaq/binance/commit/dcf17359c894cc2891d22f40284a1c7e18163011)


## v1.1.0 (2018-06-08)

*  Remove REST#product method and endpoint. [View](https://github.com/hackhowtofaq/binance/commit/be6996a0165b0248110e90a60dc4f192534ac999)
*  Appease the RuboCop Gods. [View](https://github.com/hackhowtofaq/binance/commit/5cc73fe8ff78b1c2fd1d140459bb5423abbeaa52)
*  Add REST#dust_log method and endpoint. [View](https://github.com/hackhowtofaq/binance/commit/afdd4b914fbaa493306657e2abba4c5528fc7faa)
*  Version 1.1.0 [View](https://github.com/hackhowtofaq/binance/commit/f8ce47ccdf7a649094f6e45ab7ecc5a3998c789e)


## v1.0.1 (2018-03-21)

*  Add notice about 1.0. [View](https://github.com/hackhowtofaq/binance/commit/a521d6580086d2216c99dafac467302a333736a6)
*  Fix account_info endpoint [View](https://github.com/hackhowtofaq/binance/commit/4bdc9d1b56529f51f82e12f9dfc14692273c03c1)
*  Version 1.0.1 [View](https://github.com/hackhowtofaq/binance/commit/74fcf64794c9ca2c34e0641cd5ebc306744a0852)


## v1.0 (2018-03-18)

*  Copy & paste fail in query order method doc [View](https://github.com/hackhowtofaq/binance/commit/bdaa6f5be32bb382d0d2378bafe4a9b053f6fdf8)
*  add public adapter for public withdraw endpoints [View](https://github.com/hackhowtofaq/binance/commit/a8c828b4c59092bfa97abd9127d1e7ff7529f04a)
*  add systemStatus endpoint [View](https://github.com/hackhowtofaq/binance/commit/1ef034e50e7e28bcc8a8348c404874644edb1400)
*  add system status request [View](https://github.com/hackhowtofaq/binance/commit/c8184d749f3067c557cfa2a441a092e41f91de46)
*  tidy whitespace [View](https://github.com/hackhowtofaq/binance/commit/0522c2d6f007602d65a4a339581f1b1df63ffc19)
*  remove comma from last item in hash [View](https://github.com/hackhowtofaq/binance/commit/bb5a62e24a25b927e2a3cb633983d7c79b1165b5)
*  Refactor using metaprogramming. [View](https://github.com/hackhowtofaq/binance/commit/b0795eb9fdb12e632d87ae750bf77edb27983215)
*  Add new #withdraw_fee endpoint. [View](https://github.com/hackhowtofaq/binance/commit/b5d16bb4ebd75981e2e1bcc1c55c7d3053276921)
*  Update method call. [View](https://github.com/hackhowtofaq/binance/commit/6fb551f8f06e71919f9fb18126a0b614ca66ffe9)
*  Change expected options in REST options from camelCase to snake_case. [View](https://github.com/hackhowtofaq/binance/commit/110be291276d213af887c93ac6584cf4c9f9d090)
*  Update various things. [View](https://github.com/hackhowtofaq/binance/commit/3fe725dfa6598a68db8be6f3b172d76415b4a485)
*  Version 1.0 [View](https://github.com/hackhowtofaq/binance/commit/426d4f587c007122f5a1b1ef7ffd61d6672ab9c6)


## v0.4.3 (2018-02-09)

*  Make small changes to README. [View](https://github.com/hackhowtofaq/binance/commit/23533bb44bc2e4534950957fc1c7710c5db882f1)
*  Fix API url [View](https://github.com/hackhowtofaq/binance/commit/d46e8408cdd2ab9ebcd7ad4004f841916033e4cb)
*  Allow rest.open_orders without params [View](https://github.com/hackhowtofaq/binance/commit/3bb9856e154c381987c38e941e1f45c5dc322f5f)
*  Fix **option into option = {} to maintain consistency. [View](https://github.com/hackhowtofaq/binance/commit/b49d997aa26c94b81af1f46f095554566c603c41)
*  Version 0.4.3 [View](https://github.com/hackhowtofaq/binance/commit/a42985012a4d9eeb22357b8244c4233c6b7b7dba)


## v0.4.2 (2018-01-27)

*  Modify internal Class names to CamelCase in accordance with rubocop. [View](https://github.com/hackhowtofaq/binance/commit/099e0051e501366abef502e98adf4ad54d8b8f02)
*  Refactor REST client code. * Decouple Faraday clients from API "libraries". * Move Faraday client initialization into REST. * Prevent api_key and secret_key from being accessible. * Simplify everything and get rid of ugly / bad coding choices. [View](https://github.com/hackhowtofaq/binance/commit/c710bb0fa15136d2a6a203196ecac1da3a875961)
*  Give more meaningful and detached names to REST Faraday client methods. [View](https://github.com/hackhowtofaq/binance/commit/4d10da616f8ca2cb45734a92c04f6dbf94ef5ad7)
*  Change REST#request endpoint argument from String to Symbol. [View](https://github.com/hackhowtofaq/binance/commit/fffeca52868becbf6a0a144091c1d96ee9a4c0a3)
*  Loosen runtime dependency requirements to include minor upgrades. [View](https://github.com/hackhowtofaq/binance/commit/0b5d46688b32b9623e2aa9ab3c0e04685372951c)
*  Version 0.4.2 [View](https://github.com/hackhowtofaq/binance/commit/8400680c9249aeb3f9ee283f71cbdcfb1491bbe7)


## v0.4.1 (2018-01-20)

*  Hotfix for Historical Trades endpoint not having API key header. [View](https://github.com/hackhowtofaq/binance/commit/701a3065d28857122e3ff8458295a41da0e655ff)
*  Fix comment that didn't list fromId option as optional. [View](https://github.com/hackhowtofaq/binance/commit/701105f3f67dd16d4126d88f85a87defcb6ff28f)
*  Version 0.4.1 [View](https://github.com/hackhowtofaq/binance/commit/f8c1f067c89bca9a2804cdbd397ad0f738834ea1)


## v0.4.0 (2018-01-07)

*  Add User Data Stream REST endpoints and WebSocket stream. [View](https://github.com/hackhowtofaq/binance/commit/49faeb284fbd47d6f5154bd8344898ff169af382)
*  Version 0.4.0 [View](https://github.com/hackhowtofaq/binance/commit/5a5aa9f34a86674299b03f8669225c76f3d23fb1)


## v0.3.1 (2017-12-28)

*  Fix (hopefully) TomDoc issues for documentation. [View](https://github.com/hackhowtofaq/binance/commit/6377e7a74473a9f56e8829052c26a1e29eb7f004)
*  Version 0.3.1 [View](https://github.com/hackhowtofaq/binance/commit/844700870cb9df533a5a41e0b77d26aded2edd78)


## v0.3.0 (2017-12-28)

*  Add gem version badge. [View](https://github.com/hackhowtofaq/binance/commit/60984d3332d6ffd88783748af06eee26ea7d372e)
*  Update REST Client API URL. [View](https://github.com/hackhowtofaq/binance/commit/a2da6a8db3c169f7356b5143def5d9a6431a20b5)
*  Add Faraday adapter option to Client::REST initializer. [View](https://github.com/hackhowtofaq/binance/commit/22207287213164e038843740a618c2a88a8241c7)
*  Basic WebSocket functionality implemented. [View](https://github.com/hackhowtofaq/binance/commit/edb4161cb5e8d56eff9d929222fe72e7e809d94a)
*  Update README to include instructions for WebSocket. [View](https://github.com/hackhowtofaq/binance/commit/6f231fa34baef59984d69720c62e2eff3ec7017a)
*  Add comments to WebSocket API. [View](https://github.com/hackhowtofaq/binance/commit/5362b21b090321bea40cd9bbb24926f077281089)
*  Make private methods private. [View](https://github.com/hackhowtofaq/binance/commit/18f6c22150613651e8ebc6a77957df0b743a8ac4)
*  Add comments to REST API. [View](https://github.com/hackhowtofaq/binance/commit/97ab6ffdfb9a578bec7c42def6197a7b9b083391)
*  Add comments to Withdraw API. [View](https://github.com/hackhowtofaq/binance/commit/176f6b621bb98ef4416176703141fab3428e0deb)
*  Add missing accountStatus endpoint. [View](https://github.com/hackhowtofaq/binance/commit/7172d93383daca96b0f8460ed347b2dc9451bae5)
*  Add comment to account_status. [View](https://github.com/hackhowtofaq/binance/commit/1f0f4121443a25c26440b1defd5a9b933076fbc3)
*  Add comments to Public API. [View](https://github.com/hackhowtofaq/binance/commit/367c9b7fe0ff4900618931f65a1c923e652469d3)
*  Add comments to Account API. [View](https://github.com/hackhowtofaq/binance/commit/3c0eede310eeef0484273b9696991b8c7f53e438)
*  Version 0.3.0 [View](https://github.com/hackhowtofaq/binance/commit/54c3ffa3c455be53bf4a0a6cae86eb3ff0e69c66)


## v0.2.0 (2017-12-12)

*  Refactor Faraday usage to avoid repetition. [View](https://github.com/hackhowtofaq/binance/commit/8fcab18ab7591031f4260ec2949a6967d593c254)
*  Create .gitignore file. [View](https://github.com/hackhowtofaq/binance/commit/627ba2123d9a6b4d879744915baea0c6c03d6720)
*  Add 'Test new order' endpoint [View](https://github.com/hackhowtofaq/binance/commit/9419273ac7ede7ac2f2386734f9db8660b79d81d)
*  Refactor how we resolve API endpoints to accommodate Binance's ever-changing API. Add new API endpoints and ensure the gem's API backwards compatibility. [View](https://github.com/hackhowtofaq/binance/commit/8df8deb28580b7bc649c12e1cee2a33195f26056)
*  Version 0.2.0 [View](https://github.com/hackhowtofaq/binance/commit/6b56fddfffd58b24582874447c7a0ae7406eacb1)


## v0.1.0 (2017-11-28)

*  Add link to REST API documentation. [View](https://github.com/hackhowtofaq/binance/commit/728a02492d5aee5c79270b2ecd46256876e23898)
*  Modify version number to adhere to semantic versioning. [View](https://github.com/hackhowtofaq/binance/commit/727bddbe49262064a989e708b2dacbc2a1b67b0a)


