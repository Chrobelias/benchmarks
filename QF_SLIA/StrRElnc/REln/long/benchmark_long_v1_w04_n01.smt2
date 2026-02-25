(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (re.range "5" "9") (str.to_re "43")) (re.+ (str.to_re "99")))))

(assert (= (+ (* 10 (str.len x)) (* (- 9) (str.to_int x))) 24))
(assert (<= (* 2 (str.len x)) 29))
(assert (> (* (- 5) (str.len x)) 33))

(check-sat)