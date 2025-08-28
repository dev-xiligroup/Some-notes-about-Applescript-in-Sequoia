# Some notes about Applescript in Sequoia

Following multiple developments on Mac Min M4 with MacOS Sequoia 15.6.1, here are some ideas and tips for AppleScript and the Shortcuts app.
## System Events
If applications are not scriptable, you can use the System Events process, provided you are familiar with the interface elements. The example provided will focus on PDF printing, with choice of name and destination folder.

See the [folder](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/SavePDFwithSystemEvents)

## Reference to file
Another challenging topic is naming files and folders. It is also challenging to define their paths. Both Applescript and the Finder use the **colon** (:) as a separator in strings. The 'Posix File' object converts references of files using **slash** /‘.
[this script 1](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/testFolders.applescript)

This is very useful when AppleScripts are inserted into the flow of Shortcuts actions.
A POSIX file object is displayed as a **slash**-delimited path preceded by a POSIX file specifier.

In most cases, it is strongly recommended to use this POSIX file object outside of the process Finder to define variables that are then used within the process.
[this script 2](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/Essai_POSIX.applescript)

See also this [pdf document](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/PDF_docs/ShCu_ExampleWithInputVariables.pdf) ScreenShots of  Shortcuts.

## Make a new (sub) folder
With Process Finder, to use "Make new folder," it is necessary to test for the existence of the object beforehand, which is why the shell command is more efficient.
[this script](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/ShellBetter2makeFolder.applescript)

## With ShortCuts and action “run Shell Script”

With “I ❤️ booklets” application (and his action inside Shortcuts), a booklet can be produced in your printer tray by creating a workflow.
See the [folder](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/PrintBookletWorkflow)

## ShortCuts and code explained in PDF documents

The PDF contains explanations about shortcuts including those about the code inside.This AppleScript code is copyable.

See the [folder with PDF](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/PDF_docs)

## soon more tips...