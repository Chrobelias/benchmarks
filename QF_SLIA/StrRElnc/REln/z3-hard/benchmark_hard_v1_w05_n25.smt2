(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "30") (str.to_re "209"))))))

(assert (= (+ (* 7 (str.len x)) (* 5 (str.to_int x))) 59))
(assert (< (+ (* 8 (str.len x)) (* (- 9) (str.to_int x))) 58))
(assert (>= (* 10 (str.len x)) 24))

(check-sat)