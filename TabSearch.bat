@echo off

REM  You can change chrome to any browser of your choosing that is downloaded. It has been tested with FireFox, Chrome and Brave. 
REM Note: The brave browser has shown problems with hardware acceleration so it is reccomended you turn this off. 

set browser=Chrome


REM You can change the search engine by coping and pasting the query URL for the search engine provided below or your own. 

REM DuckDuckGo: https://duckduckgo.com/?q=   Bing: https://www.bing.com/search?q=  Google: https://www.google.com/search?q=


set searchengine=https://www.google.com/search?q=

Echo.
Echo.
Echo Please copy what you want searched then press enter. The program will shut down automatically.
Echo.

pause

Echo Loading...

for /f "tokens=*" %%g in ('powershell get-clipboard') do ( 
    start "" %browser% "%searchengine%%%g"
)

