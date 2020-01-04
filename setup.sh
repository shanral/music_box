# install mp3 player
sudo apt-get install mpg123

# install youtube-dl from source
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# download Tartini's Devil's Trill Sonata and rename
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 https://www.youtube.com/watch?v=K-6KJgFdmuQ
mv Tartini\ -\ Kreisler\ -\ Devil\'s\ Trill\ \(Il\ trillo\ del\ diavolo\)-K-6KJgFdmuQ.mp3 ~/tartini.mp3

# change audio channel to analog
amixer cset numid=3 1

# create execution script in home drive
cp play.sh ~
