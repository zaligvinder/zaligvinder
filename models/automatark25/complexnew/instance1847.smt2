(declare-const X String)
; /filename=[^\n]*\u{2e}ppsx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppsx/i\u{a}"))))
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}") (re.opt (str.to_re "i")) (str.to_re "e") (re.opt (str.to_re "a")) (re.opt (str.to_re "u")) (re.opt (re.union (str.to_re "r") (str.to_re "(") (str.to_re "e") (str.to_re ")") (str.to_re "?") (str.to_re "|") (str.to_re "x"))))))
; ^(.*)
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}")))))
; \u{2F}NFO\u{2C}Registered.*Host\u{3A}\s+TPSystemHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "/NFO,Registered") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:\u{a}")))))
; /filename=[^\n]*\u{2e}asf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asf/i\u{a}"))))
(check-sat)
