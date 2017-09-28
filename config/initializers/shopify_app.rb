ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "91ec83fc5e94975b603abdf182f9f08e"
  config.secret = "bec7720be25e665773bc5c45aa00be46"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
