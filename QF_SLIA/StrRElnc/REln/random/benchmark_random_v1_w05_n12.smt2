(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "6") (re.+ (str.to_re "8"))) (str.to_re "7")))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 7) (str.to_int x))) 60))
(assert (<= (* 7 (str.to_int x)) 100))
(assert (>= (* 7 (str.len x)) 22))
(assert (< (* 5 (str.to_int x)) 40))

(check-sat)