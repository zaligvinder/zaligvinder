(declare-const X String)
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4p/i\x0a")))))
; ^([a-zA-Z0-9@*#]{8,15})$
(assert (str.in.re X (re.++ ((_ re.loop 8 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "@") (str.to.re "*") (str.to.re "#"))) (str.to.re "\x0a"))))
; [\t ]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a"))))
(check-sat)
