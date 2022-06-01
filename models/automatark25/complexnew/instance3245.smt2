(declare-const X String)
; DesktopHost\u{3A}act=Microsoft
(assert (not (str.in_re X (str.to_re "DesktopHost:act=Microsoft\u{a}"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
