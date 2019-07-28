require "HTTParty"

url = "https://disco.re/common/short_info/"

body = {
  "p" => "1168010100108250020"
}

result = HTTParty.post(
  url,
  body: body
)

data = result.parsed_response

p data["name"]
p data["address"]
