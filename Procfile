auth: uvicorn --port 8000 main:app --reload
api: uvicorn --port 5100 project1.api.__main__:app --reload
krakend: echo ./etc/krakend.json | entr -nrz krakend run -c ./etc/krakend.json --port 5400
