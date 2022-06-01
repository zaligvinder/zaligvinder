(declare-const X String)
; User-Agent\u{3A}[^\n\r]*aadserver\dYOUR\u{2F}xml\u{2F}toolbar\u{2F}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "aadserver") (re.range "0" "9") (str.to_re "YOUR/xml/toolbar/\u{a}"))))
; /\u{2e}slk([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.slk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; name\u{2e}cnnic\u{2e}cn\u{2F}bar_pl\u{2F}chk_bar\.fcgiHost\u{3A}\u{7C}Connected
(assert (str.in_re X (str.to_re "name.cnnic.cn/bar_pl/chk_bar.fcgiHost:|Connected\u{a}")))
; /filename=[^\n]*\u{2e}wal/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wal/i\u{a}"))))
(check-sat)
