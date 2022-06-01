(declare-const X String)
; /version\u{3D}[\u{22}\u{27}][^\u{22}\u{27}]{1024}/
(assert (not (str.in_re X (re.++ (str.to_re "/version=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}")))))
(check-sat)
