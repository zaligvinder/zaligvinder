(declare-const X String)
; (facebook|twitter|youtube)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a")))))
(check-sat)
