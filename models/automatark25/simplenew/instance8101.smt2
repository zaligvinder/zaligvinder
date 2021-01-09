(declare-const X String)
; ^\\w*$
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.* (str.to.re "w")) (str.to.re "\x0a")))))
(check-sat)
