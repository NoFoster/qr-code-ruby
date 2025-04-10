##gem install rqrcode


require "rqrcode"
qrcode = RQRCode::QRCode.new("wikipedia qr code")
png = qrcode.as_png({ :size => 500})
IO.binwrite("sometext.png", png.to_s)
