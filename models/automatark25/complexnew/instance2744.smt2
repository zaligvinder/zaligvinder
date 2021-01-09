(declare-const X String)
; (0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19|20)\\d\\d)
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "-\x0a") (re.union (str.to.re "19") (str.to.re "20")) (str.to.re "\x5cd\x5cd"))))
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (not (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "isHost:are\x0a")))))
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (not (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (str.in.re X (str.to.re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\x0a")))
(check-sat)
