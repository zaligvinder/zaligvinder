(declare-const X String)
; /\u{3e}\u{d}\u{a}SUBJECT\u{3a} (\d{1,3}\u{2e}){3}\d{1,3}\u{7c}[^\r\n]*\u{7c}\d{2,4}\u{d}\u{a}/G
(assert (not (str.in_re X (re.++ (str.to_re "/>\u{d}\u{a}SUBJECT: ") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "|") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "|") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/G\u{a}")))))
(check-sat)
