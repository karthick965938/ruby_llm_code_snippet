require_relative '../openai_config'

# List all models
all_models = RubyLLM.models.all
puts '--------------------------List All Models----------------------------'
puts "Total models: #{all_models.count}"

# List chat models
chat_models = RubyLLM.models.chat_models
puts '--------------------------List Chat Models---------------------------'
puts "Chat models:"
chat_models.each do |model|
  puts "- #{model.id} (#{model.provider})"
end

# List embedding models
puts '-----------------------List Embedding Models-------------------------'
RubyLLM.models.embedding_models.each do |model|
  puts "- #{model.id} (#{model.provider})"
end

# Find info about a specific model
gpt = RubyLLM.models.find('gpt-4o-mini')
puts '---------------------gpt-4o-mini model info--------------------------'
puts "Context window: #{gpt.context_window}"
puts "Max tokens: #{gpt.max_tokens}"
puts "Pricing: $#{gpt.input_price_per_million} per million input tokens"