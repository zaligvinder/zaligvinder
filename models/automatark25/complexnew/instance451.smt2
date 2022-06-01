(declare-const X String)
; Desktop.*Hello\u{2E}.*Referer\u{3A}Toolbar
(assert (not (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}")))))
; Host\u{3A}Informationwww\u{2E}zhongsou\u{2E}comLitequick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}")))
; /filename=[^\n]*\u{2e}pui/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pui/i\u{a}")))))
; areKeyloggerver=www\u{2E}snap\u{2E}com
(assert (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}")))
; href(\s*)=(\s*)('|")http:\/\/(.*)(("|'))
(assert (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "'") (str.to_re "\u{22}")) (str.to_re "http://") (re.* re.allchar) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "\u{a}"))))
(check-sat)
