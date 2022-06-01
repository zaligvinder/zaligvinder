(declare-const X String)
; \u{2F}bar_pl\u{2F}chk_bar\.fcgi\s+adblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}")))))
; User-Agent\u{3A}\d+wjpropqmlpohj\u{2f}lo\s+media\u{2E}dxcdirect\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
; /\u{2f}soft(64|32)\u{2e}dll$/U
(assert (str.in_re X (re.++ (str.to_re "//soft") (re.union (str.to_re "64") (str.to_re "32")) (str.to_re ".dll/U\u{a}"))))
(check-sat)
