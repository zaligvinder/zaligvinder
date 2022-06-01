(declare-const X String)
; <(.|\n)*?>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">\u{a}")))))
(check-sat)
