(declare-const X String)
; /^\u{2f}[a-z\d]{1,8}\.exe$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/Ui\u{a}"))))
(check-sat)
