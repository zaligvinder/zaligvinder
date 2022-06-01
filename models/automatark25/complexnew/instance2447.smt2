(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\u{2E}comlogsHost\u{3A}version
(assert (not (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}"))))
; /filename=[^\n]*\u{2e}nab/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".nab/i\u{a}"))))
(check-sat)
