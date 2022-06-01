(declare-const X String)
; /\/stat_d\/$/U
(assert (not (str.in_re X (str.to_re "//stat_d//U\u{a}"))))
; ^(([0]?[1-9]|[1-2][0-3])(:)([0-5][0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))))
; logs\d+X-Mailer\u{3a}\d+url=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
(check-sat)
