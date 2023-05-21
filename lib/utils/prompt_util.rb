module Utils
  class Prompt
    def self.itinerary_text(destination, start_date, end_date)
      "Estou viajando para #{destination} nos dias #{start_date} até #{end_date}, por favor me sugira um roteiro de viagem para cada um dos dias em que estarei em #{destination}"
    end

    def self.weather_text(destination, start_date, end_date)
        "Estarei em #{destination} dos dias #{start_date} até #{end_date} e gostaria de saber sobre as informações sobre o clima nessa época do ano. Como estará o clima e quais roupas devo levar em minha mala?"
    end

    def self.criminality_rate_text(destination)
        "Irei viajar para #{destination} e gostaria de saber se essa cidade é muito violenta. Me dê informações sobre as taxas de violência naquela região"
    end

    def self.best_way_travel_text(destination, origin)
      "Irei viajar para #{destination} e gostaria de saber como é a melhor forma de me locomover da cidade onde estou hoje, #{origin} até #{destination}"
    end
  end
end
