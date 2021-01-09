(declare-const X String)
; /\/[a-z]{4}\.html\?h\=\d{6,7}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?h=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; Wareztv\x2Eseekmo\x2Ecom\sKeyloggingTRUSTYFILES\x2ECOM
(assert (not (str.in.re X (re.++ (str.to.re "Wareztv.seekmo.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13TRUSTYFILES.COM\x0a")))))
; ^\d{5}(-\d{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; &\#x0*(0|1|2|3|4|5|6|7|8|B|C|E|F|10|11|12|13|14|15|16|17|18|19|1A|1B|1C|1D|1E|1F);
(assert (not (str.in.re X (re.++ (str.to.re "&#x") (re.* (str.to.re "0")) (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "F") (str.to.re "10") (str.to.re "11") (str.to.re "12") (str.to.re "13") (str.to.re "14") (str.to.re "15") (str.to.re "16") (str.to.re "17") (str.to.re "18") (str.to.re "19") (str.to.re "1A") (str.to.re "1B") (str.to.re "1C") (str.to.re "1D") (str.to.re "1E") (str.to.re "1F")) (str.to.re ";\x0a")))))
(check-sat)
