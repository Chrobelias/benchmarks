(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "98") (re.union (str.to_re "177") (re.* (str.to_re "17")))))))

(assert (= (* (- 9) (str.to_int x)) 100))
(assert (= (* (- 6) (str.len x)) 95))
(assert (<= (+ (* 4 (str.len x)) (* 8 (str.to_int x))) 28))
(assert (< (* (- 10) (str.len x)) 49))

(check-sat)