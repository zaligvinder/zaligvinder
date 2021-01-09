(declare-const X String)
; TM_SEARCH3SearchUser-Agent\x3Aas\x2Estarware\x2EcomM\x2EzipCasinoResults_sq=aolsnssignin
(assert (str.in.re X (str.to.re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\x0a")))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".pdf/U\x0a")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Referer:") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a"))))
; ([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)|([0-9]+)
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
