(declare-const X String)
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (str.in.re X (re.++ (str.to.re "//load_module.php?user=") (re.union (str.to.re "n1") (str.to.re "1") (str.to.re "2") (str.to.re "11")) (str.to.re "/U\x0a"))))
(check-sat)
