Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '[public_key]', '[private_key]'
end