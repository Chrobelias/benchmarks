(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "90") (re.++ (re.* (str.to_re "85")) (str.to_re "104"))))))

(assert (< (* (- 7) (str.to_int x)) 56))
(assert (<= (+ (* (- 8) (str.len x)) (* 6 (str.to_int x))) 65))

(check-sat)