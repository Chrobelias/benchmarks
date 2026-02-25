(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "41"))))

(assert (< (* (- 6) (str.len x)) 20))
(assert (= (+ (* 2 (str.len x)) (* (- 6) (str.to_int x))) 8))

(check-sat)