CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJABSSTXER7DFZ5BQ',
    :aws_secret_access_key  => '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',
    :region                 => 'eu-west-1',
  }
  config.fog_directory  = 'golfbox'
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end