(declare-const X String)
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a"))))
; Information\s+Host\x3A.*com
(assert (not (str.in.re X (re.++ (str.to.re "Information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "com\x0a")))))
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hotbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthftpquickbruteUser-Agent:\x0a"))))
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a"))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a")))
(check-sat)
