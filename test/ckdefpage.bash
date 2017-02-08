#!/bin/bash

echo '>>>>verifying that the default page can be displayed.<<<<<'

DEFAULT_PAGE=`curl localhost`


echo "$DEFAULT_PAGE" | grep 'It works!'

