(declare-const X String)
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a"))))
; ^09(73|74|05|06|15|16|17|26|27|35|36|37|79|38|07|08|09|10|12|18|19|20|21|28|29|30|38|39|89|99|22|23|32|33)\d{3}\s?\d{4}
(assert (str.in.re X (re.++ (str.to.re "09") (re.union (str.to.re "73") (str.to.re "74") (str.to.re "05") (str.to.re "06") (str.to.re "15") (str.to.re "16") (str.to.re "17") (str.to.re "26") (str.to.re "27") (str.to.re "35") (str.to.re "36") (str.to.re "37") (str.to.re "79") (str.to.re "38") (str.to.re "07") (str.to.re "08") (str.to.re "09") (str.to.re "10") (str.to.re "12") (str.to.re "18") (str.to.re "19") (str.to.re "20") (str.to.re "21") (str.to.re "28") (str.to.re "29") (str.to.re "30") (str.to.re "38") (str.to.re "39") (str.to.re "89") (str.to.re "99") (str.to.re "22") (str.to.re "23") (str.to.re "32") (str.to.re "33")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (not (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a")))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
(check-sat)
