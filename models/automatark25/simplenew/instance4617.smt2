(declare-const X String)
; background-image.[^<]*?;
(assert (str.in.re X (re.++ (str.to.re "background-image") re.allchar (re.* (re.comp (str.to.re "<"))) (str.to.re ";\x0a"))))
(check-sat)
