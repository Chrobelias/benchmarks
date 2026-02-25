(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "6") (re.* (str.to_re "6"))) (str.to_re "69"))))

(assert (< (* 10 (str.to_int x)) 73))
(assert (= (+ (* (- 10) (str.len x)) (* 8 (str.to_int x))) 15))
(assert (= (* 2 (str.len x)) 4))

(check-sat)