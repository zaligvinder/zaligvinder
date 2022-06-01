(declare-const X String)
; dl\u{2E}web-nexus\u{2E}net\d+www\u{2E}onlinecasinoextra\u{2E}comsqlads\.grokads\.com
(assert (str.in_re X (re.++ (str.to_re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
(check-sat)
