(declare-const X String)
; &#\d{2,5};
(assert (str.in.re X (re.++ (str.to.re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to.re ";\x0a"))))
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
(check-sat)
