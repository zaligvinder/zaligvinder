(declare-const X String)
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}"))))
; Host\u{3A}hjhgquqssq\u{2f}pjmonHost\u{3A}Host\u{3A}A-311byName=Your\+Host\+is\u{3A}
(assert (not (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}"))))
(check-sat)
