def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]  # Swap values
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

# Test our function here.
arr = [4,3,78,2,0,2]
puts bubble_sort(arr).inspect

# Now lets create a league of legends themed bubble! (ofc).

# We will create a function that gives a summoners name, returns their main champion, there favorite lane, and there current rank!

summoners = ["Luxv9Rainbow", "TeemoLovesMe1", "ZedOrFFasap"]
main_champions = ["Lux", "Teemo", "Zed"]
lanes = ["Jungle", "Top", "Mid"]
ranks = ["Silver 1", "Plastic 4", "Diamond 9"]

def summoner_profile(summoner_name, summoners, main_champions, lanes, ranks)
  # Find the index of the summoner name in the summoners array.
  index = summoners.index(summoner_name)

  # We return a detailed profile using our index found.
  {
    "Summoner" => summoner_name,
    "Main Champion" => main_champions[index],
    "Favorite Lane" => lanes[index],  # Corrected the typo here
    "Current Rank" => ranks[index]
  }
end

profile = summoner_profile("TeemoLovesMe1", summoners, main_champions, lanes, ranks)
profile.each do |key, value|
  puts "#{key}: #{value}"
end
