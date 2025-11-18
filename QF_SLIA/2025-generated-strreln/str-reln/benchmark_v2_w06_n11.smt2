(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "7")) (re.union (str.to_re "24") (str.to_re "168")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "73")) (re.++ (re.range "6" "9") (re.range "1" "9")))))

(assert (>= (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (- (str.to_int x)) (- (str.to_int y))) 26))
(assert (<= (+ (* (- 10) (str.to_int x)) (* 8 (str.to_int y))) 2))
(assert (>= (+ (* 3 (str.to_int x)) (* (- 7) (str.to_int y))) 22))
(assert (< (+ (- (str.len y)) (* (- 4) (str.to_int x))) 73))

(check-sat)