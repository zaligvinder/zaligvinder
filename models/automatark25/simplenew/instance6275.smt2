(declare-const X String)
; PASSW=.*www\u{2E}makemesearch\u{2E}com.*HBand,X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{a}"))))
(check-sat)
