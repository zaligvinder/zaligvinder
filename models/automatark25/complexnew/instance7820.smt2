(declare-const X String)
; ^(((Ctrl\+Alt\+Shift\+Cmd\+|Ctrl\+Shift\+Cmd\+|Ctrl\+Alt\+Shift\+|Ctrl\+Alt\+Cmd\+|Alt\+Shift\+Cmd\+|Shift\+Cmd\+|Ctrl\+Shift\+|Ctrl\+Cmd\+|Ctrl\+Alt\+|Alt\+Shift\+|Alt\+Cmd\+|Cmd\+|Alt\+)(F1[0-2]|F[1-9]|[A-Za-z0-9\-\=\[\]\\\;\'\,\.\/]))|(Shift\+)?(F1[0-2]|F[1-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Ctrl+Alt+Shift+Cmd+") (str.to.re "Ctrl+Shift+Cmd+") (str.to.re "Ctrl+Alt+Shift+") (str.to.re "Ctrl+Alt+Cmd+") (str.to.re "Alt+Shift+Cmd+") (str.to.re "Shift+Cmd+") (str.to.re "Ctrl+Shift+") (str.to.re "Ctrl+Cmd+") (str.to.re "Ctrl+Alt+") (str.to.re "Alt+Shift+") (str.to.re "Alt+Cmd+") (str.to.re "Cmd+") (str.to.re "Alt+")) (re.union (re.++ (str.to.re "F1") (re.range "0" "2")) (re.++ (str.to.re "F") (re.range "1" "9")) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "=") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ";") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "/"))) (re.++ (re.opt (str.to.re "Shift+")) (str.to.re "F") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")))) (str.to.re "\x0a")))))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HXDownload") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:ArcadeHourspjpoptwql/rlnjFrom:\x0a")))))
; http://www.mail-password-recovery.com/
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "mail-password-recovery") re.allchar (str.to.re "com/\x0a"))))
; ^[1-9]{1}[0-9]{3}\s?[a-zA-Z]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
