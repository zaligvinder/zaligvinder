(declare-const X String)
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:YOURcache.everer.comwww.purityscan.com\x0a")))
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "client.baigoo.com\x0a")))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a"))))
(check-sat)
