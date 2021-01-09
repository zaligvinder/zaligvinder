(declare-const X String)
; ^(((Ctrl\+Alt\+Shift\+Cmd\+|Ctrl\+Shift\+Cmd\+|Ctrl\+Alt\+Shift\+|Ctrl\+Alt\+Cmd\+|Alt\+Shift\+Cmd\+|Shift\+Cmd\+|Ctrl\+Shift\+|Ctrl\+Cmd\+|Ctrl\+Alt\+|Alt\+Shift\+|Alt\+Cmd\+|Cmd\+|Alt\+)(F1[0-2]|F[1-9]|[A-Za-z0-9\-\=\[\]\\\;\'\,\.\/]))|(Shift\+)?(F1[0-2]|F[1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Ctrl+Alt+Shift+Cmd+") (str.to.re "Ctrl+Shift+Cmd+") (str.to.re "Ctrl+Alt+Shift+") (str.to.re "Ctrl+Alt+Cmd+") (str.to.re "Alt+Shift+Cmd+") (str.to.re "Shift+Cmd+") (str.to.re "Ctrl+Shift+") (str.to.re "Ctrl+Cmd+") (str.to.re "Ctrl+Alt+") (str.to.re "Alt+Shift+") (str.to.re "Alt+Cmd+") (str.to.re "Cmd+") (str.to.re "Alt+")) (re.union (re.++ (str.to.re "F1") (re.range "0" "2")) (re.++ (str.to.re "F") (re.range "1" "9")) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "=") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ";") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "/"))) (re.++ (re.opt (str.to.re "Shift+")) (str.to.re "F") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")))) (str.to.re "\x0a"))))
; (IE-?)?[0-9][0-9A-Z\+\*][0-9]{5}[A-Z]
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "IE") (re.opt (str.to.re "-")))) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re "+") (str.to.re "*")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (not (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:FILESIZE>\x13\x0a")))))
; /filename=[^\n]*\x2eafm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".afm/i\x0a")))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
