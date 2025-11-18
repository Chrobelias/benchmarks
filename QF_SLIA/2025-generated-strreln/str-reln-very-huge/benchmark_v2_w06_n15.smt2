(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.++ (re.range "0" "4") (re.union (str.to_re "342") (re.* (str.to_re "12")))) (re.range "0" "7"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "5") (str.to_re "32")) (re.+ (str.to_re "384")))))

(assert (<= (+ (* (- 10) (str.len x)) (* 4 (str.to_int x))) 83))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 6) (str.to_int y))) 90))
(assert (= (+ (* (- 6) (str.len x)) (str.len y)) 58))
(assert (>= (+ (* 9 (str.to_int x)) (* 9 (str.to_int y))) 17))
(assert (= (+ (str.to_int x) (* 3 (str.to_int y))) 83))

(check-sat)