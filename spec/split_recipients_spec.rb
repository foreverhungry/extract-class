require 'spec_helper'

RSpec.describe SplitRecipients do
  describe "#call" do
    it "strips whitespaces from recipients" do
      recipients = "   foo@example.com;  bar@example.com   "

      result = SplitRecipients.new(recipients).call

      expect(result).to eq(["foo@example.com", "bar@example.com"])
    end

    it "split recipients on newlines, commas and semicolons" do
      recipients = "foo@example.com\nbar@example.com,baz@example.com;bat@example.com"

      result = SplitRecipients.new(recipients).call

      expect(result).to eq(["foo@example.com", "bar@example.com", "baz@example.com", "bat@example.com"])
    end
  end
end
