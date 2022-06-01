(declare-const X String)
; FTP.*www\u{2E}wordiq\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
; Word\w+My\s+\u{22}TheZC-BridgeUser-Agent\u{3A}serverUSER-Attached
(assert (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "My") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}TheZC-BridgeUser-Agent:serverUSER-Attached\u{a}"))))
; /filename=[^\n]*\u{2e}paq8o/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".paq8o/i\u{a}")))))
; /\/m1\.exe$/U
(assert (not (str.in_re X (str.to_re "//m1.exe/U\u{a}"))))
; deskwizz\u{2E}comReportsadblock\u{2E}linkz\u{2E}comUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "deskwizz.comReportsadblock.linkz.comUser-Agent:\u{a}"))))
(check-sat)
