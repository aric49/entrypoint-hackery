#!/bin/bash

set -ex

function cleanup {
  echo "Roger that!  Clean up!"

}

function another {
  echo "This is another function"
}


trap "cleanup" SIGTERM SIGKILL


echo "Starting container...."


another
sleep 120 & wait



echo "Container going down!"

exit 0
