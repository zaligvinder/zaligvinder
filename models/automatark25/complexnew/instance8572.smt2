(declare-const X String)
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "HBand,") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
; <img[^>]*src=\"?([^\"]*)\"?([^>]*alt=\"?([^\"]*)\"?)?[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<img") (re.* (re.comp (str.to.re ">"))) (str.to.re "src=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")) (re.opt (re.++ (re.* (re.comp (str.to.re ">"))) (str.to.re "alt=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; requested.*zmnjgmomgbdz\x2fzzmw\.gzt\s+Reportsdaosearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "requested") (re.* re.allchar) (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reportsdaosearch.com\x0a"))))
; \.exe\s+ZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridgev.xml/NFO,Registered\x0a"))))
(check-sat)
