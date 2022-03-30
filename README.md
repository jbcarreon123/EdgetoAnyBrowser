# EdgetoAnyBrowser
A app that redirects `microsoft-edge:` URLs to normal URLs that can used by any browser

# How it works
Basically, it replaces the actual Microsoft Edge executable `msedge.exe` so it can run even the latest versions of Windows 10 and 11 without Image File Execution Options! I'm planning to add a IFEO option later.

It requires administrative previliges to install it though.

If you search on the web on Start Menu, it runs Microsoft Edge with this param:
`msedge.exe --edge-redirect=Windows.Protocol microsoft-edge:?launchContext1=Microsoft.Windows.Cortana_cw5n1h2txyewy&url=[URL]`

So my code gets the argument 2 and replaces `microsoft-edge:?launchContext1=Microsoft.Windows.Cortana_cw5n1h2txyewy&url=[URL]`
to `[URL]` and runs it on your default browser.

# Compiling
Afraid from downloading the EXE file or you want to modify it?
1. Download [AutoHotKey](https://autohotkey.com/download) and install it
2. Download the `msedge.ahk` on this repository
3. Right-click the `msedge.ahk` and click Compile Script
4. The file should appear on the same folder as the `msedge.ahk`. Enjoy!

# Program Comparisons
Name|[Edge Deflector](https://github.com/da2x/EdgeDeflector)|[ChrEdgeFkOff](https://github.com/AveYo/fox/blob/main/ChrEdgeFkOff.cmd)|[NoMoreEdge](https://github.com/HarshalKudale/NoMoreEdge)|[Search Deflector](https://github.com/spikespaz/search-deflector)|[MSEdgeRedirect](https://github.com/rcmaehl/MSEdgeRedirect/)|[EdgetoAnyBrowser](github.com/jbcarreon123/EdgetoAnyBrowser)
----|----|----|----|----|----|----|
Redirection Modes|URI Handler<br/><br/>|IFEO<br/><br/>|IFEO<br/><br/>|URI Handler<br/><br/>|URI Detection<br/>or IFEO|Replaces Edge Executable,<br/>URI Detection<br/> or IFEO<sup>**</sup>|
Redirects Search|☑|☑|☑|☑|☑|☑|
Installs without Admin|☑| | | |☑| 
Windows 11 Support| |☑|☑| |☑|☑|
Windows 10 21H2+ Support| |☑|☑| |☑|☑|
Windows on ARM Support| |☑|☑| | |
Installs System Wide| |☑|☑|☑, Optionally|☑|☑|
Can be silently Deployed| |☑|☑| |☑| |<sup>*</sup>|
Update Checker Module| | |☑|☑|☑|<sup>**</sup>|
Search Engine Customizations| | |☑, 8|☑, 14|☑, 9|<sup>**</sup>|
Search Engine Shortcut Support| | |☑, DDG !Bang| | |<sup>**</sup>|
Weather Forecast Customizations| | | | |☑, 6| |
Customizable Edge Support| | | | |☑|<sup>**</sup>|
Can be used Portably (USB)| | | | |☑| |
Supports GPO Registry Keys| | | | |☑| |

<sup>*</sup> Untested, <sup>**</sup> Will be featured on future builds