(declare-const X String)
; Toolbar\s+wwwProbnymomspyo\x2fzowy
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwProbnymomspyo/zowy\x0a")))))
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (str.in.re X (re.++ (str.to.re "/update/barcab/") (re.* re.allchar) (str.to.re "tn=") (re.* re.allchar) (str.to.re "id=") (re.* re.allchar) (str.to.re "version=/smi\x0a"))))
; /\x2eotf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.otf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.* re.allchar) (str.to.re "Referer:GREATDripline\x0a")))))
; Host\x3A[^\n\r]*Travel[^\n\r]*From\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Travel") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:www.ZSearchResults.com\x13\x0a")))))
(check-sat)
