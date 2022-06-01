(declare-const X String)
; \r\nSTATUS\u{3A}\dHost\u{3a}Referer\u{3A}ServerSubject\u{3a}
(assert (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}"))))
; node=Host\u{3A}\u{3F}search\u{3D}versionContactNETObserve
(assert (not (str.in_re X (str.to_re "node=Host:?search=versionContactNETObserve\u{a}"))))
; www\u{2E}weepee\u{2E}comhttp\u{D}\u{A}CurrentOwner\u{3A}
(assert (str.in_re X (str.to_re "www.weepee.com\u{1b}http\u{d}\u{a}CurrentOwner:\u{a}")))
; ^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.++ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (str.to_re ":"))) (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; ^\d{5}$|^\d{5}-\d{4}$
(assert (not (str.in_re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
