(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "33")))

(assert (str.in_re y (re.* (re.union (re.+ (re.range "0" "7")) (str.to_re "7")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "410")) (re.* (str.to_re "3")))))

(assert (>= (+ (* 10 (str.len x)) (- (str.len y)) (* 2 (str.to_int y))) 81))
(assert (>= (+ (* (- 8) (str.len x)) (* (- 10) (str.len y))) 26))

(check-sat)