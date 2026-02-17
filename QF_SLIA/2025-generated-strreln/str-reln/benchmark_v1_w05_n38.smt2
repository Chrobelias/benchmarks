(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "32")) (re.+ (str.to_re "639")))))

(assert (<= (* 9 (str.to_int x)) 18))
(assert (> (+ (* 2 (str.len x)) (* (- 6) (str.to_int x))) 26))
(assert (<= (* (- 4) (str.to_int x)) 31))
(assert (< (* 7 (str.to_int x)) 18))

(check-sat)