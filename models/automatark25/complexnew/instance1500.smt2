(declare-const X String)
; (a|A)
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "\u{a}"))))
; /^([0-2]\d\d){75}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "/P\u{a}")))))
; Referer\u{3A}Host\u{3A}Host\u{3A}Subject\u{3A}online-casino-searcher\.comnetid=Excite
(assert (str.in_re X (str.to_re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\u{a}")))
; /filename=[^\n]*\u{2e}cnt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cnt/i\u{a}")))))
; (Word1|Word2).*?(10|[1-9])
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "10") (re.range "1" "9")) (str.to_re "\u{a}Word") (re.union (str.to_re "1") (str.to_re "2"))))))
(check-sat)
