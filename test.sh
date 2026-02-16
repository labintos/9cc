#!/bin/bash
assert() {
<<<<<<< HEAD
	expected="$1"
	input="$2"

	./9cc "$input" > tmp.s
	cc -o tmp tmp.s
	./tmp
	actual="$?"

	if [ "$actual" = "$expected" ]; then
		echo "$input => $actual"
	else
		echo "$input => $expected expected, but got $actual"
		exit 1
	fi
=======
    expected="$1"
    input="$2"

    ./9cc "$input" > tmp.s
    gcc tmp.s -o tmp
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
>>>>>>> master
}

assert 0 0
assert 42 42
<<<<<<< HEAD
=======
assert 21 "5+20-4"
assert 41 " 12 + 34 - 5 "
>>>>>>> master

echo OK
