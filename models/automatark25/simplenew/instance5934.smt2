(declare-const X String)
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Java/1./H\x0a")))))
(check-sat)
