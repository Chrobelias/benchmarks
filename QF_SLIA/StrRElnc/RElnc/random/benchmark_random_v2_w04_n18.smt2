(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "80" y)))

(assert (str.in_re x (re.union (re.union (re.range "1" "8") (re.* (re.range "0" "8"))) (re.* (str.to_re "426")))))
(assert (str.in_re y (re.++ (re.union (str.to_re "863") (re.+ (re.range "2" "6"))) (str.to_re "3"))))

(assert (> (* 5 (str.to_int y)) 82))
(assert (= (+ (* 9 (str.len x)) (* (- 8) (str.len y))) 49))
(assert (< (+ (* 5 (str.len y)) (* (- 10) (str.to_int x))) 39))

(check-sat)