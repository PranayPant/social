Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '638480379586633', 'd8e2afe2bcc7addf888552547d258a40'
end