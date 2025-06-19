Given("I am on the quest index page") do
  visit quests_path
end

When("I fill in {string} into the quest title input") do |title|
  find('[data-test-id="quest-title-input"]').fill_in(with: title)
end

When("I click the create quest button") do
  find('[data-test-id="create-quest-button"]').click
end

Then("I should see a quest titled {string}") do |title|
  expect(page).to have_css('[data-test-id^="quest-title-"]', text: title)
end

When("I click the delete button for {string}") do |title|
  quest_element = find('[data-test-id^="quest-title-"]', text: title)
  quest_id = quest_element[:'data-test-id'].split('-').last
  delete_button = find("[data-test-id='delete-quest-button-#{quest_id}']")
  delete_button.click
end

Then("I should not see a quest titled {string}") do |title|
  expect(page).to have_no_css('[data-test-id^="quest-title-"]', text: title)
end

When("I click the checkbox for {string}") do |title|
  quest_element = find('[data-test-id^="quest-title-"]', text: title)
  quest_id = quest_element[:'data-test-id'].split('-').last
  checkbox = find("[data-test-id='quest-status-checkbox-#{quest_id}']")
  checkbox.click
end

Then("the quest titled {string} checkbox should be checked") do |title|
  quest_element = find('[data-test-id^="quest-title-"]', text: title)
  quest_id = quest_element[:'data-test-id'].split('-').last

  checkbox = find("[data-test-id='quest-status-checkbox-#{quest_id}']")
  expect(checkbox).to be_checked
end
