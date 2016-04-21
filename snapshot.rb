require_relative "gilded_rose"


File.open("snapshot.txt", "w") do |f|
  normal = Item.new("turtle", 10, 10)

  items = [normal]

  rose = GildedRose.new(items)

  rose.update_quality()

  items.each do |e|
    f.puts "#{e.name} Q:#{e.quality} S:#{e.sell_in}"
  end
end

unless `git diff snapshot.txt`.empty?
  STDERR.puts "SNAPSHOT CHANGED!"
end


