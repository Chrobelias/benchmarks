(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "98" y)))

(assert (str.in_re y (re.union (str.to_re "791") (re.* (re.range "5" "8")))))
(assert (str.in_re x (re.++ (re.+ (re.* (str.to_re "317"))) (re.* (re.range "4" "9")))))

(assert (= (+ (* (- 3) (str.to_int x)) (* 10 (str.to_int y))) 56))
(assert (>= (+ (* (- 8) (str.len x)) (* 9 (str.to_int x)) (* 2 (str.to_int y))) 8))

(check-sat)