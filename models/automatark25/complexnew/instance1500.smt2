(declare-const X String)
; (a|A)
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "A")) (str.to.re "\x0a"))))
; /^([0-2]\d\d){75}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a")))
; /filename=[^\n]*\x2ecnt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cnt/i\x0a")))))
; (Word1|Word2).*?(10|[1-9])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "10") (re.range "1" "9")) (str.to.re "\x0aWord") (re.union (str.to.re "1") (str.to.re "2"))))))
(check-sat)
