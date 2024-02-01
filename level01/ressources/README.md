<!DOCTYPE html>
<html>
<body>
	<h1>Level 01</h1>
	<ul>
		<li>Came back to <code>/etc/passwd</code> file to retrieve the line on <strong>flag01</strong>
			<blockquote>
				<p><code>flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash</code></p>
			</blockquote>
		</li>
		<li>Then I tried to use the online cypher identifier I used last time but it didn&#39;t find anything relevant</li>
		<li>The last file was called john which helped me remember the existence of <em>johntheripper</em></li>
		<li>I installed it on my own machine</li>
		<li>Created the file <code>tocrack.txt</code> and used <em>johntheripper</em> on it
			<blockquote>
				<p>
				<code>john --show tocrack.txt</code>
				<code>flag01:abcdefg:3001:3001::/home/flag/flag01:/bin/bash</code>
				</p>
			</blockquote>
		</li>
		<li>So we can the the password here is : <code>abcdefg</code></li>
	</ul>
<body>
<html>
