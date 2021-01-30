#!/bin/fish
if $argv = ""
	echo Git requires some necessary description.
end
hugo
for type in source public
	git add .
	git commit -m \"$argv\"
	git push origin master
	if type == source
		cd public
	else
		cd ..
	end
end
