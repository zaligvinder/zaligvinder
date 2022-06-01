(declare-const X String)
; (facebook|twitter|youtube)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "facebook") (str.to_re "twitter") (str.to_re "youtube")) (str.to_re "\u{a}")))))
(check-sat)
