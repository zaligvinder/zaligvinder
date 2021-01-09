(declare-const X String)
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\x0a")))))
; Center\w+Host\x3aiz=iMeshBar
(assert (str.in.re X (re.++ (str.to.re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar\x0a"))))
; Subject\x3ALOGX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "Subject:LOGX-Mailer:\x13\x0a"))))
; Referer\x3ATencentTraveler
(assert (not (str.in.re X (str.to.re "Referer:TencentTraveler\x0a"))))
(check-sat)
