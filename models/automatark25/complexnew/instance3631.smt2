(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "a" "z")) (str.to.re ".jat/\x0a"))))
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "XBOX") (str.to.re "Nintendo Wii") (str.to.re "smarttv") (str.to.re "playstation") (str.to.re "hbbtv") (str.to.re "philipstv") (str.to.re "opera tv") (str.to.re "inettv")) (str.to.re "/\x0a"))))
; Host\x3a\s+e2give\.com\s+NETObservemedia\x2Edxcdirect\x2EcomSubject\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\x0a"))))
(check-sat)
