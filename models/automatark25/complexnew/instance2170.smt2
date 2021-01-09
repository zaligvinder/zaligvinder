(declare-const X String)
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a")))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "Host:AddressDaemonUser-Agent:User-Agent:\x0a"))))
; ^[A-Za-z0-9](\.[\w\-]|[\w\-][\w\-])(\.[\w\-]|[\w\-]?[\w\-]){0,30}[\w\-]?@[A-Za-z0-9\-]{3,63}\.[a-zA-Z]{2,6}$
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.union (re.++ (str.to.re ".") (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) ((_ re.loop 0 30) (re.union (re.++ (str.to.re ".") (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (re.opt (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.opt (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") ((_ re.loop 3 63) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a"))))
; ^[0-9]*[1-9]+[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
