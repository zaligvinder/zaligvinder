(declare-const X String)
; cdpViewWatcher\u{2F}cgi\u{2F}logurl\.cgiwww\u{2E}bydou\u{2E}com
(assert (not (str.in_re X (str.to_re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\u{a}"))))
(check-sat)
