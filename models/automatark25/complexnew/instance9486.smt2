(declare-const X String)
; EFError\swww\u{2e}malware-stopper\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}"))))
; (\/\/)(.+)(\/\/)
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ re.allchar) (str.to_re "//\u{a}")))))
; ^(27|0)[0-9]{9}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "27") (str.to_re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
