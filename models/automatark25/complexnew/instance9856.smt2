(declare-const X String)
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.comaresflashdownloader.com\x0a"))))
; /\x2epui([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pui") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:%3flinkautomatici.comSubject:Host:\x0a")))))
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (str.in.re X (re.++ (str.to.re "com") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\x0a"))))
(check-sat)
