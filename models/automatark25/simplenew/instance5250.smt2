(declare-const X String)
; dialupvpn\x5fpwd\s+HXDownloadupdailyinformation
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadupdailyinformation\x0a")))))
(check-sat)
