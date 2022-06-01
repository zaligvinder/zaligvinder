(declare-const X String)
; ovplSubject\u{3A}TencentTravelerClient\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}")))
; www\u{2E}freescratchandwin\u{2E}com\d+Server.*www\u{2E}cameup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to_re "Server") (re.* re.allchar) (str.to_re "www.cameup.com\u{13}\u{a}")))))
(check-sat)
