(declare-const X String)
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a")))
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a")))
; dialupvpn\x5fpwd\s+HXDownloadupdailyinformation
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadupdailyinformation\x0a"))))
; /^\/[a-f0-9]{8}\/[a-f0-9]{7,8}\/$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 7 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//U\x0a"))))
(check-sat)
