(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "63" y)))

(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "6") (re.* (str.to_re "32"))) (str.to_re "48")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "2") (str.to_re "12")))))

(assert (= (+ (* (- 3) (str.len x)) (* 3 (str.to_int x)) (* 7 (str.to_int y))) 87))

(check-sat)