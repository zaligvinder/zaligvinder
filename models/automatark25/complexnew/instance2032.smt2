(declare-const X String)
; [^\d^\-^\,^\x20]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a")))))
; Referer\x3A\s+HXDownload\w+installs\x2Eseekmo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "installs.seekmo.com\x0a")))))
; dialupvpn\x5fpwd\s+HXDownloadupdailyinformation
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadupdailyinformation\x0a")))))
(check-sat)
