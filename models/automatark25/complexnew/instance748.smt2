(declare-const X String)
; xbqyosoe\u{2f}cpvmwww\u{2e}urlblaze\u{2e}netconfigINTERNAL\.ini
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\u{a}")))
; \u{7C}Connected\s+adblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "|Connected") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}"))))
; [A-Za-z_.0-9-]+@{1}[a-z]+([.]{1}[a-z]{2,4})+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re ".") (re.range "0" "9") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "@")) (re.+ (re.range "a" "z")) (re.+ (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 2 4) (re.range "a" "z")))) (str.to_re "\u{a}")))))
(check-sat)
