(declare-const X String)
; Client.*Peer\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Client") (re.* re.allchar) (str.to.re "Peer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ThistoIpHost:badurl.grandstreetinteractive.com\x0a"))))
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a")))
; /\?inf\=[0-9a-f]{8}\x2Ex\d{2}\x2E\d{8}\x2E/Ui
(assert (str.in.re X (re.++ (str.to.re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "./Ui\x0a"))))
(check-sat)
