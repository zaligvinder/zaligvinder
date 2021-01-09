(declare-const X String)
; /\/r_autoidcnt\.asp\?mer_seq=\d[^\r\n]*\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//r_autoidcnt.asp?mer_seq=") (re.range "0" "9") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/") (re.* re.allchar) (str.to.re "loomcompany.com\x0a"))))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "Remote<chat>\x1bX-Mailer:\x13www.proventactics.com\x0a")))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
(check-sat)
