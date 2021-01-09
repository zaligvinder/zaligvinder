(declare-const X String)
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a"))))
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (not (str.in.re X (str.to.re "node=Host:?search=versionContactNETObserve\x0a"))))
; www\x2Eweepee\x2Ecomhttp\x0D\x0ACurrentOwner\x3A
(assert (str.in.re X (str.to.re "www.weepee.com\x1bhttp\x0d\x0aCurrentOwner:\x0a")))
; ^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (str.to.re ":"))) (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; ^\d{5}$|^\d{5}-\d{4}$
(assert (not (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
