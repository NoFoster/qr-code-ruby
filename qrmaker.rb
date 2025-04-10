##gem install rqrcode


require "rqrcode"
puts "Hello! What would you like to do?
  1. Create QR code for website.
  2. Create QR code for Wifi network.
  3. Create QR code to send a text message."

  user_choice = gets.chomp

 if user_choice = 1

  puts "What is the website URL that you would like to create a QR code for?"
  website = gets.chomp
  qrcode = RQRCode::QRCode.new("#{website}")
  png = qrcode.as_png({ :size => 500})

 elsif user_choice = 2
  puts "What is the name of the WiFi network?"
  wifi_net = gets.chomp
  puts "What is the password?"
  pass = gets.chomp
  qrcode = RQRCode::QRCode.new("WIFI:T:WPA;S:#{wifi_net};P:#{pass};;")
  png = qrcode.as_png({ :size => 500})

 elsif user_choice = 3 
  puts "What is the phone number you would like to send a message to?"
  ph_num = gets.chomp
  puts "What would you like the message to say?"
  msg = gets.chomp
  qrcode = RQRCode::QRCode.new("SMSTO:#{ph_num}:#{msg}")
  png = qrcode.as_png({ :size => 500})
  
 elsif user_choice != 1 || 2 || 3
   puts "Invalid input, please try again and select a number from the list."
 end 

  puts "What would you like the png file to be called?"
  png_file = gets.chomp
  IO.binwrite("#{png_file}.png", png.to_s)

  
