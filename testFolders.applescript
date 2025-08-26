-- Applescript
set my_ref to ((path to application support from user domain) as string) & "Shortcuts:"
-- "HD250G:Users:theuser:Library:Application Support:Shortcuts:"

tell application "Finder"
	-- only inside process finder if sub folder Shortcuts exists (see exemple with shell
	
	if folder "myshortcuts" of alias my_ref exists then -- need alias because my_ref is string
		beep
	else
		make new folder at my_ref with properties {name:"myshortcuts"}
	end if
	set scriptsFolder to folder "myshortcuts" of alias my_ref
end tell

set aliasscriptsFolder to scriptsFolder as alias
set posixpath to POSIX path of aliasscriptsFolder

-- POSIX = "/Users/theuser/Library/Application Support/Shortcuts/myshortcuts/"
