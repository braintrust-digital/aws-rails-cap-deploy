require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "home_form" do
    mail = ContactMailer.home_form
    assert_equal "Home form", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
