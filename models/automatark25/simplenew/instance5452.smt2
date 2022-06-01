(declare-const X String)
; Host\u{3a}.*\u{2F}rss.*Desktopcargo=report\<\u{2F}title\>
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}"))))
(check-sat)
