(declare-const X String)
; (""|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
(check-sat)
