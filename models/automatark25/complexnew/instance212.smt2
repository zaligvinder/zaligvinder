(declare-const X String)
; /click.php\?c=\w{160}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/click") re.allchar (str.to.re "php?c=") ((_ re.loop 160 160) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a")))))
; cojud\x2Edmcast\x2Ecom\sApofis\w+Referer\x3Awww\x2Emirarsearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "cojud.dmcast.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Apofis") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Referer:www.mirarsearch.com\x0a"))))
; /filename=[^\n]*\x2eafm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".afm/i\x0a"))))
; ^((00|\+)49)?(0?1[5-7][0-9]{1,})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (str.to.re "1") (re.range "5" "7") (re.+ (re.range "0" "9"))))))
; ^(([a-zA-Z][a-zA-Z_$0-9]*(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.)?([a-zA-Z][a-zA-Z_$0-9]*)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))) (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9")))))))
(check-sat)
