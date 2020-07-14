from os import path, chdir, listdir, getcwd, system
from zipfile import ZipFile
import sys

# listOfFiles = os.listdir("final-final-compressed")
# print(listOfFiles)
# for l in listOfFiles:
# 	with zipfile.ZipFile("final-final-compressed/"+l, 'r') as zip_ref:
# 		zip_ref.extractall("extracted")

# files = ["/extracted"]
# with exiftool.ExifTool() as et:
# 	metadata = et.get_metadata_batch(files)

# for i in metadata:
# 	print(i)

directory = "extracted"
n = 0
for i in listdir(directory):
    with open(directory+"/"+i, "r", encoding = "ISO-8859-1") as r:
        line = r.read().splitlines()
    for x in line:
        if "password" in x:
            print(i)


# with open("exiftool.txt") as etresults:
#     metadata = etresults.readlines()
# system("rm exiftool.txt")

# counter = 0
# for line in metadata:
#     if "Version" in line and "1.1" in line:
#         counter += 1
# #Second answer:
# print("The number of files containing Version: 1.1 is: ",counter)

