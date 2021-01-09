(declare-const X String)
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a")))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (not (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a")))))
; ^([+]39)?\s?((313)|(32[03789])|(33[013456789])|(34[0256789])|(36[0368])|(37[037])|(38[0389])|(39[0123]))[\s-]?([\d]{7})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+39")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "313") (re.++ (str.to.re "32") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "33") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "34") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "36") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "6") (str.to.re "8"))) (re.++ (str.to.re "37") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "7"))) (re.++ (str.to.re "38") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "39") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3awww\x2Eadoptim\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:www.adoptim.com\x0a"))))
; ^\d*((\.\d+)?)*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
