(declare-const X String)
; /^\x2f[0-9A-F]{42}$/Um
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Um\x0a"))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a")))
(check-sat)
