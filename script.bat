@ECHO OFF

set host=foo.foo.com
set localPath=D:/foo/bar
set remotePath=foo/bar/aaa
set keyPath=D:/pkey.ppk

winscp /rawconfig "Interface\SynchronizeParams=4" /command "open sftp://%host% -privatekey=%keyPath%" ^
    "synchronize remote -delete  %localPath% %remotePath%" ^
    "keepuptodate -delete %localPath% %remotePath%" ^
    "exit"

::rawconfig = existing files only
