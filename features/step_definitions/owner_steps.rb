Given /^the following owners:$/ do |owners|
  Owner.create!(owners.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) owner$/ do |pos|
  visit owners_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following owners:$/ do |expected_owners_table|
  expected_owners_table.diff!(tableish('table tr', 'td,th'))
end

Then /^I should see the "([^\"]*)" link$/ do |text|
  css("a").detect { |a| a.text == text }.should_not(be_nil,
    "Expected to see the #{text.inspect} link, but did not.")
end