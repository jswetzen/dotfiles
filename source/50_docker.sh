# Execute a command in a running container, found by grepping
# Default command is bash
function dx ()
{
    if [ $# -ge 1 ]; then
        docker exec -it $(docker ps | grep $1 | cut -d' ' -f1 | head -1) ${2:-bash};
    fi
}
