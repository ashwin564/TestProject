require 'selenium-webdriver'


Given("I opened {string}")do |string|
    @driver.get string
end


When("I search a {string}")do |string|
    element = @driver.find_element :name => "q"
    element.send_keys string
    element.submit
end


Then("I should see the browser title has {string}") do |string|
    p "Page title is #{@driver.title}"
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.title.downcase.start_with? "cheese!" }
    p "Page title is #{@driver.title}"
    @driver.title.include?(string)
end


After do
    @driver.quit
end