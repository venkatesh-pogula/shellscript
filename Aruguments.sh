#!/bin/bash

#################################################################################
#                                                                               #
#  'This is used to install the spring-pet application on Apache2 Server'       #
#                                                                               #
#################################################################################

#echo "using * $*"
#echo "using @ $@"
#echo "using 0 $0"
#echo "using # $#"

test_me() {
    echo "using * $*"
    echo "using @ $@"
    echo "using 0 $0"
    echo "using # $#" 
}
sample_output() {
    # is there any way to get function name
    # echo "function name is: $0"
    echo "1 argument is: $1"
    echo "2 argument is: $2"
}
dynamic_argument_parsing() {
    echo "We are processing arguments dynamically"
    arguments=$@
    for argument in $arguments
    do
        echo $argument
    done
}

test_me 1 2 3

sample_output "A" "B"

dynamic_argument_parsing "A"  "B" "C"

dynamic_argument_parsing 1 2 3 4 5 6 7 8 9 10