(declare-const X String)
; /^(8-?|\+?7-?)?(\(?\d{3}\)?)-?(\d-?){6}\d$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (str.to.re "8") (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "+")) (str.to.re "7") (re.opt (str.to.re "-"))))) (re.opt (str.to.re "-")) ((_ re.loop 6 6) (re.++ (re.range "0" "9") (re.opt (str.to.re "-")))) (re.range "0" "9") (str.to.re "/\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "www.altnet.com\x1b") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a"))))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; /\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\x2d[a-z0-9\x2d\x2e]+(\x3a\d{1,5})?\r\n/Hi
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com-") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a/Hi\x0a"))))
(check-sat)
