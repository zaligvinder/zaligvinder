(declare-const X String)
; www\u{2E}ezula\u{2E}com.*FTP.*User-Agent\u{3A}containsw3whoreport
(assert (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "FTP") (re.* re.allchar) (str.to_re "User-Agent:containsw3whoreport\u{a}"))))
(check-sat)
