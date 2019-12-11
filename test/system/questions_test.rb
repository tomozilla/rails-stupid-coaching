# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    page.save_screenshot('screenshot1.png')
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    print page.html
    page.save_screenshot('screenshot2.png')
  end
end