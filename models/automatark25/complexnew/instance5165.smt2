(declare-const X String)
; addrwww\u{2E}trustedsearch\u{2E}comX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}")))
; \<script[^>]*>[\w|\t|\r\|\W]*?</script>
(assert (not (str.in_re X (re.++ (str.to_re "<script") (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "|") (str.to_re "\u{9}") (str.to_re "\u{d}") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</script>\u{a}")))))
; \.?[a-zA-Z0-9]{1,}$
(assert (str.in_re X (re.++ (re.opt (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; (^[0][2][1579]{1})(\d{6,7}$)
(assert (str.in_re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}02") ((_ re.loop 1 1) (re.union (str.to_re "1") (str.to_re "5") (str.to_re "7") (str.to_re "9"))))))
(check-sat)
