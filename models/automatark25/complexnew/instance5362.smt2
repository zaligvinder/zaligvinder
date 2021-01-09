(declare-const X String)
; Subject\x3a\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!User-Agent:\x0a"))))
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (not (str.in.re X (re.++ (re.* (str.to.re "0")) (re.opt (str.to.re "-")) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a")))))
; ^(0\.|([1-9]([0-9]+)?)\.){3}(0|([1-9]([0-9]+)?)){1}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (str.to.re "0.") (re.++ (str.to.re ".") (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
(check-sat)
