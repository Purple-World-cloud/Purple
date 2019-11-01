CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'Google',                        # required
    google_storage_access_key_id:     'GOOG1ETS6UGG2ASWWNC7SIT2IEAQ6QVLGD65OHYCGZ4UG4QOH2PWZUX66LCEA',
    google_storage_secret_access_key: 'aQMHpTBnJbf39c0LlVB4oW/zp8UK+MkdTEqsQZDY'
  }
	config.storage = :fog
	config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory  = 'newstrap'                                      # required
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end