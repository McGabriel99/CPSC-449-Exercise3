auth: uvicorn --port 8000 main:app --reload
api: uvicorn --port 5100 project1.api.__main__:app --reload
krakend: echo ./etc/krakend.json | entr -nrz krakend run -c ./etc/krakend.json --port 5400
auth_service_primary: ./litefs mount --config ./etc/primary.yml
auth_service_secondary_1: ./litefs mount --config ./etc/secondary_1.yml
auth_service_secondary_2: ./litefs mount --config ./etc/secondary_2.yml