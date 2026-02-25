(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "10") (re.union (re.+ (str.to_re "7")) (str.to_re "24")))))
(assert (str.in_re x (re.++ (str.to_re "5") (re.++ (str.to_re "327") (re.++ (re.+ (str.to_re "3")) (str.to_re "15"))))))

(assert (= (+ (* (- 2) (str.len y)) (- (str.to_int x)) (* 6 (str.to_int y))) 37))
(assert (>= (+ (* 3 (str.to_int x)) (* 9 (str.to_int y))) 24))

(check-sat)