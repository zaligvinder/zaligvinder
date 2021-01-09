(declare-const X String)
; onBetaHost\x3ayouRootReferer\x3A
(assert (str.in.re X (str.to.re "onBetaHost:youRootReferer:\x0a")))
; /filename=[^\n]*\x2exwd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xwd/i\x0a")))))
; ^((0[1-9])|(1[0-2]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a"))))
(check-sat)
