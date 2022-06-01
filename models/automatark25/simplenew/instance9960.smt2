(declare-const X String)
; as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=.*X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}\u{a}"))))
(check-sat)
