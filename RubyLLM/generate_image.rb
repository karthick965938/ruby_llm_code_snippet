require_relative '../openai_config'

# Generate an image with DALL-E
image = RubyLLM.paint("a panoramic mountain landscape", size: "1792x1024")

# The URL where you can view/download the image
puts '-----------------------------Image URL-------------------------------'
puts image.url

# How the model interpreted your prompt
puts '--------------------------Revised Prompt ----------------------------'
puts image.revised_prompt  # => "A breathtaking sunset painting the sky with warm..."
puts '---------------------Image Saved as sunset.png-----------------------'
image.save("sunset.png")