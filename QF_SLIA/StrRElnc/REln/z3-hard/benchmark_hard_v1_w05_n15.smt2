(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "90") (re.++ (str.to_re "0") (re.* (str.to_re "77"))))))

(assert (> (* 6 (str.len x)) 27))
(assert (< (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 17))
(assert (>= (* 9 (str.len x)) 95))
(assert (= (* 5 (str.to_int x)) 55))

(check-sat)