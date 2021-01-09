(declare-const X String)
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a")))))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (re.++ (str.to.re "tv.180solutions.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "have") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Dayspassword;0;Incorrect\x0a")))))
(check-sat)
