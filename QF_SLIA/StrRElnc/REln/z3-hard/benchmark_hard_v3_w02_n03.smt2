(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.range "3" "7") (re.union (str.to_re "18") (re.+ (str.to_re "750"))))))
(assert (str.in_re x (re.* (re.++ (re.union (re.* (str.to_re "763")) (str.to_re "0")) (re.range "5" "9")))))
(assert (str.in_re z (re.++ (re.+ (re.range "0" "5")) (re.++ (re.* (str.to_re "5")) (str.to_re "66")))))

(assert (< (+ (- (str.len z)) (* 9 (str.to_int z))) 9))

(check-sat)