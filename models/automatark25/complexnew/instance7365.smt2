(declare-const X String)
; User-Agent\u{3A}Host\u{3a}\u{22}The
(assert (not (str.in_re X (str.to_re "User-Agent:Host:\u{22}The\u{a}"))))
; PASSW=\s+\u{2F}ta\u{2F}NEWS\u{2F}.*loomcompany\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
; Google\s+jupitersatellites\u{2E}biz\s+Eyewww\u{2E}ccnnlc\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eyewww.ccnnlc.com\u{13}\u{a}")))))
; Desktop.*Hello\u{2E}.*Referer\u{3A}Toolbar
(assert (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}"))))
(check-sat)
