(declare-const X String)
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a")))
; [0-9]{4}[A-Z]{2}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
