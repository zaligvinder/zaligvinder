(declare-const X String)
; ^[[V|E|J|G]\d\d\d\d\d\d\d\d]{0,9}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "[") (str.to_re "V") (str.to_re "|") (str.to_re "E") (str.to_re "J") (str.to_re "G")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") ((_ re.loop 0 9) (str.to_re "]")) (str.to_re "\u{a}")))))
; WindowsAcmeReferer\u{3A}
(assert (not (str.in_re X (str.to_re "WindowsAcmeReferer:\u{a}"))))
; /filename=[^\n]*\u{2e}xcf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xcf/i\u{a}"))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
(check-sat)
