(declare-const X String)
; installs\u{2E}seekmo\u{2E}com\s+spyblini\u{2E}iniUpdateUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "installs.seekmo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}")))))
; Host\u{3A}\s+www\u{2E}webfringe\u{2E}com\d+Version\d\u{2E}lSpywww\u{2E}lookquick\u{2E}comSubject\u{3A}\u{3a}\u{29}\r\n
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.range "0" "9") (str.to_re ".lSpywww.lookquick.comSubject::)\u{d}\u{a}\u{13}\u{a}"))))
; ProjectMyWebSearchSearchAssistantfast-look\u{2E}comOneReporter
(assert (not (str.in_re X (str.to_re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\u{a}"))))
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re ".") (str.to_re "'") (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "0" "9") (str.to_re "+") (str.to_re ".") (str.to_re "m") (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
(check-sat)
