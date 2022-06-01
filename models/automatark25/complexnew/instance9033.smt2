(declare-const X String)
; ^
(assert (not (str.in_re X (str.to_re "\u{a}"))))
; ^[2-7]{1}[0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; hotbar\s+ocllceclbhs\u{2f}gthftpquickbruteUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "hotbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthftpquickbruteUser-Agent:\u{a}"))))
(check-sat)
