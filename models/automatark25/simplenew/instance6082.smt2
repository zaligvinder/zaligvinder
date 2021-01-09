(declare-const X String)
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a"))))
(check-sat)
