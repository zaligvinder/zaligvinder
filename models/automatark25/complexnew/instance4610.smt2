(declare-const X String)
; dialupvpn\u{5f}pwd\s+HXDownloadupdailyinformation
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownloadupdailyinformation\u{a}"))))
; /filename=[^\n]*\u{2e}wri/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wri/i\u{a}")))))
; badurl\u{2E}grandstreetinteractive\u{2E}comFilteredHost\u{3A}e2give\.com\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (str.to_re "badurl.grandstreetinteractive.comFilteredHost:e2give.com/newsurfer4/\u{a}"))))
; www\u{2E}weepee\u{2E}com\s+www\u{2E}webfringe\u{2E}comwww\.123mania\.com\u{2F}0409
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.comwww.123mania.com/0409\u{a}")))))
; [$][0 -9]+
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.+ (re.union (str.to_re "0") (re.range " " "9"))) (str.to_re "\u{a}")))))
(check-sat)
