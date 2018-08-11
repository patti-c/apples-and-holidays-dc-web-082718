require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |key, value|
    value << supply
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash[:winter].each do |key, value|
    new_array << value
  end 
  new_array.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season_key, value|
    
    season_string = season_key.to_s.capitalize
    
    puts "#{season_string}:"
    
    value.each do |holiday_key, second_value|
      
      holiday_string = holiday_key.to_s
      
      holiday_array = holiday_string.split('_')
      
      holiday_array.each do |word|
         word.capitalize!
      end 
      
      holiday_string = holiday_array.join(' ')
      
      puts "  #{holiday_string}: #{second_value.join(", ")}"
      
    end 
  end 

end

def all_holidays_with_bbq(holiday_hash)
  
  # This is a fun tool that will help us later
  
  bbq_array = []
  
  # We start by iterating across the seasons 
  
  holiday_hash.each do |season_key, value|
    
    # Next we will iterate across the holidays themselves
    
    value.each do |holiday_key, supplies|
      
      # Finally, we will iterate across the supplies
      # Looking for BBQ materials
      
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_array << holiday_key
        end 
      end 
    end 
    
  end 
  
end
