(declare-const X String)
; function.*WEBCAM-.*User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "function") (re.* re.allchar) (str.to_re "WEBCAM-") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; CodeguruBrowserMyPostStableWeb-MailUser-Agent\u{3A}195\.225\.
(assert (not (str.in_re X (str.to_re "CodeguruBrowserMyPostStableWeb-MailUser-Agent:195.225.\u{a}"))))
(check-sat)
