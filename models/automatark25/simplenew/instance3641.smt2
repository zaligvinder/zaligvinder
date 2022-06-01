(declare-const X String)
; /\.(jsp|html)\?[^\r\n]*PG=SPEEDBAR/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.") (re.union (str.to_re "jsp") (str.to_re "html")) (str.to_re "?") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "PG=SPEEDBAR/Ui\u{a}")))))
(check-sat)
