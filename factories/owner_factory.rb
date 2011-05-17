Factory.define :owner do |owner|
  owner.email { "owner#{rand(10000)}@deryldoucette.com" }
  owner.name "Test Owner"
end
