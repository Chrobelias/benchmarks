(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "31") (str.to_re "134")))))

(assert (= (+ (* (- 5) (str.len x)) (* 4 (str.to_int x))) 43))
(assert (>= (* 4 (str.len x)) 94))
(assert (> (* 6 (str.to_int x)) 91))
(assert (< (* (- 10) (str.to_int x)) 34))

(check-sat)