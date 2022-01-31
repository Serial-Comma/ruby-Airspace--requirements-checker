#Airspace requirements checker
puts "Enter the class of airspace you want to check"
airspace = gets.chomp
airspace.upcase!

viz = ["1SM ", "3SM ", "5SM "]
cloud_floors = ["1000 ft above, 500ft below, 2000 ft horizontally away from clouds", "1000ft above, 1000ft below, 1SM horizontally away from clouds ", "Clear of clouds"]
equipment = ["2 Way Radios", "Transponder with Mode C", "ADSB-Out", "VOR/RNAV (for IFR)"]
actions = ["Establish communications with ATC", "Be cleared into airspace by ATC"]
certs = ["Student Pilot Certificate", "Private Pilot Certificate"]

if airspace == "B" ;
    puts String(viz[1]) + String(cloud_floors[2]) + String(equipment[0..3]) + String(actions[1]), String(certs[1]) #Surely there must be an easier way to print these things without manually typing String(variable[1]) in front of all of them right
elsif airspace == "C";
    puts String(viz[1]) + String(cloud_floors[0]) + String(equipment[0..2]) + String(actions[0]), String(certs[0])
elsif airspace == "D";
    puts String(viz[1]) + String(cloud_floors[0]) + String(equipment[0]) + String(actions[0]), String(certs[0])
elsif airspace == "E"; 
    puts "Please say 'above' or 'below' 10,000ft"
    height = gets.chomp
    height.downcase!
    if height == "above";
        puts String(viz[2]) + String(cloud_floors[1])
    else;
        puts String(viz[1]) + String(cloud_floors[0])
    end
elsif airspace == "G";
    puts "Please say 'day' or night'"
    time = gets.chomp
    time.downcase!
    puts "Please say 'above' or 'below' 10,000ft"
    height = gets.chomp
    height.downcase!
    puts "Plase say 'above' or 'below' 1200ft AGL"
    heightAGL = gets.chomp
    heightAGL.downcase!

    if height == "above" and heightAGL == "above"
        puts String(viz[2]) + String(cloud_floors[1])
    elsif time == "day" and heightAGL == "below"
        puts String(viz[0]), String(cloud_floors[2])
    elsif time == "night" and heightAGL == "below"
        puts String(viz[1]) + String(cloud_floors[0])
    elsif time == 'day' and heightAGL == "above" and height == "below"
        puts String(viz[0]) + String(cloud_floors[0])
    elsif time == 'night' and heightAGL == "above" and height == "below"
        puts String(viz[1]) + String(cloud_floors[0])
    end
end
