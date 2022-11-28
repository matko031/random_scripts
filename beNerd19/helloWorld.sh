#every message at position i has its duration at position i+1
messages=(
"Hello world!" 3 hello.png
"My name is Matko and this is my application for beNERD19" 3 myname.png
"Every time you finish reading the text, click on the image to go to the next part of this amazing guide to my life. I'm ready when you are ;) " 0 letsgo.png
"My story begins in Osijek, Croatia where I was born 20 years ago" 0 croatia.png
"Fast forward 16 year later and I am moving to live in Brussels with my family" 0 atomium.png 
"One more fast forward and it's 2019 and I'm studying computer science and electrical engineering at KU Leuven and am usually nerding out in my free time" 0 nerding.png
"In all those flash forwards I skipped one very important part..." 0 forgetting.png
"JOINING BEST!" 0 joinedBEST1.png
"I joined BEST last year in October and it was one of the best decisions I had ever made!" 0 joinedBEST2.png 
"During my first year in BEST I have been exploring all the different opportunities and possibilities and my eye fell on the IT department" 0 eye.png 
"Last week during the RM I have finally received some first hand information about it from the IT delegate of the RM" 0 rm.png
"It was also the first time I had heard about beNERD which made my inner nerd feel like in heaven" 0 innernerd.png
"Needless to say, when the call for the beNERD arrived, I immediately decided to apply." 0 application.png
"As far as my IT experience is concerned, I am far from being a professional, but I love messing around with my pc and solving random IT related problems" 0 itexperience.png
"I have some experience in pyhton and java, partially through university classes and partially through some small projects on my own" 0 pythonjava.jpg
"I also had a summer job last year where I worked on a company website where I got familiar with PHP, HTML, CSS and JS " 0 html.png
"Apart from that, I also worked shortly on a website for a friend using Django" 0 python.png
"Last, but not least, I am very familiar with the usage of various linux distributions since I use Arch linux as the main OS on my laptop" 0 arch.jpg
"That's all folks! I hope you enjoyed this short guide through my life and that we'll meet in Vienna :)" 0 end.png



)

messages_len=${#messages[@]}

for(( i=0; i<messages_len-1; i+=3 ))
do
	xcowsay -t ${messages[$i+1]} --bubble-at=0,-100 --image=./photos/${messages[$i+2]} ${messages[$i]}
	
done



