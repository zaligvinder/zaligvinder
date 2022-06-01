(declare-const X String)
; /window\u{2e}location\s*=\s*unescape\s*\u{28}\s*["']\u{25}[^"']*https?\u{3a}/
(assert (not (str.in_re X (re.++ (str.to_re "/window.location") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "unescape") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "%") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re ":/\u{a}")))))
; /^User\u{2d}Agent\u{3a}\s*[^\n]*Safari[^\n]*\r\n/smi
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "Safari") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}/smi\u{a}"))))
; /^\u{2f}j\u{2f}[a-f0-9]{32}\u{2f}0001$/U
(assert (str.in_re X (re.++ (str.to_re "//j/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/0001/U\u{a}"))))
(check-sat)
