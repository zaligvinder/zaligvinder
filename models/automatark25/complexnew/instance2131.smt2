(declare-const X String)
; ^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 1) (re.union (re.range "0" "9") (str.to_re "k") (str.to_re "K"))) (str.to_re "\u{a}")))))
; Host\u{3A}HANDYwww\u{2E}purityscan\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}"))))
; Theef2\sHost\u{3A}\s+User-Agent\u{3a}www\u{2E}sogou\u{2E}comUser-Agent\u{3A}MyPostToolbar
(assert (str.in_re X (re.++ (str.to_re "Theef2") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:www.sogou.comUser-Agent:MyPostToolbar\u{a}"))))
; Cookie\u{3a}.*Host\u{3A}.*ldap\u{3A}\u{2F}\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
(check-sat)
