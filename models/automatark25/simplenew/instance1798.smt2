(declare-const X String)
; com\u{2F}index\.php\?tpid=.*pop\u{2E}popuptoast\u{2E}com.*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "com/index.php?tpid=") (re.* re.allchar) (str.to_re "pop.popuptoast.com") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)
