(declare-const X String)
; \|(http.*)\|(.*)$/ig
(assert (not (str.in.re X (re.++ (str.to.re "||") (re.* re.allchar) (str.to.re "/ig\x0ahttp") (re.* re.allchar)))))
(check-sat)
