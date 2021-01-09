(declare-const X String)
; /Dr[.]?|Phd[.]?|MBA/i
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/Dr") (re.opt (str.to.re "."))) (re.++ (str.to.re "Phd") (re.opt (str.to.re "."))) (str.to.re "MBA/i\x0a")))))
; ^([+]39)?((38[{8,9}|0])|(34[{7-9}|0])|(36[6|8|0])|(33[{3-9}|0])|(32[{8,9}]))([\d]{7})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+39")) (re.union (re.++ (str.to.re "38") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "34") (re.union (str.to.re "{") (re.range "7" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "36") (re.union (str.to.re "6") (str.to.re "|") (str.to.re "8") (str.to.re "0"))) (re.++ (str.to.re "33") (re.union (str.to.re "{") (re.range "3" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "32") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "/gm\x0a"))))
; /filename=[^\n]*\x2eemf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a")))))
(check-sat)
