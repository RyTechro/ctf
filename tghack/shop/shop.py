import requests

url = 'https://shop.tghack.no/6c836d218aab653b4fc9f572ca93f46b8ea270dd0b177186bb6bfd89cdaed916/store'

# for i in range(0,1000):
myobj = {'sum': '1', 'id': str(9)}
x = requests.post(url, data = myobj)
# print(x.text)
if("Insufficient" in x.text):
	print(i)
	# print(x.text)