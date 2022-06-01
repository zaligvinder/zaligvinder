(declare-const X String)
; FTP.*www\u{2E}wordiq\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}")))))
; Host\u{3a}\s+hostiedesksearch\.dropspam\.com\u{2F}bi\u{2F}servlet\u{2F}Thinstall
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\u{a}")))))
; for\sinternalcyber@yahoo\u{2E}comHeadersRedirectionHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirectionHost:\u{a}")))))
(check-sat)
