(declare-const X String)
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SbAts") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.com\x0a"))))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a")))))
; (<input )(.*?)(>)
(assert (str.in.re X (re.++ (str.to.re "<input ") (re.* re.allchar) (str.to.re ">\x0a"))))
(check-sat)
