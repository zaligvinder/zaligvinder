(declare-const X String)
; User-Agent\u{3A}.*User-Agent\u{3A}.*spyblini\u{2E}inidata\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{a}")))))
(check-sat)
