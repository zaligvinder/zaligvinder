(declare-const X String)
; User-Agent\u{3A}.*Host\u{3a}\s+www\u{2E}wordiq\u{2E}com\s+Subject\u{3A}AlexaOnline\u{25}21\u{25}21\u{25}21
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))))
; searchnugget.*Referer\u{3A}\s+User-Agent\u{3A}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.* re.allchar) (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:\u{a}"))))
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in_re X (re.++ (str.to_re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/P\u{a}"))))
; /filename=[\u{22}\u{27}]?[^\n]*\u{2e}gni[\u{22}\u{27}\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gni") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; /filename=[^\n]*\u{2e}jnlp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jnlp/i\u{a}"))))
(check-sat)
