Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "633593176771287", "e2ce9205a9e30f781bd7c6897eaca4aa"
end