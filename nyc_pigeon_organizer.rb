def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |attributes, data_hash|
    data_hash.each do |data_name, names_array|
      names_array.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attributes] ||= []
        new_hash[name][attributes] << data_name.to_s
      end
    end
  end

  new_hash
end




# require 'pry'
#
# def nyc_pigeon_organizer(data)
#   result = Hash.new
#
#   data.each do |attribute, hashes|
#     hashes.each do |key, array|
#       array.each do |element|
#         result[element] = {color: [], gender: [], lives: []}
#       end
#     end
#   end
#
#   data.each do |attribute, hashes|
#     hashes.each do |key, array|
#       array.each do |element|
#         if attribute == :color
#           result[element][:color] << key.to_s
#         elsif attribute == :gender
#           result[element][:gender] << key.to_s
#         elsif attribute == :lives
#           result[element][:lives] << key.to_s
#         end
#       end
#     end
#   end
#   puts result
#   result
# end
