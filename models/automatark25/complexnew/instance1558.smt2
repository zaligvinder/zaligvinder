(declare-const X String)
; /filename=[^\n]*\x2emswmm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mswmm/i\x0a"))))
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a"))))
(check-sat)
