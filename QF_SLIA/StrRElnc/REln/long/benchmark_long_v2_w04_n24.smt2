(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (re.+ (re.range "2" "6")) (re.union (str.to_re "829") (str.to_re "41")))))
(assert (str.in_re y (re.union (re.* (str.to_re "17")) (re.+ (str.to_re "59")))))

(assert (>= (* (- 5) (str.len y)) 99))
(assert (<= (+ (- (str.to_int x)) (- (str.to_int y))) 43))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 9) (str.len y))) 57))
(assert (> (+ (* 6 (str.len x)) (* 5 (str.len y))) 70))

(check-sat)