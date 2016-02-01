#! /bin/sh

set -e

[ ! -L /root/.config/NzbDrone ] && ln -s /data /root/.config/NzbDrone

mono /opt/NzbDrone/NzbDrone.exe
