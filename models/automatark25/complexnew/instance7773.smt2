(declare-const X String)
; /stat2\.php\?w=\d+\u{26}i=[0-9a-f]{32}\u{26}a=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to_re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "&a=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; \u{2F}cs\u{2F}pop4\u{2F}\s+data\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data.warezclient.com\u{a}")))))
; Host\u{3A}\s+A-311Servert=form-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "A-311Servert=form-data; name=\u{22}pid\u{22}\u{a}")))))
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (str.in_re X (re.++ (str.to_re "target") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (str.to_re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to_re "\u{22}")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}cgm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cgm/i\u{a}")))))
(check-sat)
