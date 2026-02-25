(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (str.to_re "7")) (str.to_re "66"))))

(assert (= (+ (* (- 5) (str.len x)) (* 6 (str.to_int x))) 37))
(assert (> (* 7 (str.len x)) 81))
(assert (> (* 6 (str.to_int x)) 31))

(check-sat)