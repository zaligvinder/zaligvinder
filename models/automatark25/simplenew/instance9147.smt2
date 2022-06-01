(declare-const X String)
; Logger.*aresflashdownloader\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "aresflashdownloader.com\u{a}"))))
(check-sat)
