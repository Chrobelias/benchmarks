(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.range "3" "7") (re.+ (str.to_re "265")))))
(assert (str.in_re y (re.* (re.+ (re.* (str.to_re "256"))))))

(assert (< (+ (* 8 (str.to_int x)) (str.to_int y)) 72))
(assert (> (+ (* 2 (str.len x)) (* 7 (str.len y))) 75))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 6) (str.to_int y))) 25))
(assert (< (+ (* (- 3) (str.len x)) (- (str.to_int x)) (* (- 3) (str.to_int y))) 73))
(assert (< (+ (* 9 (str.len x)) (* (- 2) (str.len y))) 85))

(check-sat)