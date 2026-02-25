(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "615") (re.range "6" "9")) (str.to_re "71")))))
(assert (str.in_re x (re.++ (re.union (str.to_re "296") (re.* (re.range "3" "7"))) (str.to_re "8"))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 3) (str.len y)) (* 2 (str.to_int y))) 15))
(assert (= (* (- 8) (str.len y)) 84))

(check-sat)