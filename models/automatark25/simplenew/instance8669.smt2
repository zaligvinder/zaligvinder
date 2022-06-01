(declare-const X String)
; zmnjgmomgbdz\u{2f}zzmw\.gzt.*www\u{2E}altnet\u{2E}com.*User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)
