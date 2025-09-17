# [UPDATE] from a file path (as string) to a file object

## from the precedent paragraph in main page (copy)
There are several ways to convert a path (string) into a file object. You can use run AppleScript with his POSIX objet. Here's another way, using only actions. This method does not take into account whether or not the slash / appears at the beginning of the file path like “/Users/iUser/Desktop/thefiletosee.rtf”
In the **get file from at action**, Two fields must be filled in. The first is the main folder (the root folder you select), the second is path to file (as string).
If no error, the output is the file object. The file is now available for display (open file) or processing by another program. This folder is independent of the computer where the shortcut is used. On your configuration, you will see the name of your root disk.

![screenshot of droplet’s actions](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/FilePath2fileObj.png)
To avoid the question when first opening and to avoid permission issues when outside the current user's space, here is another way to declare the root disk. It is based on a very simple AppleScript whose result is put into a variable ROOT_disk.

## Let's go deeper
The “Get file from at path” action is very powerful. It can be used for **files** or **folders**. 
It is an interactive action equivalent to POSIX file in AppleScript.
The result allows you to verify whether or not the file or folder **exists**.

Let's dig deeper to find the causes of crashes or error messages.
### File
On Ventura or Sequoia, it is possible to be based (from) on the root disk to get the **file** as an object from its path string. *But issues occurs with future Tahoe - Thanks peavine* ??? 
### Folder
For folders, this action and the result don’t work when “from” is lower/deeper than the current user path as object *even in Ventura and Sequoia*...

For the from field, which waits for an object, the action doesn't like to go back any further than the current user's folder. Although authorization is requested and accepted. This leads to process stoppages. Or strange error messages, or even a freeze requiring a restart. To get around these anomalies, analysis of the result provided by the action via AppleScript offers a few tips. 

![defining the root of the disk](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/Action_Get_File_from/RootPathObj_vr.png)

Following numerous tests of this action and subsequent ones for displaying or processing the results, it is clear that this AppleScript provides an effective solution for **processing lists of folders and files in string format starting at root disk** with the powerful action “Get File from at path”.
![screenshot of droplet’s actions](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/blob/main/Action_Get_File_from/FilePath2fileObj_vr.png)

Here, the example is given for a single path, but it can apply to complex processes based on a list of paths (stored in string format) in different locations on the disk.
This process allows you to work with files in the current user folder, as well as in other folders such as 'Users/Shared'.
[See tester in that page...](https://github.com/dev-xiligroup/Some-notes-about-Applescript-in-Sequoia/tree/main/Action_Get_File_from/GetType)

We'll see and test later on Tahoe. (M 250911)
[update 250917]
After more than a day of struggles, I was able to install/clone the Sequoia system on an external SSD drive and update it to Tahoe this morning. CCCloner was the solution to make this bootable SSD.
Tests with Shortcuts on our issue with the “Get File From at path” action and permissions led to the following conclusions.

The shortcut/droplet from Sequoia, where it was valid with a “from” as the root of the disk, works on Tahoe with out request ?.
After duplication (i.e., a new shortcut), there is a new request for authorization on this root, and when you launch it, you get the red error you reported.
Since AppleScript is still present in OS26, declaring the root of the disk via a tiny script (posix) works as expected (and as described in this Github repository).

