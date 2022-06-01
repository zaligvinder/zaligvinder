(declare-const X String)
; Host\u{3A}\s+\u{2F}toolbar\u{2F}ico\u{2F}\dencoderserverreport\<\u{2F}title\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}")))))
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (not (str.in_re X (re.++ (re.+ re.allchar) (str.to_re "@") (re.comp (str.to_re ".")) (re.* re.allchar) (str.to_re ".\u{a}") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
; User-Agent\u{3A}User-Agent\u{3A}www\.take5bingo\.comUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:www.take5bingo.com\u{1b}User-Agent:\u{a}")))
(check-sat)
