(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "69" x) (str.++ y "94")))

(assert (str.in_re y (re.union (str.to_re "63") (re.+ (re.+ (re.range "4" "8"))))))
(assert (str.in_re x (re.union (re.++ (re.+ (re.* (re.range "6" "9"))) (str.to_re "873")) (str.to_re "4"))))

(assert (>= (+ (* 9 (str.len x)) (* (- 3) (str.len y))) 15))
(assert (< (+ (* (- 10) (str.len x)) (* (- 4) (str.to_int y))) 88))
(assert (>= (+ (* (- 6) (str.len x)) (* 2 (str.len y))) 0))

(check-sat)