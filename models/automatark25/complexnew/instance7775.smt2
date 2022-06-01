(declare-const X String)
; gpstool\u{2e}globaladserver\u{2e}com\daction\u{2E}\w+data2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.com\u{a}")))))
; seqepagqfphv\u{2f}sfdX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}")))
; PASSW=.*www\u{2E}makemesearch\u{2E}com.*HBand,X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{a}"))))
(check-sat)
