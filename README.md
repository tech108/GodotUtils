<h1>Godot Utilities</h1>
<h2>Purpose</h2>
Game Development has taught me there are way too many things that should have simple pre-built solutions. So I am creating this repo to hold universal utilities to place into any of my games. We're starting with a timer and as time goes on I will try to add any new utilites I build in other projects.

If your seeing this, hopefully it can help!

<h2>Utilities</h2>
<h3>Timer</h3>
For creating a quick and easy game timer that updates every second to show the player how much time is left. All you need to worry about is 3-4 things. First instantiate the Timer Node wherever you want.<br>
<pre>
1) Set the Time in Seconds in the <b>Inspector</b><br>
2) Connect to the "time_changed" signal (Used to update the time in the UI)<br>
    a) Connected function needs to take in a String, then set your UI Time Left Label time - Format M:SS<br>
3) Connect to the "time_ended" signal <b>(OPTIONAL)</b><br>
    a) Useful for displaying Game Over, etc<br>
4) Call "startTimer()" on Timer Node when your ready!!
</pre>

Signing Off<br>
<b>MrTech</b>
