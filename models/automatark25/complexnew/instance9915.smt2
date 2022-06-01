(declare-const X String)
; Host\u{3A}Host\u{3A}User-Agent\u{3A}Serverad\u{2E}mokead\u{2E}com
(assert (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}")))
; Version\s+User-Agent\u{3A}bindmqnqgijmng\u{2f}oj
(assert (str.in_re X (re.++ (str.to_re "Version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}"))))
; /\u{2E}document\u{2E}insertBefore\s*\u{28}[^\u{2C}]+\u{29}/smi
(assert (not (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}")))))
(check-sat)
