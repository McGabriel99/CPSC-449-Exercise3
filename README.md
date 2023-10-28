## setting up project environment


```
$ pip install -r requirements.txt   // installing dependencies
$ chmod +x ./litefs                 // adding execute permissions to litefs binary file
$ foreman start

```

In a different terminal

```
$ sh seed/init.sh                   // creating auth.db + seeding
$ sh project1/api/bin/init.sh       // creating classes.db + seeding
 
```