(declare-const X String)
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:User-Agent:\x0a"))))
; ^(([a-zA-Z][a-zA-Z_$0-9]*(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.)?([a-zA-Z][a-zA-Z_$0-9]*)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))) (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9")))))))
; /\x2elnk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.lnk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|
(assert (str.in.re X (re.union (re.++ (str.to.re "SELECT") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (str.to.re "*") (str.to.re ")") (str.to.re "(") (str.to.re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "FROM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a"))))
; /^[a-zA-Z0-9]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a"))))
(check-sat)
