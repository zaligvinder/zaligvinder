(declare-const X String)
; Host\u{3a}\s+hostiedesksearch\.dropspam\.com\u{2F}bi\u{2F}servlet\u{2F}Thinstall
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\u{a}"))))
(check-sat)
