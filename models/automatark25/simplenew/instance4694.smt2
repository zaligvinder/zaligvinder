(declare-const X String)
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.+ (re.range "0" "9")) (str.to.re "JMailBoxHostGENERAL_PARAM2\x0a")))))
(check-sat)
