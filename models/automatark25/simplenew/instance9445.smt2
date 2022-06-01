(declare-const X String)
; \u{5B}Static\w+www\.iggsey\.comUser-Agent\u{3A}X-Mailer\u{3a}Computer
(assert (not (str.in_re X (re.++ (str.to_re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.iggsey.comUser-Agent:X-Mailer:\u{13}Computer\u{a}")))))
(check-sat)
