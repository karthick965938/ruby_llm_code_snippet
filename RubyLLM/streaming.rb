require_relative '../openai_config'

# Create a chat (uses the default model)
chat = RubyLLM.chat

# Stream the response with a block
puts '------------------Stream the response with a block-------------------'
chat.ask "Tell me a story about a Ruby programmer" do |chunk|
    # Each chunk is a partial response
    print chunk.content
end