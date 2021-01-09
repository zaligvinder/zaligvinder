(declare-const X String)
; /^Content-Disposition\x3A\s*attachment/smi
(assert (not (str.in.re X (re.++ (str.to.re "/Content-Disposition:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "attachment/smi\x0a")))))
(check-sat)
