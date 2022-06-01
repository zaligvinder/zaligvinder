(declare-const X String)
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}"))))
(check-sat)
