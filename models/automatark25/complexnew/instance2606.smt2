(declare-const X String)
; www\u{2E}lookster\u{2E}netnotificationuuid=qisezhin\u{2f}iqor\.ym
(assert (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}")))
; ^(192\.168\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "192.168.") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to_re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5"))) (str.to_re "\u{a}")))))
; com.*is[^\n\r]*Host\u{3A}\s+User-Agent\u{3A}u=serverFILE\u{2F}xml\u{2F}toolbar\u{2F}check=at\u{3a}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}"))))
; ([.])([a-z,1-9]{3,4})(\/)
(assert (not (str.in_re X (re.++ (str.to_re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (str.to_re ",") (re.range "1" "9"))) (str.to_re "/\u{a}")))))
; GREAT\d+X-Mailer\u{3a}\d+url=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "GREAT") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
(check-sat)
