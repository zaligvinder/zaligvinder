(declare-const X String)
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a"))))
; \.\s|$(\n|\r\n)
(assert (str.in.re X (re.union (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a")))))
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/Guptacharloomcompany.com\x0a"))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a")))))
(check-sat)
