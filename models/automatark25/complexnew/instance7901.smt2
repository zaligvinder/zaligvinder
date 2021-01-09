(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
; <script type="text/javascript">
(assert (str.in.re X (str.to.re "<script type=\x22text/javascript\x22>\x0a")))
; ^(([+]|00)39)?((3[1-6][0-9]))(\d{7})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) (str.to.re "39"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a3") (re.range "1" "6") (re.range "0" "9"))))
; \d{2}\s?[A-Z]{1,3}\s?\d{2,4}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
