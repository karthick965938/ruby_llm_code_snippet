require_relative '../openai_config'

# Create a chat (uses the default model)
chat = RubyLLM.chat

# Ask a question
puts '--------------------------Ask a question----------------------------'
response = chat.ask "What's the capital of France?"
puts response.content
# => "The capital of France is Paris."

# Continue the conversation
puts '----------------------Continue the conversation----------------------'
response = chat.ask "What's the population of that city?"
puts response.content
# => "Paris has a population of approximately 2.1 million people..."


# Access the conversation history
puts '--------------------Access the conversation history-------------------'
chat.messages.each do |message|
    puts "#{message.role}: #{message.content[0..50]}..."
end