(declare-const X String)
; (([a-z']?[a-z' ]*)|([a-z][\.])?([a-z][\.]))
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (re.range "a" "z") (str.to.re "'"))) (re.* (re.union (re.range "a" "z") (str.to.re "'") (str.to.re " ")))) (re.++ (re.opt (re.++ (re.range "a" "z") (str.to.re "."))) (re.range "a" "z") (str.to.re "."))) (str.to.re "\x0a")))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a"))))
; /^\/[\w-]{48}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
; devSoft\x27s\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "devSoft's\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
(check-sat)
