(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "3") (str.to_re "80")) (str.to_re "208")))))
(assert (str.in_re x (re.+ (re.++ (re.range "3" "5") (re.+ (str.to_re "3"))))))
(assert (str.in_re z (re.* (re.union (re.* (str.to_re "717")) (re.range "5" "8")))))

(assert (>= (+ (* (- 7) (str.len x)) (* 9 (str.len z)) (* (- 9) (str.to_int z))) 67))
(assert (< (+ (str.to_int y) (- (str.to_int z))) 34))

(check-sat)