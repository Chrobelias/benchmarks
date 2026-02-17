(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "5") (str.to_re "82")))))

(assert (< (* (- 6) (str.len x)) 28))
(assert (= (+ (* (- 2) (str.len x)) (* 9 (str.to_int x))) 34))

(check-sat)