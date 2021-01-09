(declare-const X String)
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2em4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.m4p") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2ep2g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a")))))
(check-sat)
