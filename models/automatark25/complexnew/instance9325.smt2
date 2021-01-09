(declare-const X String)
; [a-z0-9]{1,11}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in.re X (re.++ (str.to.re "www.proventactics.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
