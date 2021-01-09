(declare-const X String)
; cdpViewWatcher\x2Fcgi\x2Flogurl\.cgiwww\x2Ebydou\x2Ecom
(assert (not (str.in.re X (str.to.re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\x0a"))))
(check-sat)
