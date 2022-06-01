(declare-const X String)
; Host\u{3A}\d+\.compress.*sidebar\.activeshopper\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.com\u{a}"))))
(check-sat)
