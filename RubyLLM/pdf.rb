require_relative '../openai_config'

# Create a chat with Claude
chat = RubyLLM.chat(model: 'claude-3-7-sonnet-20250219')

# Ask about a PDF document (local file)
content = chat.ask "What's in this PDF?", with: { pdf: "RubyLLM/data/receipt.pdf" }
puts content