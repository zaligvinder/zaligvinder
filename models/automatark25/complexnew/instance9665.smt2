(declare-const X String)
; comUser-Agent\u{3A}si=PORT\u{3D}\u{2F}pagead\u{2F}ads\?Host\u{3a}\u{2F}desktop\u{2F}
(assert (not (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{a}"))))
; yddznydqir\u{2f}eviaresflashdownloader\u{2E}com
(assert (not (str.in_re X (str.to_re "yddznydqir/eviaresflashdownloader.com\u{a}"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\u{3A}User-Agent\u{3A}AcmeprotocolSpy
(assert (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}")))
(check-sat)
