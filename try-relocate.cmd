extproc sh
#!/bin/sh
install_dir=i:/emx.add
perl -S pfind . \
	-f \
	'/[-.]/' \
	'!/\.(lib|a|exe|dll|html|\d|c|aux|gif|dvi|tex|cmd|h|hh|def|pdf|png|txt|map|xml|lyx|css)$/' \
	'=~ s,((?<=[='"'"'"\s])|(?<=-[IL]))/usr/local,'"$install_dir,g" \
	prt
