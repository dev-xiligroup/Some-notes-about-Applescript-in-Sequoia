

set newfolder to POSIX path of (alias ((path to (desktop folder) as string) & "fold bu:bibi:"))

-- option -p  With this option specified, no error will be reported if a directory given as an operand already exists.
-- no need to test exists before as with finder command
-- quoted form to name with space
do shell script "mkdir -p -v " & quoted form of newfolder

