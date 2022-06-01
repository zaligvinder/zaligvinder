(declare-const X String)
; /filename=[^\n]*\u{2e}crx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".crx/i\u{a}"))))
; Uin=encodernotification\u{2F}toolbar\u{2F}Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Uin=encodernotification\u{13}/toolbar/Host:User-Agent:\u{a}"))))
(check-sat)
