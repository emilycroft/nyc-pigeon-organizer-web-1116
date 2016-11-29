require 'pry'

def nyc_pigeon_organizer(data)
  result = Hash.new

  data.each do |attribute, hashes|
    hashes.each do |key, array|
      array.each do |element|
        result[element] = {color: [], gender: [], lives: []}
      end
    end
  end

  data.each do |attribute, hashes|
    hashes.each do |key, array|
      array.each do |element|
        if attribute == :color
          result[element][:color] << key.to_s
        elsif attribute == :gender
          result[element][:gender] << key.to_s
        elsif attribute == :lives
          result[element][:lives] << key.to_s
        end
      end
    end
  end
  puts result
  result
end
