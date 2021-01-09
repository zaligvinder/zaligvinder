(declare-const X String)
; e(vi?)?
(assert (not (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a")))))
; ^(X(-|\.)?0?\d{7}(-|\.)?[A-Z]|[A-Z](-|\.)?\d{7}(-|\.)?[0-9A-Z]|\d{8}(-|\.)?[A-Z])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "X") (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.opt (str.to.re "0")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z"))) (str.to.re "\x0a"))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
; /\x2edae([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dae") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^([a-zA-Z0-9!@#$%^&*()-_=+;:'"|~`<>?/{}]{1,5})$
(assert (str.in.re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re "|") (str.to.re "~") (str.to.re "`") (str.to.re "<") (str.to.re ">") (str.to.re "?") (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "\x0a"))))
(check-sat)
