(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "842")) (re.* (str.to_re "39"))) (str.to_re "561"))))

(assert (> (+ (* 4 (str.len x)) (* 2 (str.to_int x))) 89))
(assert (<= (+ (* (- 3) (str.len x)) (* (- 6) (str.to_int x))) 21))
(assert (= (* (- 6) (str.to_int x)) 5))

(check-sat)