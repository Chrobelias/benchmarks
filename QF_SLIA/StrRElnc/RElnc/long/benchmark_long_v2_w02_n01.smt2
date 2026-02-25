(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ "70" y) (str.++ x "75")))

(assert (str.in_re x (re.union (re.+ (re.+ (str.to_re "306"))) (re.+ (re.range "0" "8")))))
(assert (str.in_re y (re.union (str.to_re "913") (re.+ (re.union (re.range "3" "9") (str.to_re "294"))))))

(assert (= (+ (* 10 (str.len x)) (* (- 5) (str.to_int x)) (* 7 (str.to_int y))) 0))

(check-sat)