--- a way to detect UI languages of an application

set theresult to do shell script "defaults read .GlobalPreferences ApplePerAppLanguageSelectionBundleIdentifiers"
if theresult contains id of application "Pages" then
	set theid to id of application "Pages"
	beep
	-- current language of app
	set theresult to do shell script "defaults read " & theid & " AppleLanguages"
end if
