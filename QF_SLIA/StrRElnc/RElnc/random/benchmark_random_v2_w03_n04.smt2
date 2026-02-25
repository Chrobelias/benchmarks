(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "53")))

(assert (str.in_re y (re.union (str.to_re "45") (re.+ (re.++ (re.+ (str.to_re "717")) (str.to_re "39"))))))
(assert (str.in_re x (re.+ (re.union (re.range "0" "9") (str.to_re "472")))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 4) (str.len y))) 23))
(assert (> (+ (* (- 6) (str.len x)) (- (str.len y)) (* (- 10) (str.to_int y))) 98))

(check-sat)