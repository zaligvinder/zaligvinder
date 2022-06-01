(declare-const X String)
; /\u{0}{7}\u{55}\u{0}{3}\u{21}.{4}[^\u{0}]*?[\u{22}\u{27}\u{29}\u{3b}]/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 7 7) (str.to_re "\u{0}")) (str.to_re "U") ((_ re.loop 3 3) (str.to_re "\u{0}")) (str.to_re "!") ((_ re.loop 4 4) re.allchar) (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ")") (str.to_re ";")) (str.to_re "/\u{a}"))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\u{3A}User-Agent\u{3a}wowokayHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}"))))
; /^Content-Type\u{3a}[\u{20}\u{9}]+application\/octet-stream/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/octet-stream/smiH\u{a}")))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; \d{6}
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
