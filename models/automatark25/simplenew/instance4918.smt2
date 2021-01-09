(declare-const X String)
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (not (str.in.re X (re.++ (re.* (re.comp (str.to.re "*"))) (re.opt (str.to.re "*")) (re.* (re.comp (str.to.re "*"))) (str.to.re "\x0a")))))
(check-sat)
