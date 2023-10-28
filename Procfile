auth: uvicorn --port $PORT main:app --reload
enrollment_service: uvicorn --port $PORT project1.api.__main__:app --reload
auth_service_primary: ./litefs mount --config ./etc/primary.yml
auth_service_secondary_1: ./litefs mount --config ./etc/secondary_1.yml
auth_service_secondary_2: ./litefs mount --config ./etc/secondary_2.yml
krakend: echo ./etc/krakend.json | entr -nrz krakend run --config ./etc/krakend.json --port $PORT