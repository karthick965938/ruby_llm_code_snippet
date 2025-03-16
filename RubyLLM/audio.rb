require_relative '../openai_config'

chat = RubyLLM.chat(model: 'gpt-4o-audio-preview')

# Analyze audio content
audio = chat.ask "What's being said in this recording?", with: {audio: "RubyLLM/data/test_audio.mp3"}
puts '--------------------------Analyze audio content----------------------------'
puts audio.content

# Ask follow-up questions about the audio
# chat.ask "Summarize the audio"