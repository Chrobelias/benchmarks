(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "28")))

(assert (str.in_re x (re.* (re.union (re.range "2" "4") (re.+ (re.+ (re.range "7" "9")))))))
(assert (str.in_re y (re.++ (re.* (re.union (re.+ (str.to_re "485")) (str.to_re "91"))) (str.to_re "3"))))

(assert (<= (+ (* (- 8) (str.len y)) (* 10 (str.to_int y))) 26))

(check-sat)