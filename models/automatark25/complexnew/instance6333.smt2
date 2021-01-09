(declare-const X String)
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a")))))
; \x2Fnewsurfer4\x2FOK\r\nencodertvlistingsTM_SEARCH3
(assert (not (str.in.re X (str.to.re "/newsurfer4/OK\x0d\x0aencodertvlistingsTM_SEARCH3\x0a"))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))))))
; ^([6011]{4})([0-9]{12})$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (str.to.re "6") (str.to.re "0") (str.to.re "1"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
