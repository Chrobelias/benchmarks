(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "10") (str.to_re "74")) (re.* (str.to_re "308")))))

(assert (>= (* 6 (str.to_int x)) 7))
(assert (= (+ (* (- 4) (str.len x)) (* 5 (str.to_int x))) 90))
(assert (< (* (- 5) (str.len x)) 8))
(assert (< (* (- 3) (str.to_int x)) 48))

(check-sat)