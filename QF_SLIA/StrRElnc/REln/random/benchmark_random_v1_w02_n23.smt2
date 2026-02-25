(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "9")) (str.to_re "90")) (str.to_re "256"))))

(assert (< (* 8 (str.to_int x)) 13))
(assert (<= (* (- 6) (str.len x)) 44))

(check-sat)