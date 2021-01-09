(declare-const X String)
; ^([+]39)?((38[{8,9}|0])|(34[{7-9}|0])|(36[6|8|0])|(33[{3-9}|0])|(32[{8,9}]))([\d]{7})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+39")) (re.union (re.++ (str.to.re "38") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "34") (re.union (str.to.re "{") (re.range "7" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "36") (re.union (str.to.re "6") (str.to.re "|") (str.to.re "8") (str.to.re "0"))) (re.++ (str.to.re "33") (re.union (str.to.re "{") (re.range "3" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "32") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; www\x2eproventactics\x2ecom\s+
(assert (not (str.in.re X (re.++ (str.to.re "www.proventactics.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; HWAE.*wowokay\s%3fsearchresltX-Mailer\x3AisSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.* re.allchar) (str.to.re "wowokay") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13isSubject:\x0a")))))
; ^([\w\-\.]+)\s.*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
