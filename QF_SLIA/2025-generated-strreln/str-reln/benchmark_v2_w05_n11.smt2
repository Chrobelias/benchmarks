(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.++ (re.* (re.range "2" "4")) (re.range "2" "5")))))
(assert (str.in_re y (re.+ (re.++ (re.union (str.to_re "682") (re.+ (re.range "5" "7"))) (re.range "5" "7")))))

(assert (<= (+ (* 6 (str.len x)) (* (- 9) (str.len y))) 5))
(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 9) (str.to_int y))) 15))
(assert (> (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 7))
(assert (>= (+ (* (- 6) (str.len x)) (* 5 (str.len y))) 25))

(check-sat)