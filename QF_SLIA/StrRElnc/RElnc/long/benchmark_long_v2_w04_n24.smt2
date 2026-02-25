(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "19")))

(assert (str.in_re x (re.+ (re.++ (re.+ (re.range "0" "5")) (re.range "3" "6")))))
(assert (str.in_re y (re.union (re.+ (re.union (str.to_re "531") (re.range "6" "9"))) (str.to_re "352"))))

(assert (< (+ (* (- 3) (str.to_int x)) (* (- 2) (str.to_int y))) 46))
(assert (= (+ (* (- 10) (str.len x)) (str.len y)) 48))
(assert (< (+ (* 9 (str.len x)) (* 3 (str.len y))) 18))
(assert (> (+ (* (- 3) (str.len x)) (* (- 6) (str.len y))) 38))

(check-sat)