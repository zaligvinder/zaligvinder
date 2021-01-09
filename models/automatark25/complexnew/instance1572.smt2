(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a"))))
; ^(([0]?[1-9]|[1][0-2])[\/|\-|\.]([0-2]\d|[3][0-1]|[1-9])[\/|\-|\.]([2][0])?\d{2}\s+((([0][0-9]|[1][0-2]|[0-9])[\:|\-|\.]([0-5]\d)\s*([aApP][mM])?)|(([0-1][0-9]|[2][0-3]|[0-9])[\:|\-|\.]([0-5]\d))))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-") (str.to.re ".")) (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1")) (re.range "1" "9")) (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-") (str.to.re ".")) (re.opt (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re "|") (str.to.re "-") (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3")) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re "|") (str.to.re "-") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9"))))))
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a"))))
; act=\s+User-Agent\x3AEvilFTPHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "act=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:EvilFTPHost:\x0a")))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a")))
(check-sat)
