(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to.re "online-casino-searcher.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:\x0a")))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
; ^(BE)[0-1]{1}[0-9]{9}$|^((BE)|(BE ))[0-1]{1}(\d{3})([.]{1})(\d{3})([.]{1})(\d{3})
(assert (str.in.re X (re.union (re.++ (str.to.re "BE") ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to.re "BE") (str.to.re "BE ")) ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; [0-9A-Fa-f]{2}(\.?)[0-9A-Fa-f]{2}(\.?)[0-9A-Fa-f]{2}(\.?)[0-9A-Fa-f]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (re.opt (str.to.re ".")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (re.opt (str.to.re ".")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (re.opt (str.to.re ".")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re "\x0a")))))
(check-sat)
