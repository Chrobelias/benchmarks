(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "90") (re.* (str.to_re "33"))))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 2) (str.to_int x))) 13))
(assert (= (* 8 (str.to_int x)) 67))
(assert (= (* 2 (str.len x)) 15))
(assert (> (* 9 (str.len x)) 90))

(check-sat)