(declare-const X String)
; /\u{2E}document\u{2E}insertBefore\s*\u{28}[^\u{2C}]+\u{29}/smi
(assert (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}"))))
(check-sat)
