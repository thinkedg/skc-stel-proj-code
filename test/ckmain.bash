#!/bin/bash

echo '>>>>verifying that the main page can be displayed.<<<<<'

MAIN_PAGE=`curl localhost/main.html`


echo "$MAIN_PAGE" | grep 'Automation for the People'

