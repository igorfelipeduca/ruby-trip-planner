require './lib/services/open_ai_service'
require './lib/utils/prompt_util'

class Travel
  def with_dates(start_date, end_date)
    @start = start_date
    @end = end_date
    self
  end

  def from(origin)
    @origin = origin
    self
  end

  def to(destination)
    @destination = destination
    self
  end

  def plan!
    {
      travel_itinerary: travel_itinerary,
      weather: weather,
      criminality_rate: criminality_rate,
      best_way: best_way,
    }
  end

  private
  def travel_itinerary
    prompt = Utils::Prompt.itinerary_text(@destination, @start_date, @end_date)
    OpenAiService.new.call(prompt)
  end

  def weather
      prompt = Utils::Prompt.weather_text(@destination, @start_date, @end_date)
      OpenAiService.new.call(prompt)

  end

  def criminality_rate
    prompt = Utils::Prompt.criminality_rate_text(@destination)
    OpenAiService.new.call(prompt)
  end

  def best_way
    prompt = Utils::Prompt.best_way_travel_text(@destination, @origin)
    OpenAiService.new.call(prompt)
  end
end
