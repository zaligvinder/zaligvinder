(declare-const X String)
; /filename=[^\n]*\u{2e}jmh/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jmh/i\u{a}"))))
; ProPOWRSTRPquick\u{2E}qsrch\u{2E}comReferer\u{3A}
(assert (not (str.in_re X (str.to_re "ProPOWRSTRPquick.qsrch.comReferer:\u{a}"))))
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
