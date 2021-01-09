(declare-const X String)
; actualnames\.com\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fast-look.comwww.maxifiles.com\x0a")))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a")))
; /filename=[^\n]*\x2easf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a"))))
(check-sat)
