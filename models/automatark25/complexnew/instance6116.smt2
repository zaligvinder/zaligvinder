(declare-const X String)
; linkautomatici\x2EcomAID\x2FYourUser-Agent\x3AtoBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (str.to.re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\x0a"))))
; (\d+)?-?(\d+)-(\d+)
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emet/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".met/i\x0a")))))
; /\xFF\xFE\x3F\x10\x00\x00.{14}[\x2Bx\x2Fa-z0-9]{20}/smi
(assert (str.in.re X (re.++ (str.to.re "/\xff\xfe?\x10\x00\x00") ((_ re.loop 14 14) re.allchar) ((_ re.loop 20 20) (re.union (str.to.re "+") (str.to.re "x") (str.to.re "/") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/smi\x0a"))))
; Host\x3a\s+e2give\.com\s+NETObservemedia\x2Edxcdirect\x2EcomSubject\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\x0a"))))
(check-sat)
