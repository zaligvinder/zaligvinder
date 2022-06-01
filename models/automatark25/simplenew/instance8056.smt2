(declare-const X String)
; www\u{2E}maxifiles\u{2E}com.*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.maxifiles.com") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)
