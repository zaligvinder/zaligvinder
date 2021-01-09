(declare-const X String)
; ^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "1")))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (str.in.re X (str.to.re "url=http:\x1bGamespyjspIDENTIFYserverHOST:Subject:\x0a")))
; ^(([0]?[1-9]|[1-2][0-3])(:)([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
