(declare-const X String)
; ^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][ ][aApP][mM]){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9")))) ((_ re.loop 1 1) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")))) (str.to.re "\x0a")))))
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (str.to.re ".l\x0a"))))
; /filename=[^\n]*\x2ertf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtf/i\x0a")))))
; ^([+]39)?((38[{8,9}|0])|(34[{7-9}|0])|(36[6|8|0])|(33[{3-9}|0])|(32[{8,9}]))([\d]{7})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+39")) (re.union (re.++ (str.to.re "38") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "34") (re.union (str.to.re "{") (re.range "7" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "36") (re.union (str.to.re "6") (str.to.re "|") (str.to.re "8") (str.to.re "0"))) (re.++ (str.to.re "33") (re.union (str.to.re "{") (re.range "3" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "32") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
