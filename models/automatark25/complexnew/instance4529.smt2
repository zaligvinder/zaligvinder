(declare-const X String)
; ^[a-zA-Z0-9\u{20}'\.]{8,64}[^\s]$
(assert (str.in_re X (re.++ ((_ re.loop 8 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "'") (str.to_re "."))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}"))))
; [+]346[0-9]{8}
(assert (not (str.in_re X (re.++ (str.to_re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}opus/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".opus/i\u{a}"))))
; Referer\u{3A}dialupvpn\u{5f}pwdwww\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}"))))
; /^\/[0-9]{5}\.jar$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re ".jar/U\u{a}"))))
(check-sat)
