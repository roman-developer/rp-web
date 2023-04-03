require "rails_helper"

RSpec.describe ApplicationMailer, type: :mailer do
  class TestMailer < ApplicationMailer
    def test
      mail(to: "test@gmail.com", subject: "Test subject", body: "Hello world")
    end
  end
end