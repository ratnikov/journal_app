module SeedHelpers
  def create_owner!(attributes={})
    owner = Factory(:owner, attributes)
    owner
  end
end
RSpec.configure do |config|
  config.include SeedHelpers
end