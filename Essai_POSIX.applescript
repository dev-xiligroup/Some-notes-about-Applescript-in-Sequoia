
--The variable passed to POSIX object must be a string outside of Finder.

set ExportFolder to (path to (desktop folder) as string) & "temp:"

set pPictureThing to POSIX path of (alias ((path to (desktop folder) as string) & "toto.png"))
-- "/Users/imichel/Desktop/toto.png" - duplicate need item or alias 

-- Convert POSIX path into colon path
set ColonPath to POSIX file pPictureThing -- as string

tell application "Finder" to duplicate ColonPath to ExportFolder with replacing

--result : document file "toto.png" of folder "temp" of folder "Desktop" of folder "imichel" of folder "Users" of startup disk of application "Finder"
