if [ "$#" -ne 1 ]; then
    echo "Usage: make SCRIPT_NAME"
    exit 1
fi

script=$1
while true; do
    #echo 'recompiling'
    #change to fit your own run/compile
    utop $script
    #echo "scalac $script.scala"
    #scalac $script.scala
    #echo "scala $script"
    #scala $script
    #wait for changes to script
    inotifywait -qe modify $script >> /dev/null;
done