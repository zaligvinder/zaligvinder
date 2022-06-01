(declare-const X String)
; X-Mailer\u{3a}+Host\u{3A}\u{2E}aspxHost\u{3A}v=User-Agent\u{3a}xbqyosoe\u{2f}cpvmRequestwww\u{2E}altnet\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (str.in_re X (re.++ (str.to_re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ^\s*[a-zA-Z0-9,&\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re "&") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}pub/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pub/i\u{a}")))))
; www\.trackhits\.ccUser-Agent\u{3A}iz=LOGSupremeResult
(assert (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}")))
(check-sat)
