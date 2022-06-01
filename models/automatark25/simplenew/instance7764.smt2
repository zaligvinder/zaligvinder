(declare-const X String)
; M\u{2E}zip.*w3who.*\u{2F}cgi\u{2F}logurl\.cgiMyPostdll\u{3F}HOST\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "M.zip") (re.* re.allchar) (str.to_re "w3who") (re.* re.allchar) (str.to_re "/cgi/logurl.cgiMyPostdll?HOST:\u{a}")))))
(check-sat)
