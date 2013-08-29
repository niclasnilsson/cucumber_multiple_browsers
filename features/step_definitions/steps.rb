#encoding: utf-8

Given /^I visit the elib homepage$/ do
  visit "http://elib.se"
end

When /^I search for (.*)$/ do |search_term|
  fill_in 'sok', :with => search_term 
  click_on "Sök"
end

Then (/^I should see (.*)$/) do |content|
  page.has_content? content
end
