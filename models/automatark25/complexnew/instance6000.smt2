(declare-const X String)
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a"))))
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "Mo") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Tu") (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "sday"))))) (re.++ (str.to.re "We") (re.opt (re.++ (str.to.re "d") (re.opt (str.to.re "nesday"))))) (re.++ (str.to.re "Th") (re.opt (re.++ (str.to.re "u") (re.opt (str.to.re "rsday"))))) (re.++ (str.to.re "Fr") (re.opt (re.++ (str.to.re "i") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Sa") (re.opt (re.++ (str.to.re "t") (re.opt (str.to.re "urday"))))) (re.++ (str.to.re "Su") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day")))))) (str.to.re "\x0a"))))
; /^\x2fwp-content\x2fthemes\x2f[A-Za-z0-9]\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (str.in.re X (re.++ (str.to.re "//wp-content/themes/") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to.re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/Ui\x0a"))))
; Pass-Onseqepagqfphv\x2fsfdcargo=dnsgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "Pass-Onseqepagqfphv/sfdcargo=dnsgpstool.globaladserver.com\x0a"))))
(check-sat)
