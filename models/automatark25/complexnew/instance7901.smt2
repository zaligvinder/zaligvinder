(declare-const X String)
; /filename=[^\n]*\u{2e}pjpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}"))))
; <script type="text/javascript">
(assert (str.in_re X (str.to_re "<script type=\u{22}text/javascript\u{22}>\u{a}")))
; ^(([+]|00)39)?((3[1-6][0-9]))(\d{7})$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "+") (str.to_re "00")) (str.to_re "39"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}3") (re.range "1" "6") (re.range "0" "9"))))
; \d{2}\s?[A-Z]{1,3}\s?\d{2,4}
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
