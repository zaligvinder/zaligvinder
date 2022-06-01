(declare-const X String)
; ^[a-zA-Z]\w{3,14}$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 3 14) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; daosearch\u{2E}comSubject\u{3A}
(assert (str.in_re X (str.to_re "daosearch.comSubject:\u{a}")))
; Remote\u{3C}chat\u{3E}X-Mailer\u{3a}www\u{2e}proventactics\u{2e}com
(assert (not (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}"))))
(check-sat)
