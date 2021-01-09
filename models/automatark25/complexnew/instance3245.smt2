(declare-const X String)
; DesktopHost\x3Aact=Microsoft
(assert (not (str.in.re X (str.to.re "DesktopHost:act=Microsoft\x0a"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
