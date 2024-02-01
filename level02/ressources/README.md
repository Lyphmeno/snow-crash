<!DOCTYPE html>
<html>
<body>
	<h1>Level 02</h1>
	<ul>
		<li>We spawn with a <code>level02.pcap</code> file in root repository</li>
		<li>First thing we do is to retrieve it on our machine
			<blockquote>
				<p><code>scp -P 4242 level02@192.168.29.3:/home/user/level02/level02.pcap .</code></p>
			</blockquote>
		</li>
		<li>Next we need to understand what we need to do with this file</li>
		<li>PCAP file are meant to contain packet data</li>
		<li>We need something to read it so at first I used <em>tcpdump</em> but I wasn&#39;t able to undeerstand the result</li>
		<li>Best result I  got was using <em>tcpick</em>
			<blockquote>
				<p><code>tcpick -yP -r level02.pcap | tr -d &#39;\n&#39; &gt; picktest.tx</code></p>
			</blockquote>
		</li>
		<li>We cant see the result in the <em>picktest.txt</em> file. WE HAVE A PASSWORD -&gt; <code>ft_wandr...NDRel.L0L</code></li>
		<li>But hold on, it doesn&#39;t work</li>
		<li>I tried <code>tr -d &quot;.&quot;</code> but the password wasn't good.
		<li>Last thing I did was considering that dots where actually backspace since its like a log entry and the person using it must've type the <code>ndr</code> in minuscule but was wrong so deleted them and wrote them back in caps. Did the same thing for the <code>l</code>.
		<li>So I tried <code>ft_waNDReL0L</code> AND IT WORKED</li>
	</ul>
<body>
<html>