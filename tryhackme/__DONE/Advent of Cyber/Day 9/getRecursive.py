import requests

out = ''
host = 'http://10.10.241.214:3000/'
path = ''

while True:
	response = requests.get(host +  path)
	if response.json()['value'] == 'end':
		break
	out = out + response.json()['value']
	path = response.json()['next']

print(out)