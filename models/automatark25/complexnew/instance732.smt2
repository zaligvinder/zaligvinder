(declare-const X String)
; User-Agent\u{3A}X-Mailer\u{3a}Host\u{3A}dcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}Host:dcww.dmcast.com\u{a}")))
; ^\d{1,2}\/\d{2,4}$
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
