#!/bin/env bash

marco(){
	export MACRO=$(pwd)
}
polo(){
	cd "$MACRO"
}
