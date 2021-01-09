(declare-const X String)
; installs\x2Eseekmo\x2Ecom\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "installs.seekmo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a")))))
; Host\x3A\s+www\x2Ewebfringe\x2Ecom\d+Version\d\x2ElSpywww\x2Elookquick\x2EcomSubject\x3A\x3a\x29\r\n
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.range "0" "9") (str.to.re ".lSpywww.lookquick.comSubject::)\x0d\x0a\x13\x0a"))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (not (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a"))))
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re "'") (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "+") (str.to.re ".") (str.to.re "m") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
