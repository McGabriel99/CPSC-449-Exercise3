COMMANDS=("dev" "prod")

if [ $# -eq 0 ]; then
    echo "no arguments passed. Please specify the environment to run application in"
    exit
fi

for command in ${COMMANDS[@]}; do

if [ $command == $1 ]; then
    echo "received instructions to run in $1 environment"

    case $1 in
        dev) 
            # running dev environment with hot reload
            uvicorn main:app --reload
            echo -e "Application shutting down.. have a nice day \n\n"
            exit;;
        
        prod)
            # running prod environment without hot reload
            echo "production script not ready. Please contact administrator"
            exit;;
    esac
fi

done 

echo "environment not found. Please check and try again"
exit