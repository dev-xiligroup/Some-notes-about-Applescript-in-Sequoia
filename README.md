# Some notes about Applescript in Sequoia


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

See also this [pdf document](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/PDF_docs/ShCu_ExampleWithInputVariables.pdf) ScreenShots of  Shortcuts. It explains the names of the folders and their paths.

## [UPDATE] from a file path (as string) to a file object
There are several ways to convert a path (string) into a file object. You can use run AppleScript with his POSIX objet. Here's another way, using only actions. This method does not take into account whether or not the slash / appears at the beginning of the file path like “/Users/iUser/Desktop/thefiletosee.rtf”
In the **get file from at action**, Two fields must be filled in. The first is the main folder (the root folder you select), the second is path to file (as string).
If no error, the output is the file object. The file is now available for display (open file) or processing by another program. This folder is independent of the computer where the shortcut is used. On your configuration, you will see the name of your root disk.

![screenshot of droplet’s actions](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/FilePath2fileObj.png)

## Make a new (sub) folder
With Process Finder, to use "Make new folder," it is necessary to test for the existence of the object beforehand, which is why the shell command is more efficient.
[this script](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/ShellBetter2makeFolder.applescript)

## With ShortCuts and action “run Shell Script”

With “I ❤️ booklets” application (and his action inside Shortcuts), a booklet can be produced in your printer tray by creating a workflow.
See the [folder](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/PrintBookletWorkflow)

## ShortCuts and code explained in PDF documents

The PDF contains explanations about shortcuts including those about the code inside.This AppleScript code is copyable.

See the [folder with PDF](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/PDF_docs)

## About one shortcut (droplet) and making his preferences file (plist) like current app.
See the [folder with PDF](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/Droplet%20and%20Preferences)

## soon more tips...