(declare-const X String)
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a"))))
; ^([1][12]|[0]?[1-9])[\/-]([3][01]|[12]\d|[0]?[1-9])[\/-](\d{4}|\d{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a")))))
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (str.in.re X (str.to.re "node=Host:?search=versionContactNETObserve\x0a")))
; /filename=[^\n]*\x2ekvl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a"))))
(check-sat)
