(declare-const X String)
; Host\u{3A}YOURcache\u{2E}everer\u{2E}comwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
; Host\u{3A}.*client\u{2E}baigoo\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
; Logger\w+searchreslt\dSubject\u{3A}HANDY\u{2F}rssScaner
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt") (re.range "0" "9") (str.to_re "Subject:HANDY/rssScaner\u{a}"))))
(check-sat)
