(declare-const X String)
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=\x0a")))))
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlazeHost:trackhjhgquqssq/pjm\x0a"))))
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (str.to.re "Referer:dialupvpn_pwdwww.searchreslt.com\x0a")))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a"))))
(check-sat)
