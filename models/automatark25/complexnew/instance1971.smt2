(declare-const X String)
; ^([+]39)?((38[{8,9}|0])|(34[{7-9}|0])|(36[6|8|0])|(33[{3-9}|0])|(32[{8,9}]))([\d]{7})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+39")) (re.union (re.++ (str.to.re "38") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "34") (re.union (str.to.re "{") (re.range "7" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "36") (re.union (str.to.re "6") (str.to.re "|") (str.to.re "8") (str.to.re "0"))) (re.++ (str.to.re "33") (re.union (str.to.re "{") (re.range "3" "9") (str.to.re "}") (str.to.re "|") (str.to.re "0"))) (re.++ (str.to.re "32") (re.union (str.to.re "{") (str.to.re "8") (str.to.re ",") (str.to.re "9") (str.to.re "}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Ehtml.*cm.*www\x2Epeer2mail\x2EcomConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in.re X (re.++ (str.to.re ".html") (re.* re.allchar) (str.to.re "cm") (re.* re.allchar) (str.to.re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\x0a"))))
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (str.in.re X (re.++ (str.to.re "vb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a"))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a"))))
(check-sat)
