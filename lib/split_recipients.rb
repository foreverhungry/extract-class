class SplitRecipients
  DELIMITER = /[\n,;]+/

  def initialize(recipients)
    @recipients = recipients
  end

  def call
    recipients.split(DELIMITER).map(&:strip)
  end

  private

  attr_reader :recipients
end
