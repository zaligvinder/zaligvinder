(declare-const X String)
; /filename=[^\n]*\x2exwd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xwd/i\x0a")))))
; ^[1-9]0?$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.opt (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
