(declare-const X String)
; (-?(\d*\.\d{1}?\d*|\d{1,}))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "9")))))))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.* re.allchar) (str.to.re "Referer:GREATDripline\x0a")))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Software") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "FictionalUser-Agent:User-Agent:\x0a")))))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "fsbuffsearch.conduit.comocllceclbhs/gth\x0a")))
(check-sat)
