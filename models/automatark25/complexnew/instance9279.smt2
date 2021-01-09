(declare-const X String)
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a")))))
; /^guid=[a-f0-9]{32}\x26state=(LOST|WORK|WAIT|RUN)/P
(assert (str.in.re X (re.++ (str.to.re "/guid=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&state=") (re.union (str.to.re "LOST") (str.to.re "WORK") (str.to.re "WAIT") (str.to.re "RUN")) (str.to.re "/P\x0a"))))
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a"))))
(check-sat)
