Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify, ENV['SHOPIFY_API_KEY'], ENV['SHOPIFY_SHARED_SECRET'], callback_url: 'http://app.campaignpanel.com/auth/shopify/callback'
end
