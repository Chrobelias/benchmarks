(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (re.range "1" "9") (re.+ (re.range "2" "7"))) (re.+ (re.range "5" "7")))))
(assert (str.in_re y (re.* (str.to_re "8"))))

(assert (> (+ (* 3 (str.len x)) (* 2 (str.len y)) (* (- 9) (str.to_int y))) 74))

(check-sat)