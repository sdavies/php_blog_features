Given(/^something truthy$/) do
  true
end

When(/^I visit the home page$/) do
  visit('http://localhost:3000/')
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I pry$/) do
  binding.pry
end
Then(/^snap!$/) do
  options = {}
  path = options.fetch :path, File.expand_path("~/.Trash")
  unless File.exists?(path)
    path = "~/.local/share/Trash/"
  end

  file = options.fetch :file, "#{Time.now.to_i}.png"
  full = options.fetch :full, true
  path = File.expand_path path
  path = "/tmp" if !File.exists?(path)
  uri = File.join path, file
  page.save_screenshot(uri, full: true)
  if RUBY_PLATFORM =~ /Darwin/i
    system "open #{uri}"
  else
    system "xdg-open #{uri}"
  end
end


