(declare-const X String)
; /myversion\u{7c}(\d\u{2e}){3}\d\u{d}\u{a}/
(assert (not (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}")))))
(check-sat)
