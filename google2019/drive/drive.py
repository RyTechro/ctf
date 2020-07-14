import requests

base = "https://drivetothetarget.web.ctfcompetition.com/"

latPre = "?lat="
lat = str(51.6498)
lonPre = "&lon="
lon = str(0.0983)
tokenPre = "&token="
token = "gAAAAABejdi5QBG8TCOwOE1BJx_WgR0EkS2EXTN76JnBZa_8OAJ9ifCwTrbgjrp0NqzHQ53F1JmrSqpXU-SePlOoZWi339PTx8oA0aGROlJ9MuZLKLCFa3-0VpzBpgnjVt2JlewzcoP8"

response = requests.get(base+latPre+lat+lonPre+lon+tokenPre+token)
print(response.text)
