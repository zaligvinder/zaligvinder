(declare-const X String)
; \bfor\b.*[A-Za-z][<> ][\d]
(assert (str.in.re X (re.++ (str.to.re "for") (re.* re.allchar) (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ")) (re.range "0" "9") (str.to.re "\x0a"))))
; \d{2,4}
(assert (str.in.re X (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a")))))
(check-sat)
