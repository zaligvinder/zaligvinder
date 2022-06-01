(declare-const X String)
; Windows\d+BlackFiltereddaosearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Windows") (re.+ (re.range "0" "9")) (str.to_re "BlackFiltereddaosearch.com\u{a}"))))
(check-sat)
