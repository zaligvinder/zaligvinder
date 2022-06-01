(declare-const X String)
; /TimeToLive=[^&]*?(%60|\u{60})/iP
(assert (not (str.in_re X (re.++ (str.to_re "/TimeToLive=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "%60") (str.to_re "`")) (str.to_re "/iP\u{a}")))))
(check-sat)
