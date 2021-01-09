(declare-const X String)
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (not (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a"))))
; /\x2Faws\d{1,5}\.jsp\x3F/i
(assert (str.in.re X (re.++ (str.to.re "//aws") ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".jsp?/i\x0a"))))
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "\x0a"))))
; /User-Agent\x3a\sMSIE.*\x3b\sNT.*\x3b\sAV.*\x3b\sOV.*\x3b\sNA.*VR\x28PH5.0\sW20130912/H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "MSIE") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "NT") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "AV") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "OV") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "NA") (re.* re.allchar) (str.to.re "VR(PH5") re.allchar (str.to.re "0") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "W20130912/H\x0a")))))
; ^~/[0-9a-zA-Z_][0-9a-zA-Z/_-]*\.[0-9a-zA-Z_-]+$
(assert (str.in.re X (re.++ (str.to.re "~/") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
