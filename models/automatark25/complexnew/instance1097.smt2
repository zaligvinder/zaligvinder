(declare-const X String)
; badurl\x2Egrandstreetinteractive\x2EcomFilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (str.to.re "badurl.grandstreetinteractive.comFilteredHost:e2give.com/newsurfer4/\x0a"))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (str.in.re X (re.++ (str.to.re "//images2//U\x0a") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; si=\s+ProAgentUI2Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "si=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgentUI2Host:00000www.zhongsou.com\x0a")))))
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a"))))
(check-sat)
