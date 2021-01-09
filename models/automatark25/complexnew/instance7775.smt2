(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.com\x0a")))))
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a")))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a"))))
(check-sat)
