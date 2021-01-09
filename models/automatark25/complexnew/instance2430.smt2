(declare-const X String)
; /filename=[^\n]*\x2ecov/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cov/i\x0a"))))
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "*"))) (re.opt (str.to.re "*")) (re.* (re.comp (str.to.re "*"))) (str.to.re "\x0a"))))
(check-sat)
