#!/bin/bash
cd /home/wyg/website/mxonline3/;
uwsgi uwsgi.ini;
tail -f /dev/null
