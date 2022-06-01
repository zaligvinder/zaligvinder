(declare-const X String)
; onBetaHost\u{3a}youRootReferer\u{3A}
(assert (str.in_re X (str.to_re "onBetaHost:youRootReferer:\u{a}")))
; /filename=[^\n]*\u{2e}xwd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xwd/i\u{a}")))))
; ^((0[1-9])|(1[0-2]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}"))))
(check-sat)
