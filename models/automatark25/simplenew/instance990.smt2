(declare-const X String)
; url=\"([^\[\]\"]*)\"
(assert (not (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
(check-sat)
