(declare-const X String)
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (str.in.re X (re.++ (str.to.re "/update/barcab/") (re.* re.allchar) (str.to.re "tn=") (re.* re.allchar) (str.to.re "id=") (re.* re.allchar) (str.to.re "version=/smi\x0a"))))
(check-sat)
