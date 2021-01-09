(declare-const X String)
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a"))))
(check-sat)
