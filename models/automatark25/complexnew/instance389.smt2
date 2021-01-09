(declare-const X String)
; /^\x2f[0-9]{4,10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^[a-zA-Z]{1}[\w\sa-zA-Z\d_]*[^\s]$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
(check-sat)
