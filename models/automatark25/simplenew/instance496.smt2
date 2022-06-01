(declare-const X String)
; /\u{2f}soft(64|32)\u{2e}dll$/U
(assert (not (str.in_re X (re.++ (str.to_re "//soft") (re.union (str.to_re "64") (str.to_re "32")) (str.to_re ".dll/U\u{a}")))))
(check-sat)
