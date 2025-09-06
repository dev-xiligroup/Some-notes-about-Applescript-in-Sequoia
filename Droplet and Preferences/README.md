# Example of Shortcuts and Preferences file.

## Preliminary notes

The Shortcuts app contains shortcuts or droplets, which themselves contain a series of actions. Naming is not easy because Shortcuts app is a container (whose elements are contained in a database). Technically, to identify each **shortcut**, MacOS gives it a unique identifier (preceded by “**com.apple.shortcuts.droplet**”).
Ex. = TestFolderAlias (771ECAF6-D00A-45C5-AC77-B6289F2523ED) 
As can be seen in the terminal via the command:
`$ shortcuts list --show-identifiers `
So be careful to check if there is an s at the end of the word shortcut. That's why I prefer to use the word droplet.
In the Shortcuts editor list, you can choose to display the shortcut in the dock. What happens? macOS adds an application to the Applications folder of the active user. (With a package contents).
If you remove this droplet from the dock, the application actually remains in the application folder...
If you want to use this example (template), you must first duplicate it and change the name. and that of the first action Text.

## purposes of the example
- Create a preferences file (.plist) that can be managed with the defaults command. This file can be used to store a usage history and dates.
- Create a folder Shortcuts/nameofthedroplet within the Application Support folder in ~/Library/. Inside we will add a symbolic line to the preferences file. This folder can be used later to store data for this droplet (file, image).

## step by step in the template example
1. the name of the droplet in the first action
2. Run shortcut Droplet_identifier to return the unique bundle identifier of the example. ( if no, stop and verify name in action 1)
3. Now test if this example has his own prefs plist file and his application support folder
4. If not a new prefs plist is created
5. In this pref, LastDateTime is updated
6. The only purpose of the droplet is to select a file and open it (and add it path in history inside “Recent_files” array)
7. Now the user can choose this file or choose from the file history(and clear recents list).
8. Finally the selected file is opened. (Pages need his own opener)

Of course, this is just one example, but it gives you an idea of what you can do with the Shortcuts app.

## About the regex tool
By using two regex-based actions (Match and Get Group), it is possible to quickly segment the results of scripts, avoiding lines and loops that are difficult to adjust.
In two places:
- when checking the couple droplet name / Identifier
- when filling the list of the history







