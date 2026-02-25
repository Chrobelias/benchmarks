(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.++ (str.to_re "206") (re.union (str.to_re "693") (re.+ (str.to_re "624")))) (str.to_re "91"))))
(assert (str.in_re x (re.+ (re.+ (re.++ (re.* (str.to_re "3")) (str.to_re "47"))))))

(assert (<= (+ (- (str.to_int x)) (* 6 (str.to_int y))) 78))
(assert (> (+ (* (- 5) (str.len x)) (* 8 (str.len y))) 42))

(check-sat)