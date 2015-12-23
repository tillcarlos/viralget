#!/bin/bash

DIR=$(dirname $0)
HTPROOT="/var/www/viralget.com/"
OFFLINEPATH="$DIR/.."

WEBPATH="$HTPROOT"
SSH_SERVER="vs.tielefeld.com"
SSH_USER="www-data"

EXCLUDE=" --exclude .git --exclude meta --exclude asset-sources --exclude wp-config.php  --exclude node_modules"

#gulp --production

#rsync -avz --delete $OFFLINEPATH/ $SSH_USER@$SSH_SERVER:$WEBPATH
rsync -avz $EXCLUDE --delete $OFFLINEPATH $SSH_USER@$SSH_SERVER:$WEBPATH

#scp $OFFLINEPATH/lib/config_production.php $SSH_USER@$SSH_SERVER:$WEBPATH/lib/config.php

#ls dist/styles | grep 'main-.*' | xargs -I {} scp $OFFLINEPATH/dist/styles/{}  #$SSH_USER@$SSH_SERVER:$WEBPATH/templates/head_inline_css.php

echo "Deploy finished"






