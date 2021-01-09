(declare-const X String)
; ^(4915[0-1]|491[0-4]\d|490\d\d|4[0-8]\d{3}|[1-3]\d{4}|[1-9]\d{0,3}|0)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "4915") (re.range "0" "1")) (re.++ (str.to.re "491") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "490") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "8") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "3") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a")))))
; <[^>]*\n?.*=("|')?(.*\.jpg)("|')?.*\n?[^<]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "\x0a")) (re.* re.allchar) (str.to.re "=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* re.allchar) (re.opt (str.to.re "\x0a")) (re.* (re.comp (str.to.re "<"))) (str.to.re ">\x0a") (re.* re.allchar) (str.to.re ".jpg")))))
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a"))))
; \x22Thewebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a"))))
(check-sat)
