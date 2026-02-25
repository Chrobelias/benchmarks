(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "53")))

(assert (str.in_re x (re.+ (re.union (str.to_re "38") (re.union (re.+ (re.range "3" "6")) (str.to_re "67"))))))
(assert (str.in_re y (re.* (re.++ (re.union (str.to_re "795") (re.+ (re.range "1" "5"))) (str.to_re "56")))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 3) (str.len y))) 24))
(assert (<= (+ (* 8 (str.len y)) (- (str.to_int y))) 89))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 10) (str.to_int y))) 83))

(check-sat)