import os

# Read in the file
with open('file', 'r') as i :
  filedata = i.read()

# Replace the target string
filedata = filedata.replace('"', '\'')

# Write the file out again
with open('file', 'w') as i:
  i.write(filedata)

# Append quotes and comma to every line
with open ("file") as i:
    with open ("temp", "w") as o:
        for l in i:
            o.write("\'\'%s\'\n" % l[:-1])
        
os.remove("file")
os.rename("temp", "file")