(declare-const X String)
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21\x0a")))))
; searchnugget.*Referer\x3A\s+User-Agent\x3AHost\x3A
(assert (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.* re.allchar) (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:\x0a"))))
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in.re X (re.++ (str.to.re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; /filename=[^\n]*\x2ejnlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a"))))
(check-sat)
