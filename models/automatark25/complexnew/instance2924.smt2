(declare-const X String)
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in.re X (str.to.re "thereHost:select/Getwww.2-seek.com/search\x0a"))))
; /^[a-zA-Z0-9]+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a")))))
(check-sat)
