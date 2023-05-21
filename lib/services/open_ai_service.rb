require 'openai'
require 'dotenv'
Dotenv.load

class OpenAiService
  def initialize
    @openai_client = OpenAI::Client.new(access_token: ENV['OPENAI_KEY'])
  end

  def call
    response = @openai_client.chat(
      parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: "Me diga um lugar legal para visitar em Salvador"}],
      })

    response.dig('choices', 0, 'message', 'content')
  end
end
