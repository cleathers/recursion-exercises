def remix(drinks)
  @drinks=drinks
  alcohols = []
  mixers = []

  drinks.each do |drink|
    alcohols << drink[0]
    mixers << drink[1]
  end


  mix_the_drinks(alcohols, mixers)

end

def mix_the_drinks(alcohols, mixers)
  new_drinks = []

  until new_drinks.size == alcohols.size
    alcohol = alcohols.sample
    mixer = mixers.sample
    new_drink = [alcohol, mixer]
    if @drinks.include?(new_drink)
    else
      new_drinks << new_drink
      alcohols.delete(alcohol)
      mixers.delete(mixer)
    end

  end

  new_drinks
end