(declare-const X String)
; ^(((Ctrl\+Alt\+Shift\+Cmd\+|Ctrl\+Shift\+Cmd\+|Ctrl\+Alt\+Shift\+|Ctrl\+Alt\+Cmd\+|Alt\+Shift\+Cmd\+|Shift\+Cmd\+|Ctrl\+Shift\+|Ctrl\+Cmd\+|Ctrl\+Alt\+|Alt\+Shift\+|Alt\+Cmd\+|Cmd\+|Alt\+)(F1[0-2]|F[1-9]|[A-Za-z0-9\-\=\[\]\\\;\'\,\.\/]))|(Shift\+)?(F1[0-2]|F[1-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Ctrl+Alt+Shift+Cmd+") (str.to.re "Ctrl+Shift+Cmd+") (str.to.re "Ctrl+Alt+Shift+") (str.to.re "Ctrl+Alt+Cmd+") (str.to.re "Alt+Shift+Cmd+") (str.to.re "Shift+Cmd+") (str.to.re "Ctrl+Shift+") (str.to.re "Ctrl+Cmd+") (str.to.re "Ctrl+Alt+") (str.to.re "Alt+Shift+") (str.to.re "Alt+Cmd+") (str.to.re "Cmd+") (str.to.re "Alt+")) (re.union (re.++ (str.to.re "F1") (re.range "0" "2")) (re.++ (str.to.re "F") (re.range "1" "9")) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "=") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ";") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "/"))) (re.++ (re.opt (str.to.re "Shift+")) (str.to.re "F") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")))) (str.to.re "\x0a")))))
; (23:59:59)|([01]{1}[0-9]|2[0-3]):((00)|(15)|(30)|(45))+:(00)
(assert (str.in.re X (re.union (str.to.re "23:59:59") (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.+ (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))) (str.to.re ":00\x0a")))))
; /\x2ehhk([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.hhk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2eurl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.url") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(\d{2,3}|\(\d{2,3}\))?[ ]?\d{3,4}[-]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
