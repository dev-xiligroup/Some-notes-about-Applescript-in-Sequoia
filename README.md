# Some notes about Applescript in Sequoia

Following multiple developments on Mac Min M4 with MacOS Sequoia 15.6.1, here are some ideas and tips for AppleScript and the Shortcuts app.
## System Events
If applications are not scriptable, you can use the System Events process, provided you are familiar with the interface elements. The example provided will focus on PDF printing, with choice of name and destination folder.
## Reference to file
Another challenging topic is naming files and folders. Both Applescript and the Finder use the **colon** (:) as a separator in strings. The 'Posix File' object converts references of files using '/'.

This is very useful when AppleScripts are inserted into the flow of Shortcuts actions.
A POSIX file object is displayed as a **slash**-delimited path preceded by a POSIX file specifier.

In most cases, it is strongly recommended to use this POSIX file object outside of the process Finder to define variables that are then used within the process.
## Make a new (sub) folder
With Process Finder, to use "Make new folder," it is necessary to test for the existence of the object beforehand, which is why the shell command is more efficient.
[a link](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/ShellBetter2makeFolder.applescript)