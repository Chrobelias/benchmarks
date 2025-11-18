(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.union (str.to_re "500") (re.+ (re.range "7" "9"))) (re.* (str.to_re "1")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "426")) (str.to_re "207"))))

(assert (= (+ (- (str.to_int x)) (* 4 (str.to_int y))) 26))
(assert (> (+ (* (- 2) (str.len x)) (* (- 6) (str.len y)) (* 9 (str.to_int x)) (* 4 (str.to_int y))) 45))

(check-sat)