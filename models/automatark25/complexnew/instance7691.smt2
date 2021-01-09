(declare-const X String)
; Host\x3a\w+Host\x3A.*Host\x3aToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:ToolbarServerserver}{Sysuptime:\x0a")))))
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a"))))
(check-sat)
