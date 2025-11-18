(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.+ (str.to_re "163"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "96") (re.+ (str.to_re "21"))) (re.range "4" "9"))))

(assert (>= (+ (* (- 4) (str.len x)) (* 5 (str.len y))) 79))
(assert (= (+ (* 8 (str.to_int x)) (* 6 (str.to_int y))) 72))

(check-sat)