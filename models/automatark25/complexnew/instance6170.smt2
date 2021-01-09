(declare-const X String)
; dialupvpn\x5fpwd\s+HXDownloadupdailyinformation
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadupdailyinformation\x0a"))))
; ^R(\d){8}
(assert (str.in.re X (re.++ (str.to.re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; A-311Host\x3Alnzzlnbk\x2fpkrm\.finSubject\x3a
(assert (not (str.in.re X (str.to.re "A-311Host:lnzzlnbk/pkrm.finSubject:\x0a"))))
(check-sat)
