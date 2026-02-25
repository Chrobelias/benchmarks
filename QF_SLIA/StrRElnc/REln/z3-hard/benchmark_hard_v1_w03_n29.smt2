(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "7")) (re.* (re.* (str.to_re "799"))))))

(assert (< (+ (* (- 3) (str.len x)) (str.to_int x)) 74))
(assert (< (* 4 (str.to_int x)) 19))

(check-sat)