(declare-const X String)
; cs\x2Eshopperreports\x2EcomActivityHost\x3AYeah\!User-Agent\x3AMicrosoft
(assert (not (str.in.re X (str.to.re "cs.shopperreports.comActivityHost:Yeah!User-Agent:Microsoft\x0a"))))
; Subject\x3a.*Host\x3a.*\x2Fproducts\x2Fspyblocs\x2F\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/products/spyblocs/\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a")))))
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a"))))
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (str.in.re X (re.++ (str.to.re "/USER ") (re.union (str.to.re "XP") (str.to.re "98") (str.to.re "95") (str.to.re "NT") (str.to.re "ME") (str.to.re "WIN") (str.to.re "2K3")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " * 0 :/mi\x0a"))))
(check-sat)
