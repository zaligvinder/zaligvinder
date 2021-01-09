(declare-const X String)
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; Subject\x3areportGatorNavExcel
(assert (str.in.re X (str.to.re "Subject:reportGatorNavExcel\x0a")))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:HANDYwww.purityscan.com\x0a")))
(check-sat)
