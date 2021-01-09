(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgiUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiUser-Agent:\x0a"))))
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (str.to.re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\x0a")))
; /filename=[^\n]*\x2emax/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (not (str.in.re X (re.++ (str.to.re "/listoverridecount") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "9")) (re.range "0" "9")) (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8")) (str.to.re "/i\x0a")))))
; ^([1-9]([0-9])?)(\.(([0])?|([1-9])?|[1]([0-1])?)?)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.opt (re.union (re.opt (str.to.re "0")) (re.opt (re.range "1" "9")) (re.++ (str.to.re "1") (re.opt (re.range "0" "1"))))))) (str.to.re "\x0a") (re.range "1" "9") (re.opt (re.range "0" "9")))))
(check-sat)
