<!DOCTYPE html>
<html>
<body>
	<h1>Level 00</h1>
	<p>This one was quite fast.</p>
	<ul>
		<li>First of all I went to the <code>/etc/passwd</code> file to check if there was something</li>
		<li>I think I found the password of the <strong>flag01</strong> which I saved for later<blockquote>
		<p><code>flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash</code></p>
		</blockquote>
		</li>
		<li>Then I just used the <code>find</code> command on the <strong>flag00</strong> group to see if there was something interesting<blockquote>
		<p><code>find / -group flag00</code></p>
		</blockquote>
		</li>
		<li>Then i found this <code>/usr/sbin/john</code> file which caught my attention since its the only file we had rights on</li>
		<li>Decided to <code>cat</code> it and it had this inside : <code>cdiiddwpgswtgt</code>. I immediately understood that this was a <strong>caesar code</strong> so I used a website to find the best fitting rotation.</li>
		<li>It was finally a <em>ROT+15</em> and gave us : <code>nottoohardhere</code></li>
	</ul>
</body>
</html>