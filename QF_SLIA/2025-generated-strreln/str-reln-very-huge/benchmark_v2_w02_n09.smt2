(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (str.to_re "91") (re.+ (re.++ (str.to_re "70") (re.range "0" "2"))))))
(assert (str.in_re y (re.union (re.* (re.+ (re.range "5" "7"))) (str.to_re "80"))))

(assert (<= (+ (* 5 (str.len y)) (* 2 (str.to_int x)) (* 7 (str.to_int y))) 99))

(check-sat)