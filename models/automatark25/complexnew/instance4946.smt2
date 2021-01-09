(declare-const X String)
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (str.to.re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\x0a")))
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.Searchdata2.activshopper.com\x0a")))))
; /^"|'+(.*)+"$|'$/
(assert (str.in.re X (re.union (str.to.re "/\x22") (re.++ (re.+ (str.to.re "'")) (re.+ (re.* re.allchar)) (str.to.re "\x22")) (str.to.re "'/\x0a"))))
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
