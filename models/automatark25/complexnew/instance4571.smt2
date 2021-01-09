(declare-const X String)
; HWAE.*wowokay\s%3fsearchresltX-Mailer\x3AisSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.* re.allchar) (str.to.re "wowokay") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13isSubject:\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiTrojanHost:\x0a"))))
(check-sat)
