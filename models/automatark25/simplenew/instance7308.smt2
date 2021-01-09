(declare-const X String)
; Host\x3A\d+\.compress.*sidebar\.activeshopper\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.com\x0a"))))
(check-sat)
