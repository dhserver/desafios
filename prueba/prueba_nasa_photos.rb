require 'uri'
require 'net/http'
require 'json'


def request(url, api_key = "VKZ44WX51x6pvL4JaefeoPhfsTLcWiAcmXlJHtzD")
    url = URI("#{url}&api_key=#{api_key}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    JSON.parse(response.read_body)
end

data = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10")



# url = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=VKZ44WX51x6pvL4JaefeoPhfsTLcWiAcmXlJHtzD")

# https = Net::HTTP.new(url.host, url.port);
# https.use_ssl = true

# request = Net::HTTP::Get.new(url)

# response = https.request(request)
# JSON.parse(response.read_body)




def  buid_web_page(data)
  array=data["photos"].map {|x| x["img_src"]}
  img = "<html>\n<head>\n</head>\n<body>\n\t<ul>\n"
  array.each do |x|
    img += "\t\t<li><img src='#{x}'></li>\n"
  end
  img +="\t</ul>\n</body>\n</html>\n"
 puts img
File.write("index.html",img)
end
buid_web_page(data)