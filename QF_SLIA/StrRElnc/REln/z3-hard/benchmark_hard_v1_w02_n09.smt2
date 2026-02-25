(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "806") (re.++ (str.to_re "99") (re.* (str.to_re "76"))))))

(assert (<= (+ (* (- 8) (str.len x)) (* 9 (str.to_int x))) 12))

(check-sat)