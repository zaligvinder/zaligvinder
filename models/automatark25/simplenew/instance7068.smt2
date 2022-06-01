(declare-const X String)
; hotbar\s+ocllceclbhs\u{2f}gthftpquickbruteUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "hotbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthftpquickbruteUser-Agent:\u{a}")))))
(check-sat)
