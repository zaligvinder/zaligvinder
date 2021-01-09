(declare-const X String)
; ^[a-zA-Z0-9\s.\-_']+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "_") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; .*\$AVE|\$ave.*
(assert (not (str.in.re X (re.union (re.++ (re.* re.allchar) (str.to.re "$AVE")) (re.++ (str.to.re "$ave") (re.* re.allchar) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2esami/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sami/i\x0a")))))
(check-sat)
