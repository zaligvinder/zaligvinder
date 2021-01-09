(declare-const X String)
; (15(8[48]|9[26]))|((1[6-9]|[2-9]\d)(0[48]|[13579][26]|[2468][048]))|(([2468][048]|16|3579[26])00)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "15") (re.union (re.++ (str.to.re "8") (re.union (str.to.re "4") (str.to.re "8"))) (re.++ (str.to.re "9") (re.union (str.to.re "2") (str.to.re "6"))))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))) (re.++ (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (re.union (str.to.re "2") (str.to.re "6"))) (re.++ (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.union (str.to.re "0") (str.to.re "4") (str.to.re "8"))))) (re.++ (str.to.re "\x0a") (re.union (re.++ (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.union (str.to.re "0") (str.to.re "4") (str.to.re "8"))) (str.to.re "16") (re.++ (str.to.re "3579") (re.union (str.to.re "2") (str.to.re "6")))) (str.to.re "00"))))))
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "~")) (str.to.re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (str.to.re "/")))) (re.+ re.allchar) (str.to.re "\x0a")))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a")))
(check-sat)
