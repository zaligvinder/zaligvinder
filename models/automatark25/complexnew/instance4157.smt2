(declare-const X String)
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a"))))
; URL\s+url=Host\x3ahttpUser-Agent\x3ASubject\x3A
(assert (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=Host:httpUser-Agent:Subject:\x0a"))))
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (not (str.in.re X (str.to.re "Subject:EnTrYExplorer*PORT2*Host:\x0a"))))
; ^(\+|-)?(\d\.\d{1,6}|[1-9]\d\.\d{1,6}|1[1-7]\d\.\d{1,6}|180\.0{1,6})$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "1") (re.range "1" "7") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "180.") ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a"))))
(check-sat)
