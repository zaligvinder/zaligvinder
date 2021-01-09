(declare-const X String)
; AnalSpy\-LockedacezSubject\x3A
(assert (not (str.in.re X (str.to.re "AnalSpy-LockedacezSubject:\x0a"))))
; ^([A-Z]{2}[\s]|[A-Z]{2})[\w]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
