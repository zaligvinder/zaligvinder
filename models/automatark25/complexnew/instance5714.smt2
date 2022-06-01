(declare-const X String)
; /filename=[^\n]*\u{2e}wmv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmv/i\u{a}"))))
; User-Agent\u{3A}readyHost\u{3A}Host\u{3A}Subject\u{3A}wininetproducts
(assert (str.in_re X (str.to_re "User-Agent:readyHost:Host:Subject:wininetproducts\u{a}")))
; Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
; ProSpywww\u{2E}emp3finder\u{2E}comwww
(assert (not (str.in_re X (str.to_re "ProSpywww.emp3finder.comwww\u{a}"))))
(check-sat)
