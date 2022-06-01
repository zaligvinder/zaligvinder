(declare-const X String)
; /\/\?[0-9a-f]{32}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/Ui\u{a}")))))
(check-sat)
