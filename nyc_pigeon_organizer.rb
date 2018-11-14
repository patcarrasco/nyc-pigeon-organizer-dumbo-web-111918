
require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

  new = {}

  # POPULATE KEYS
  data[:gender].each do |s, names|
    names.each { |name| new[name] = {} }
  end

  #POPULATE VALUES
  # binding.pry

  new.each do |name, info|
    data.each do |cat, v|
      new[name][cat] = []
      v.each do |k, val|
        if val.include?(name)
          new[name][cat].push(k.to_s)
        end
      end
    end
    # binding.pry
  end

  new

end
