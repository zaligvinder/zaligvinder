(declare-const X String)
; User-Agent\x3A\d+wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a")))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a")))
; ^[A-Z]{1}( |-)?[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a")))))
(check-sat)
