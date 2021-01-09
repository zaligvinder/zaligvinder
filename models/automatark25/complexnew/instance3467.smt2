(declare-const X String)
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a"))))
; Travel\s+version\s+lnzzlnbk\x2fpkrm\.finFILESIZE\x3EM1User-Agent\x3AAgentwww\x2Eweepee\x2EcomOnlineM1Host\x3A
(assert (str.in.re X (re.++ (str.to.re "Travel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finFILESIZE>\x13M1User-Agent:Agentwww.weepee.com\x1bOnlineM1Host:\x0a"))))
(check-sat)
