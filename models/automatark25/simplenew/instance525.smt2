(declare-const X String)
; \u{2F}cgi\u{2F}logurl\.cgi.*User-Agent\u{3A}.*Host\u{3A}www\u{2E}ZSearchResults\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:www.ZSearchResults.com\u{13}\u{a}"))))
(check-sat)
