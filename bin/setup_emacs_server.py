#!/usr/bin/env python3
import os

HOME = os.environ["HOME"]
PATH_TO_FILE = f"{HOME}/Library/LaunchAgents/gnu.emacs.daemon.plist"
CONTENT_OF_FILE = """\
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
  "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 <plist version="1.0">
<dict>
  <key>Label</key>
  <string>gnu.emacs.daemon</string>
  <key>ProgramArguments</key>
  <array>
    <string>/usr/local/bin/emacs</string>
    <string>--daemon</string>
  </array>
 <key>RunAtLoad</key>
 <true/>
 <key>ServiceDescription</key>
 <string>Gnu Emacs Daemon</string>
</dict>
</plist>"""

os.system(f"echo \"{CONTENT_OF_FILE}\" > \"{PATH_TO_FILE}\"")
with open(PATH_TO_FILE, "w", encoding="utf-8") as fp:
    fp.write(CONTENT_OF_FILE)

# Setup auto-starting of Emacs daemon on login.
# Note: Replace `load` with `unload` to disable.
os.system(f"launchctl load -w {PATH_TO_FILE}")

# Note: See here
#   -> https://stackoverflow.com/questions/23148787/why-emacsclient-cant-find-socket-after-executing-emacs-daemon
# for more information.
