(declare-const X String)
; /\x2em4b([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4b") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[0-4][0-9]{2}[\s][B][P][\s][0-9]{3}$
(assert (str.in.re X (re.++ (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "BP") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3Acdpnode=FILESIZE\x3E
(assert (str.in.re X (str.to.re "Host:cdpnode=FILESIZE>\x13\x0a")))
; /^\/\?[A-Za-z0-9_-]{15}=l3S/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re "=l3S/U\x0a"))))
; ^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
