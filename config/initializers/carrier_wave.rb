if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAI66Q53RG57SFFCFQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['wildaisling']
  end
end