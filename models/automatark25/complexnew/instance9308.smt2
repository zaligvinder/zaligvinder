(declare-const X String)
; [0-1]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "1")) (str.to.re "\x0a")))))
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (not (str.in.re X (str.to.re "Host:Host:sidebar.activeshopper.com\x0a"))))
(check-sat)
