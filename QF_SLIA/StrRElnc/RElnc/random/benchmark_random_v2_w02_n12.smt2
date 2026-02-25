(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "18" x)))

(assert (str.in_re y (re.+ (re.range "0" "8"))))
(assert (str.in_re x (re.+ (re.union (str.to_re "55") (str.to_re "6")))))

(assert (> (+ (* 8 (str.len y)) (- (str.to_int y))) 38))

(check-sat)