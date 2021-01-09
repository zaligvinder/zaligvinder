(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "User-Agent:upgrade.qsrch.info\x0a"))))
; /(\x17\x00|\x00\x5C)\x00w\x00u\x00a\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x17\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00w\x00u\x00a\x00e\x00x\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
(check-sat)
