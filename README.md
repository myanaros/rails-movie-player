# Rails Movie Player

Can be easily ran on a linux machine with rails installed by following these commands...

* `rake db:migrate`
* `HOST_IP="your_ip" rails s -b 0.0.0.0`

Visit the site at localhost:3000, upload videos and watch away while using a
different device (like a cell phone) to control the video.

The idea of the setup here is to have one device designated as your playback
device, like a laptop hooked up to a TV via HDMI. Then you can use any other
device you want to control the playback of the movie, like a smart phone.
