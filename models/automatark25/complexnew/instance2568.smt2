(declare-const X String)
; /\/elections\.php\?([a-z0-9]+\u{3d}\d{1,3}\&){9}[a-z0-9]+\u{3d}\d{1,3}$/U
(assert (str.in_re X (re.++ (str.to_re "//elections.php?") ((_ re.loop 9 9) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\u{3A}www\u{2E}e-finder\u{2E}cc
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "DA") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:www.e-finder.cc\u{a}")))))
(check-sat)
