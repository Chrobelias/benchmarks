(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "45" x) (str.++ y "33")))

(assert (str.in_re y (re.union (re.union (str.to_re "52") (re.union (str.to_re "838") (re.* (re.range "4" "7")))) (str.to_re "542"))))
(assert (str.in_re x (re.* (re.++ (re.* (re.* (re.range "4" "6"))) (re.range "0" "4")))))

(assert (>= (+ (* 5 (str.len x)) (* 6 (str.len y))) 13))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 4) (str.to_int x))) 29))
(assert (< (+ (str.len x) (str.len y)) 68))

(check-sat)