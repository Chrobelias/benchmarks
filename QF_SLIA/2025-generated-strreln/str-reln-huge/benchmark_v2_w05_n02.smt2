(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.+ (re.++ (str.to_re "87") (str.to_re "8")))))
(assert (str.in_re y (re.++ (str.to_re "2") (re.* (re.range "0" "2")))))

(assert (< (+ (- (str.len x)) (- (str.len y))) 70))
(assert (>= (+ (str.len x) (* (- 4) (str.len y))) 68))
(assert (< (+ (* (- 7) (str.len y)) (- (str.to_int x))) 76))
(assert (<= (+ (* (- 7) (str.len x)) (* 6 (str.len y))) 10))

(check-sat)