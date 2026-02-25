(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "4") (re.+ (str.to_re "10")))))
(assert (str.in_re x (re.union (re.union (str.to_re "81") (re.+ (re.range "2" "4"))) (str.to_re "63"))))

(assert (<= (+ (* (- 2) (str.len x)) (- (str.len y))) 10))
(assert (<= (+ (* (- 10) (str.len y)) (* 5 (str.to_int y))) 96))
(assert (< (+ (* (- 6) (str.to_int x)) (* 9 (str.to_int y))) 67))

(check-sat)