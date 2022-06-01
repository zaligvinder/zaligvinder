(declare-const X String)
; /\u{2e}aif[cf]?([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.aif") (re.opt (re.union (str.to_re "c") (str.to_re "f"))) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
