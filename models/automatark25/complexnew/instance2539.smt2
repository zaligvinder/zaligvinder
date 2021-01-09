(declare-const X String)
; (facebook|twitter|youtube)
(assert (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a"))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "information") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a"))))
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) ((_ re.loop 0 47) (re.union (str.to.re "\x5cs") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (str.to.re "\x0a")))))
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "/rss") (re.* re.allchar) (str.to.re "Desktopcargo=report</title>\x0a")))))
(check-sat)
