require 'pry'

def nyc_pigeon_organizer(data)

pigeon_list = {}

  data.each do |key, names| 
    names.each do |pigeon_array, pigeon_name|
      pigeon_name.select do |first_name|
        if !pigeon_list[first_name]
          pigeon_list[first_name] = {}
        end
        if !pigeon_list[first_name][key]
          pigeon_list[first_name][key] = []
        end
        binding.pry

        pigeon_list[first_name][key] << pigeon_array.to_s
      end
    end
  end
# binding.pry
pigeon_list
end