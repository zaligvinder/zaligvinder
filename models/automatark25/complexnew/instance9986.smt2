(declare-const X String)
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a")))))
; Host\x3A\s+ulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoycWinSession/client/*PORT1*\x0a"))))
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (str.to.re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\x0a"))))
; ^([\+][0-9]{1,3}([ \.\-])?)?([\(]{1}[0-9]{3}[\)])?([0-9A-Z \.\-]{1,32})((x|ext|extension)?[0-9]{1,4}?)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")"))) ((_ re.loop 1 32) (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "x") (str.to.re "ext") (str.to.re "extension"))) ((_ re.loop 1 4) (re.range "0" "9"))))))
(check-sat)
