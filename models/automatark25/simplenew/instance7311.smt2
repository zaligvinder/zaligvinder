(declare-const X String)
; /[?&]filename=[^&]*?\u{2e}\u{2e}\u{2f}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "filename=") (re.* (re.comp (str.to_re "&"))) (str.to_re "..//Ui\u{a}")))))
(check-sat)
