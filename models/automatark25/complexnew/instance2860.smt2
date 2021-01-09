(declare-const X String)
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
; (^4\d{12}$)|(^4[0-8]\d{14}$)|(^(49)[^013]\d{13}$)|(^(49030)[0-1]\d{10}$)|(^(49033)[0-4]\d{10}$)|(^(49110)[^12]\d{10}$)|(^(49117)[0-3]\d{10}$)|(^(49118)[^0-2]\d{10}$)|(^(493)[^6]\d{12}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "4") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "4") (re.range "0" "8") ((_ re.loop 14 14) (re.range "0" "9"))) (re.++ (str.to.re "49") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "3")) ((_ re.loop 13 13) (re.range "0" "9"))) (re.++ (str.to.re "49030") (re.range "0" "1") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "49033") (re.range "0" "4") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "49110") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "49117") (re.range "0" "3") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "49118") (re.range "0" "2") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "\x0a493") (re.comp (str.to.re "6")) ((_ re.loop 12 12) (re.range "0" "9")))))))
; Host\x3A\s+www\.iggsey\.comcs\x2Esmartshopper\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.comcs.smartshopper.com\x0a"))))
; /filename=[^\n]*\x2ecsv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a")))))
(check-sat)
