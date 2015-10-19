cats = []

n = 0

100.times do
  n += 1
  cats << {"cat_number" => n, "hat" => "on"}
end
#p cats

#p cats[0..100]
count = 1

100.times do
  cats.each_with_index do |cat, index|
    if (index + 1) % count == 0
      if cat["hat"] == "on"
        cat["hat"] = "off"
      else
        cat["hat"] = "on"
      end
    end
  end
  count += 1
end

puts cats.select{|cat| cat if cat["hat"] == "off"}
