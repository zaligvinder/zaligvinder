(declare-const X String)
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?php=receipt/Ui\x0a"))))
(check-sat)
