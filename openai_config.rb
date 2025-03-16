# require ruby llm gem
require 'ruby_llm'
# require dot env gem for active the .env file
require 'dotenv/load'

RubyLLM.configure do |config|
  # Required: At least one API key
  config.openai_api_key = ENV['OPENAI_API_KEY']

  # Optional: Set default models
  config.default_model = 'gpt-4o-mini'               # Default chat model
  config.default_embedding_model = 'text-embedding-3-small'  # Default embedding model
  config.default_image_model = 'dall-e-3'            # Default image generation model

  # Optional: Configure request settings
  config.request_timeout = 120  # Request timeout in seconds
  config.max_retries = 3        # Number of retries on failures
end