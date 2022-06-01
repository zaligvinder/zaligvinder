(declare-const X String)
; Cookie\u{3a}AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))
(check-sat)
