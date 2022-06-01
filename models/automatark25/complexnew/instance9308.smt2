(declare-const X String)
; [0-1]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "1")) (str.to_re "\u{a}")))))
; Host\u{3A}Host\u{3a}sidebar\.activeshopper\.com
(assert (not (str.in_re X (str.to_re "Host:Host:sidebar.activeshopper.com\u{a}"))))
(check-sat)
