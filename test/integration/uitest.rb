require 'capybara/rspec'
require 'selenium-webdriver'
require 'pry'

# RSpecにCapybaraのDSLを設定
RSpec.configure do |config|
  config.include Capybara::DSL
end

# Capybaraにseleniumを使うように設定
Capybara.default_driver = :selenium
Capybara.app_host = 'https://blooming-depths-53477.herokuapp.com/quizzes/'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_max_wait_time = 45

s = Capybara::Session.new(:selenium)

def wait_content(s, c="")
  Timeout.timeout(Capybara.default_max_wait_time) do
    loop until s.has_content? c
  end
end

def check_create(s)


end

describe "CRUD of quiz" do

  before do
    s.visit '/'
  end

  it "create" do
    wait_content(s, "ADD QUIZ")

    s.save_screenshot "tmp/test0.png"
    s.click_on 'ADD QUIZ', match: :first

    s.find_by_id("quiz_question").send_keys("test question")
    s.find_by_id("quiz_answers_attributes_1_ans_name").send_keys("test answer")
    s.find_by_id("quiz_answers_attributes_2_ans_name").send_keys("test answer")
    s.find_by_id("quiz_answers_attributes_3_ans_name").send_keys("test answer")
    s.find_by_id("quiz_answers_attributes_0_ans_name").send_keys("test answer")

    s.save_screenshot "tmp/test1.png"

    s.click_on 'Create Quiz', match: :first

    expect(s).to have_content 'test question'
    s.save_screenshot "tmp/test2.png"
  end

  it "delete" do
    s.find_by_href("quizzes/8").click
  end

end
