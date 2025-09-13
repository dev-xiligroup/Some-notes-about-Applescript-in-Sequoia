# About Get type shortcuts action

Below is the result of a test to discover how shortcuts app (and actions) defines files or folders from anywhere on your disk with **Get Type action**.

## first observation
Get type returns easily type for **file**, folder BUT 
- if file extension is rtf or rtfd, return is “Rich text”.
- if file extension is plist, return Dictionary instead of file 

When permissions are tested (stat -p or stat -Sp to return mode number or xrw line)... It is possible to test the folder (d) that contains inaccessible files of the ‘second user’ (see 6 & 7) (only the AppleScript 'try' command can detect these conditional actions). The shortcut's 'Get file from at path' action stops with a red error message indicating “can view this file”.
## permissions
The 'do shell script' function can be used to analyse file permissions if they are accessible. As with the Finder folder icon displaying a red no entry sign, neither r nor w are visible in the last two-thirds of the access line.(6)

### JSON = Here is the resulting dictionary.
```
{
    "7": {
        "path": "/Users/seconduser/Documents/ForTests.pages",
        "result": "no access"
    },
    "3": {
        "path": "/Users/Shared/Available_docs/theinfo.plist",
        "result": "Dictionary - -rw-r--r--"
    },
    "8": {
        "path": "/Users/curUser/Documents/local_temp_copies/testrtfnod.rtf",
        "result": "Rich text - -rw-r--r--"
    },
    "4": {
        "path": "/Users/curUser/Documents/local_temp_copies/AppFirstStart_test.app",
        "result": "File - drwxr-xr-x"
    },
    "5": {
        "path": "/Users/seconduser/Public/ScriptsNotes.pages",
        "result": "File - -rw-r--r--"
    },
    "1": {
        "path": "/Users/curUser/Documents/local_temp_copies/Memo_M4_Scripts.rtfd",
        "result": "Rich text - drwxr-xr-x"
    },
    "6": {
        "path": "/Users/seconduser/Documents",
        "result": "Folder - drwx------"
    },
    "2": {
        "path": "/Users/curUser/Documents/local_temp_copies/ScriptsNotes.pages",
        "result": "File - -rw-r--r--"
    }
}
```

## Three screenshots of the tester droplet
![Part 1/3]()
![Part 2/3]()
![Part 3/3]()
