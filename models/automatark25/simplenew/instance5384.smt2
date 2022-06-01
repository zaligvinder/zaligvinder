(declare-const X String)
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.+ (re.range "0" "9")) (str.to_re "JMailBoxHostGENERAL_PARAM2\u{a}"))))
(check-sat)
