Given /^the following entries:$/ do |entries|
  Entry.create!(entries.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) entry$/ do |pos|
  visit entries_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following entries:$/ do |expected_entries_table|
  expected_entries_table.diff!(tableish('table tr', 'td,th'))
end
