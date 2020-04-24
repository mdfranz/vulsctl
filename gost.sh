#! /bin/sh -

if [ $# -eq 0 ]; then
	echo "specify [--redhat --debian]"
	exit 1
fi

target=$1
shift

docker pull vuls/gost

case "$target" in
	--redhat) docker run $DOCKER_ARGS \
		-v ${PWD}:/vuls \
		vuls/gost fetch ${@} redhat
		;;
	--debian) docker run $DOCKER_ARGS \
		-v ${PWD}:/vuls \
		vuls/gost fetch ${@} debian
		;;
	--*)  echo "specify [--redhat --debian]"
		exit 1
	    ;;
	*) echo "specify [--redhat --debian]"
		exit 1
	    ;;
esac

exit 0

