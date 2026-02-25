(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "746")) (re.* (str.to_re "9"))))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 5) (str.to_int x))) 75))
(assert (<= (* 5 (str.len x)) 19))

(check-sat)