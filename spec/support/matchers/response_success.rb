RSpec::Matchers.define :be_successful do
  match do |response|
    response.success?
  end

  failure_message_for_should do |response|
    "Failed with error messages: #{response.error_messages}"
  end
end
