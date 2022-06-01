(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to_re "\u{a}"))))
; Host\u{3A}.*rt[^\n\r]*Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}")))))
; logs\d+X-Mailer\u{3a}\d+url=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
(check-sat)
