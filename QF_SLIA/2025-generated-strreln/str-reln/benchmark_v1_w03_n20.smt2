(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "0")) (re.++ (re.* (str.to_re "74")) (str.to_re "248")))))

(assert (<= (* 9 (str.to_int x)) 65))
(assert (< (+ (* (- 6) (str.len x)) (* (- 7) (str.to_int x))) 66))

(check-sat)