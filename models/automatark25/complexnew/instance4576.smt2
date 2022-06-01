(declare-const X String)
; A-311ServerUser-Agent\u{3A}scn\u{2e}mystoretoolbar\u{2e}comWindowswww\.trackhits\.ccHost\u{3a}
(assert (not (str.in_re X (str.to_re "A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}Windowswww.trackhits.ccHost:\u{a}"))))
; Stealthwww\u{2E}myarmory\u{2E}comresultsmaster\u{2E}com
(assert (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}")))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; /filename=[^\n]*\u{2e}wps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}"))))
(check-sat)
