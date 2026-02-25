(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "35")) (str.to_re "25")) (re.* (str.to_re "4")))))
(assert (str.in_re y (re.++ (re.+ (re.range "2" "7")) (re.+ (re.* (str.to_re "66"))))))

(assert (= (+ (* (- 10) (str.len x)) (- (str.len y)) (* 5 (str.to_int x))) 82))
(assert (> (+ (* 4 (str.len x)) (- (str.len y))) 60))

(check-sat)