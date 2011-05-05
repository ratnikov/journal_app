Given /^the following journals:$/ do |journals|
  Journal.create!(journals.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) journal$/ do |pos|
  visit journals_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following journals:$/ do |expected_journals_table|
  expected_journals_table.diff!(tableish('table tr', 'td,th'))
end
