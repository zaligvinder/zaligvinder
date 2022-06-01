(declare-const X String)
; /\?inf\=[0-9a-f]{8}\u{2E}x\d{2}\u{2E}\d{8}\u{2E}/Ui
(assert (str.in_re X (re.++ (str.to_re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "./Ui\u{a}"))))
(check-sat)
