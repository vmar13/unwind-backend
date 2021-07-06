Datadog.configure do |c|
    c.env = 'staging'
    c.service = 'RoR'
    c.sampling.default_rate = 1.0
  end