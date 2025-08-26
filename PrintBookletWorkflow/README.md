# Workflow to print a pdf paginated in a workflow with application “I ❤️ booklet” from Douwere

With ShortCuts, after building the booklet, the printer receives the paginated pdf to be printed 2 pages per side of sheet..
![screenshot]()


A shell use command LPR

`‌lpr $4 -P $1 -# $3 -o media=$2 -o number-up=2 -o sides=two-sided-short-edge`

The target printer (and his good name for lpr can be found with **lpstat** -a *(with underscore replacing -)* OKI_C5750_FBD3A9 and not with - like in visible name in printer center ;) -p -d give default…
