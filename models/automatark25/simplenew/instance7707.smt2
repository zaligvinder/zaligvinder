(declare-const X String)
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "*"))) (re.opt (str.to_re "*")) (re.* (re.comp (str.to_re "*"))) (str.to_re "\u{a}"))))
(check-sat)
