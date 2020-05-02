b480e5d (HEAD -> master, tag: v1.2.3, origin/master, origin/HEAD) OCO order
2a03868 (tag: v1.2.2) Test reconnect
17aba6f Update version.rb
9e68633 Update faraday dependency
dcf1735 (tag: v1.2.0) Version 1.2.0
bb43026 Merge pull request #27 from glennfu/patch-2
e177739 Remove unused allPrices endpoint
c39a1f5 Merge pull request #26 from glennfu/patch-1
53410ea Add allPrices endpoint, and all_prices method
f8ce47c (tag: v1.1.0) Version 1.1.0
afdd4b9 Add REST#dust_log method and endpoint.
5cc73fe Appease the RuboCop Gods.
be6996a Remove REST#product method and endpoint.
74fcf64 (tag: v1.0.1) Version 1.0.1
896361b Merge pull request #16 from veilleperso/master
4bdc9d1 Fix account_info endpoint
a521d65 Add notice about 1.0.
426d4f5 (tag: v1.0) Version 1.0
3fe725d Update various things.
110be29 Change expected options in REST options from camelCase to snake_case.
6fb551f Update method call.
b5d16bb Add new #withdraw_fee endpoint.
b0795eb Refactor using metaprogramming.
e9c0d32 (origin/0.4.3) Merge pull request #13 from onejc/system-status-patch
bb5a62e remove comma from last item in hash
0522c2d tidy whitespace
c8184d7 add system status request
1ef034e add systemStatus endpoint
a8c828b add public adapter for public withdraw endpoints
3ae8cf4 Merge pull request #12 from kke/patch-3
bdaa6f5 Copy & paste fail in query order method doc
a429850 (tag: v0.4.3) Version 0.4.3
b49d997 Fix **option into option = {} to maintain consistency.
9b88332 Merge pull request #11 from kke/patch-2
d868cdc Merge pull request #10 from kke/patch-1
3bb9856 Allow rest.open_orders without params
d46e840 Fix API url
23533bb Make small changes to README.
8400680 (tag: v0.4.2) Version 0.4.2
0b5d466 Loosen runtime dependency requirements to include minor upgrades.
fffeca5 Change REST#request endpoint argument from String to Symbol.
d49e669 Merge User Data REST endpoints into AccountAPI.
4d10da6 Give more meaningful and detached names to REST Faraday client methods.
c710bb0 Refactor REST client code. * Decouple Faraday clients from API "libraries". * Move Faraday client initialization into REST. * Prevent api_key and secret_key from being accessible. * Simplify everything and get rid of ugly / bad coding choices.
099e005 Modify internal Class names to CamelCase in accordance with rubocop.
f8c1f06 (tag: v0.4.1) Version 0.4.1
701105f Fix comment that didn't list fromId option as optional.
701a306 Hotfix for Historical Trades endpoint not having API key header.
5a5aa9f (tag: v0.4.0) Version 0.4.0
49faeb2 Add User Data Stream REST endpoints and WebSocket stream.
8447008 (tag: v0.3.1) Version 0.3.1
6377e7a Fix (hopefully) TomDoc issues for documentation.
54c3ffa (tag: v0.3.0) Version 0.3.0
3c0eede Add comments to Account API.
367c9b7 Add comments to Public API.
1f0f412 Add comment to account_status.
7172d93 Add missing accountStatus endpoint.
176f6b6 Add comments to Withdraw API.
97ab6ff Add comments to REST API.
18f6c22 Make private methods private.
5362b21 Add comments to WebSocket API.
6f231fa Update README to include instructions for WebSocket.
edb4161 Basic WebSocket functionality implemented.
2220728 Add Faraday adapter option to Client::REST initializer.
a2da6a8 Update REST Client API URL.
60984d3 Add gem version badge.
6b56fdd (tag: v0.2.0) Version 0.2.0
8df8deb Refactor how we resolve API endpoints to accommodate Binance's ever-changing API. Add new API endpoints and ensure the gem's API backwards compatibility.
f7ddd53 Merge pull request #1 from fab/master
9419273 Add 'Test new order' endpoint
627ba21 Create .gitignore file.
8fcab18 Refactor Faraday usage to avoid repetition.
727bddb (tag: v0.1.0) Modify version number to adhere to semantic versioning.
728a024 Add link to REST API documentation.
87c2ef9 (tag: v0.0.1) Initial project commit. Basic low-level functionality implemented.
